ifneq (,$(wildcard ./.env))
    include .env
    export
endif

go-mod-init:
	go mod init $(MODULE)

.PHONY: go-mod-init	