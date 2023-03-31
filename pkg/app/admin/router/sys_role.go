package router

import (
	jwt "git.tz.com/devops/gin-core/sdk/pkg/jwtauth"
	"github.com/gin-gonic/gin"

	"metadata-server/pkg/app/admin/apis"
	"metadata-server/pkg/common/middleware"
)

func init() {
	routerCheckRole = append(routerCheckRole, registerSysRoleRouter)
}

// 需认证的路由代码
func registerSysRoleRouter(v1 *gin.RouterGroup, authMiddleware *jwt.GinJWTMiddleware) {
	api := apis.SysRole{}
	r := v1.Group("/sysRole").Use(authMiddleware.MiddlewareFunc()).Use(middleware.AuthCheckRole())
	{
		r.GET("list", api.GetList)
		r.GET("", api.GetPage)
		r.GET("/:id", api.Get)
		r.POST("", api.Insert)
		r.PUT("/:id", api.Update)
		r.DELETE("/:id", api.Delete)
	}
	r1 := v1.Group("").Use(authMiddleware.MiddlewareFunc())
	{
		r1.PUT("/role-status", api.Update2Status)
		r1.PUT("/roledatascope", api.Update2DataScope)
	}
}
