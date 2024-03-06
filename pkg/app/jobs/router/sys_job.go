package router

import (
	"github.com/devops-base/devops-admin/pkg/app/jobs/apis"
	models2 "github.com/devops-base/devops-admin/pkg/app/jobs/models"
	dto2 "github.com/devops-base/devops-admin/pkg/app/jobs/service/dto"
	"github.com/devops-base/devops-admin/pkg/common/actions"
	"github.com/devops-base/devops-admin/pkg/common/middleware"
	jwt "github.com/devops-base/devops-core/sdk/pkg/jwtauth"
	"github.com/gin-gonic/gin"
)

func init() {
	routerCheckRole = append(routerCheckRole, registerSysJobRouter)
}

// 需认证的路由代码
func registerSysJobRouter(v1 *gin.RouterGroup, authMiddleware *jwt.GinJWTMiddleware) {

	r := v1.Group("/sysjob").Use(authMiddleware.MiddlewareFunc()).Use(middleware.AuthCheckRole())
	{
		sysJob := &models2.SysJob{}
		r.GET("", actions.PermissionAction(), actions.IndexAction(sysJob, new(dto2.SysJobSearch), func() interface{} {
			list := make([]models2.SysJob, 0)
			return &list
		}))
		r.GET("/:id", actions.PermissionAction(), actions.ViewAction(new(dto2.SysJobById), func() interface{} {
			return &dto2.SysJobItem{}
		}))
		r.POST("", actions.CreateAction(new(dto2.SysJobControl)))
		r.PUT("", actions.PermissionAction(), actions.UpdateAction(new(dto2.SysJobControl)))
		r.DELETE("", actions.PermissionAction(), actions.DeleteAction(new(dto2.SysJobById)))
	}
	sysJob := apis.SysJob{}

	v1.GET("/job/remove/:id", sysJob.RemoveJobForService)
	v1.GET("/job/start/:id", sysJob.StartJobForService)
}
