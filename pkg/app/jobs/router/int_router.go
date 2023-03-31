package router

import (
	//"git.tz.com/devops/gin-core/sdk/pkg"
	"os"

	log "git.tz.com/devops/gin-core/logger"
	"git.tz.com/devops/gin-core/sdk"
	"github.com/gin-gonic/gin"
	common "metadata-server/pkg/common/middleware"
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

	authMiddleware, err := common.AuthInit()
	if err != nil {
		log.Fatalf("JWT Init Error, %s", err.Error())
	}

	// 注册业务路由
	initRouter(r, authMiddleware)
}