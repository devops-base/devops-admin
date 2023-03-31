package main

import "metadata-server/cmd/option"

//go:generate swag init --parseDependency --parseDepth=6

// @securityDefinitions.apikey Bearer
// @in header
// @name Authorization
func main() {
	option.Execute()
}
