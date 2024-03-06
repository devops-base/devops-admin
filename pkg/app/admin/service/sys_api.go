package service

import (
	"errors"
	"fmt"

	"github.com/devops-base/devops-core/sdk/runtime"
	"github.com/devops-base/devops-core/sdk/service"
	"gorm.io/gorm"

	"github.com/devops-base/devops-admin/pkg/app/admin/models"
	"github.com/devops-base/devops-admin/pkg/app/admin/service/dto"
	"github.com/devops-base/devops-admin/pkg/common/actions"
	cDto "github.com/devops-base/devops-admin/pkg/common/dto"
)

type SysApi struct {
	service.Service
}

// SetLabel 修改角色中 设置菜单基础数据
func (e *SysApi) SetLabel(c *dto.SysApiGetPageReq, p *actions.DataPermission, list *[]models.SysApi, count *int64) (m []dto.MenuLabel, err error) {
	err = e.GetList(c, p, list, count)
	res := *list
	m = make([]dto.MenuLabel, 0)
	for i := 0; i < len(res); i++ {
		e := dto.MenuLabel{}
		e.Id = res[i].Id
		e.Label = res[i].Title
		e.Value = res[i].Id
		apiInfo := apiLabelCall(&res, e)
		m = append(m, apiInfo)
	}
	return
}

// GetList 获取API数据
func (e *SysApi) GetList(c *dto.SysApiGetPageReq, p *actions.DataPermission, list *[]models.SysApi, count *int64) error {
	var err error
	var data models.SysApi

	err = e.Orm.Debug().Model(&data).
		Scopes(
			cDto.MakeCondition(c.GetNeedSearch()),
			actions.Permission(data.TableName(), p),
		).
		Find(list).Count(count).Error
	if err != nil {
		e.Log.Errorf("Service GetSysApiPage error:%s", err)
		return err
	}
	return nil
}

// GetPage 获取SysApi列表
func (e *SysApi) GetPage(c *dto.SysApiGetPageReq, p *actions.DataPermission, list *[]models.SysApi, count *int64) error {
	var err error
	var data models.SysApi

	err = e.Orm.Debug().Model(&data).
		Scopes(
			cDto.MakeCondition(c.GetNeedSearch()),
			cDto.Paginate(c.GetPageSize(), c.GetPageIndex()),
			actions.Permission(data.TableName(), p),
		).
		Find(list).Limit(-1).Offset(-1).
		Count(count).Error
	if err != nil {
		e.Log.Errorf("Service GetSysApiPage error:%s", err)
		return err
	}
	return nil
}

// Get 获取SysApi对象with id
func (e *SysApi) Get(d *dto.SysApiGetReq, p *actions.DataPermission, model *models.SysApi) *SysApi {
	var data models.SysApi
	err := e.Orm.Model(&data).
		Scopes(
			actions.Permission(data.TableName(), p),
		).
		First(model, d.GetId()).Error
	if err != nil && errors.Is(err, gorm.ErrRecordNotFound) {
		err = errors.New("查看对象不存在或无权查看")
		e.Log.Errorf("Service GetSysApi error:%s", err)
		_ = e.AddError(err)
		return e
	}
	if err != nil {
		e.Log.Errorf("db error:%s", err)
		_ = e.AddError(err)
		return e
	}
	return e
}

// Update 修改SysApi对象
func (e *SysApi) Update(c *dto.SysApiUpdateReq, p *actions.DataPermission) error {
	var model = models.SysApi{}
	db := e.Orm.Debug().First(&model, c.GetId())
	if db.RowsAffected == 0 {
		return errors.New("无权更新该数据")
	}
	c.Generate(&model)
	db = e.Orm.Save(&model)
	if err := db.Error; err != nil {
		e.Log.Errorf("Service UpdateSysApi error:%s", err)
		return err
	}

	return nil
}

// Remove 删除SysApi
func (e *SysApi) Remove(d *dto.SysApiDeleteReq, p *actions.DataPermission) error {
	var data models.SysApi

	db := e.Orm.Model(&data).
		Scopes(
			actions.Permission(data.TableName(), p),
		).Delete(&data, d.GetId())
	if err := db.Error; err != nil {
		e.Log.Errorf("Service RemoveSysApi error:%s", err)
		return err
	}
	if db.RowsAffected == 0 {
		return errors.New("无权删除该数据")
	}
	return nil
}

// CheckStorageSysApi 创建SysApi对象
func (e *SysApi) CheckStorageSysApi(c *[]runtime.Router) error {
	for _, v := range *c {
		err := e.Orm.Debug().Where(models.SysApi{Path: v.RelativePath, Action: v.HttpMethod}).
			Attrs(models.SysApi{Handle: v.Handler}).
			FirstOrCreate(&models.SysApi{}).Error
		if err != nil {
			err := fmt.Errorf("Service CheckStorageSysApi error: %s \r\n ", err.Error())
			return err
		}
	}
	return nil
}

// apiLabelCall 递归构造组织数据
func apiLabelCall(eList *[]models.SysApi, dept dto.MenuLabel) dto.MenuLabel {
	list := *eList
	min := make([]dto.MenuLabel, 0)
	for j := 0; j < len(list); j++ {
		mi := dto.MenuLabel{}
		mi.Id = list[j].Id
		mi.Value = list[j].Id
		mi.Label = list[j].Title
		mi.Children = []dto.MenuLabel{}
	}
	if len(min) > 0 {
		dept.Children = min
	} else {
		dept.Children = nil
	}
	return dept
}
