package router

import (
	"github.com/devops-base/devops-admin/pkg/app/admin/apis"
	"github.com/devops-base/devops-admin/pkg/common/middleware"
	jwt "github.com/devops-base/devops-core/sdk/pkg/jwtauth"
	"github.com/gin-gonic/gin"
)

func init() {
	routerCheckRole = append(routerCheckRole, registerSysDeptRouter)
}

// 需认证的路由代码
func registerSysDeptRouter(v1 *gin.RouterGroup, authMiddleware *jwt.GinJWTMiddleware) {
	api := apis.SysDept{}

	r := v1.Group("/sysDept").Use(authMiddleware.MiddlewareFunc()).Use(middleware.AuthCheckRole())
	{
		r.GET("list", api.GetList)
		r.GET("", api.GetPage)
		r.GET("/:id", api.Get)
		r.POST("", api.Insert)
		r.PUT("/:id", api.Update)
		r.DELETE("/:id", api.Delete)
	}

	r1 := v1.Group("/sysDept").Use(authMiddleware.MiddlewareFunc())
	{
		r1.GET("/deptTree", api.Get2Tree)
	}

}
