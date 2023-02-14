PROJECT_NAME := $(notdir $(lastword $(subst /, ,$(shell pwd))))

go-mod-init:
	go mod init github.com/marcusbiava/$(PROJECT_NAME)
	go mod tidy

build:
	go mod tidy
	GOARCH=386 GOOS=linux go build -o $(PROJECT_NAME) ./cmd

.PHONY: go-mod-init build

