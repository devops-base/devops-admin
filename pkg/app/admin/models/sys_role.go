package models

import "metadata-server/pkg/common/models"

type SysRole struct {
	Id        int        `json:"id" gorm:"primaryKey;autoIncrement"` // 角色编码
	RoleName  string     `json:"roleName" gorm:"size:128;"`          // 角色名称
	Status    string     `json:"status" gorm:"size:4;"`              //
	RoleKey   string     `json:"roleKey" gorm:"size:128;"`           //角色代码
	RoleSort  int        `json:"roleSort" gorm:""`                   //角色排序
	Flag      string     `json:"flag" gorm:"size:128;"`              //
	Remark    string     `json:"remark" gorm:"size:255;"`            //备注
	Admin     bool       `json:"admin" gorm:"size:4;"`
	DataScope string     `json:"dataScope" gorm:"size:128;"`
	Params    string     `json:"params" gorm:"-"`
	MenuIds   []int      `json:"menuIds" gorm:"-"`
	DeptIds   []int      `json:"deptIds" gorm:"-"`
	SysDept   []SysDept  `json:"sysDept" gorm:"many2many:sys_role_dept;foreignKey:Id;joinForeignKey:role_id;references:Id;joinReferences:dept_id;"`
	SysMenu   *[]SysMenu `json:"sysMenu" gorm:"many2many:sys_role_menu;foreignKey:Id;joinForeignKey:role_id;references:Id;joinReferences:menu_id;"`
	models.ControlBy
	models.ModelTime
}

func (SysRole) TableName() string {
	return "sys_role"
}

func (e *SysRole) Generate() models.ActiveRecord {
	o := *e
	return &o
}

func (e *SysRole) GetId() interface{} {
	return e.Id
}