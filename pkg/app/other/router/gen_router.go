package router

import (
	"github.com/devops-base/devops-admin/pkg/app/admin/apis"
	"github.com/devops-base/devops-admin/pkg/app/other/apis/tools"
	jwt "github.com/devops-base/devops-core/sdk/pkg/jwtauth"
	"github.com/gin-gonic/gin"
)

func init() {
	routerCheckRole = append(routerCheckRole, sysNoCheckRoleRouter, registerSysTableRouter)
}

func sysNoCheckRoleRouter(v1 *gin.RouterGroup, authMiddleware *jwt.GinJWTMiddleware) {
	r1 := v1.Group("")
	{
		sys := apis.System{}
		r1.GET("/captcha", sys.GenerateCaptchaHandler)
	}
}

func registerSysTableRouter(v1 *gin.RouterGroup, authMiddleware *jwt.GinJWTMiddleware) {
	tables := v1.Group("/sys/tables")
	{
		sysTable := tools.SysTable{}
		tables.Group("").Use(authMiddleware.MiddlewareFunc()).GET("/page", sysTable.GetPage)
		tablesInfo := tables.Group("/info").Use(authMiddleware.MiddlewareFunc())
		{
			tablesInfo.POST("", sysTable.Insert)
			tablesInfo.PUT("", sysTable.Update)
			tablesInfo.DELETE("/:tableId", sysTable.Delete)
			tablesInfo.GET("/:tableId", sysTable.Get)
			tablesInfo.GET("", sysTable.GetSysTablesInfo)
		}
	}
}
