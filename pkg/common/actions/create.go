package actions

import (
	"net/http"

	"git.tz.com/devops/gin-core/sdk/api"
	"git.tz.com/devops/gin-core/sdk/pkg"
	"git.tz.com/devops/gin-core/sdk/pkg/jwtauth/user"
	"git.tz.com/devops/gin-core/sdk/pkg/response"
	"github.com/gin-gonic/gin"

	"metadata-server/pkg/common/dto"
	"metadata-server/pkg/common/models"
)

// CreateAction 通用新增动作
func CreateAction(control dto.Control) gin.HandlerFunc {
	return func(c *gin.Context) {
		log := api.GetRequestLogger(c)
		db, err := pkg.GetOrm(c)
		if err != nil {
			log.Error(err)
			return
		}

		//新增操作
		req := control.Generate()
		err = req.Bind(c)
		if err != nil {
			response.Error(c, http.StatusUnprocessableEntity, err, err.Error())
			return
		}
		var object models.ActiveRecord
		object, err = req.GenerateM()
		if err != nil {
			response.Error(c, 500, err, "模型生成失败")
			return
		}
		object.SetCreateBy(user.GetUserId(c))
		err = db.WithContext(c).Create(object).Error
		if err != nil {
			log.Errorf("Create error: %s", err)
			response.Error(c, 500, err, "创建失败")
			return
		}
		response.OK(c, object.GetId(), "创建成功")
		c.Next()
	}
}
