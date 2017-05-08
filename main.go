package main

import (
	_ "mcunode/routers"
	"github.com/astaxie/beego"
	"fmt"
	"net"
	"strings"
)

func main() {
	conn, err := net.Dial("udp", "www.google.com.hk:80")
	if err != nil {
		fmt.Println(err.Error())
		return
	}
	fmt.Println("\nMCU need connect to " + strings.Split(conn.LocalAddr().String(), ":")[0] + ":8001 if local use!!!!")
	conn.Close()
	beego.BConfig.AppName = "McuNode"
	beego.BConfig.Listen.HTTPPort=80
	beego.BConfig.RunMode="prod"
	beego.BConfig.ServerName = "McuNode Server"
	beego.BConfig.EnableErrorsShow = false
	beego.BConfig.EnableErrorsRender=false
	beego.BConfig.WebConfig.FlashName = "MCUNODE_FLASH"
	beego.BConfig.WebConfig.Session.SessionName = "MCUNODEsessionID"
	beego.Run()
}

