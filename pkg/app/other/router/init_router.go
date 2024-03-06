package router

import (
	"os"

	common "github.com/devops-base/devops-admin/pkg/common/middleware"
	log "github.com/devops-base/devops-core/logger"
	"github.com/devops-base/devops-core/sdk"
	"github.com/gin-gonic/gin"
)

// InitRouter 路由初始化，不要怀疑，这里用到了
func InitRouter() {
	var r *gin.Engine
	h := sdk.Runtime.GetEngine()
	if h == nil {
		log.Fatal("not found engine...")
		os.Exit(-1)
	}
	switch h.(type) {
	case *gin.Engine:
		r = h.(*gin.Engine)
	default:
		log.Fatal("not support option engine")
		os.Exit(-1)
	}
	// the jwt middleware
	authMiddleware, err := common.AuthInit()
	if err != nil {
		log.Fatalf("JWT Init Error, %s", err.Error())
	}

	// 注册业务路由
	// TODO: 这里可存放业务路由，里边并无实际路由只有演示代码
	initRouter(r, authMiddleware)
}
