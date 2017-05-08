set CGO_ENABLED=0
set GOROOT_BOOTSTRAP=C:/Go
::x86块
set GOARCH=386
set GOOS=windows
go build main.go
ren main.exe windows386.exe
set GOOS=linux
go build main.go
ren main linux386
set GOOS=freebsd
go build main.go
ren main freebsd386
set GOOS=darwin
go build main.go
ren main darwin386
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
  
::x64块
set GOARCH=amd64
set GOOS=windows
go build main.go
ren main.exe windowsAmd64.exe
set GOOS=linux
go build main.go
ren main linuxAMD64  
set GOOS=freebsd
go build main.go
ren main freebsdAMD64  
set GOOS=darwin
go build main.go
ren main darwinAMD64
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
  
::arm块
set GOARCH=arm
set GOOS=linux
go build main.go
ren main LinuxArm
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set GOARCH=amd64
set GOOS=windows
pause