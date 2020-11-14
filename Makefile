install:
	go get -u ./... && go mod tidy

format:
	gofmt -s -w .

build-win:
	GOOS=windows GOARCH=amd64 go build -ldflags "-H=windowsgui" -o bin/github-notify.exe ./

build:
	go build -o bin/github-notify ./