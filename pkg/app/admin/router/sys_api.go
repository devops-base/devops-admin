package router

import (
	jwt "git.tz.com/devops/gin-core/sdk/pkg/jwtauth"
	"github.com/gin-gonic/gin"

	"metadata-server/pkg/app/admin/apis"
	"metadata-server/pkg/common/middleware"
)

func init() {
	routerCheckRole = append(routerCheckRole, registerSysApiRouter)
}

// registerSysApiRouter
func registerSysApiRouter(v1 *gin.RouterGroup, authMiddleware *jwt.GinJWTMiddleware) {
	api := apis.SysApi{}
	r := v1.Group("/sysApi").Use(authMiddleware.MiddlewareFunc()).Use(middleware.AuthCheckRole())
	{
		r.GET("", api.GetPage)
		r.GET("/list", api.GetList)
		r.GET("/:id", api.Get)
		r.PUT("/:id", api.Update)
	}
}
