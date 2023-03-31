package router

import (
	jwt "git.tz.com/devops/gin-core/sdk/pkg/jwtauth"
	"github.com/gin-gonic/gin"
	"metadata-server/pkg/app/other/apis"
	"metadata-server/pkg/common/middleware"
)

func init() {
	routerCheckRole = append(routerCheckRole, registerSysServerMonitorRouter)
}

// 需认证的路由代码
func registerSysServerMonitorRouter(v1 *gin.RouterGroup, authMiddleware *jwt.GinJWTMiddleware) {
	api := apis.ServerMonitor{}
	r := v1.Group("/server-monitor").Use(authMiddleware.MiddlewareFunc()).Use(middleware.AuthCheckRole())
	{
		r.GET("", api.ServerInfo)
	}
}
