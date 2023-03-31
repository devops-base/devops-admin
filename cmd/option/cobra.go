package option

import (
	"errors"
	"fmt"
	"git.tz.com/devops/gin-core/sdk/pkg"
	"metadata-server/cmd/option/app"
	"metadata-server/pkg/common/global"
	"os"

	"github.com/spf13/cobra"

	"metadata-server/cmd/option/api"
	"metadata-server/cmd/option/config"
	"metadata-server/cmd/option/version"
)

var rootCmd = &cobra.Command{
	Use:          "devops-admin",
	Short:        "devops-admin",
	SilenceUsage: true,
	Long:         `devops-admin`,
	Args: func(cmd *cobra.Command, args []string) error {
		if len(args) < 1 {
			tip()
			return errors.New(pkg.Red("requires at least one arg"))
		}
		return nil
	},
	PersistentPreRunE: func(*cobra.Command, []string) error { return nil },
	Run: func(cmd *cobra.Command, args []string) {
		//tip()
	},
}

func tip() {
	usageStr := `欢迎使用 ` + pkg.Green(`devops-admin `+global.Version) + ` 可以使用 ` + pkg.Red(`-h`) + ` 查看命令`
	fmt.Printf("%s\n", usageStr)
}

func init() {
	rootCmd.AddCommand(api.StartCmd)
	rootCmd.AddCommand(version.StartCmd)
	rootCmd.AddCommand(config.StartCmd)
	rootCmd.AddCommand(app.StartCmd)
}

//Execute : apply commands
func Execute() {
	if err := rootCmd.Execute(); err != nil {
		os.Exit(-1)
	}
}
