_DIR := $(CURDIR)

.DEFAULT_GOAL := help
.PHONY: dev help

##@ Application

dev: install ## Serve the application in dev mode
	yarn serve

install: ## Install yarn packages
	yarn install

build: install ## Build release package
	yarn build

lint: install ## Lint project

deploy: clean build ## Deploy package to firebase
	firebase deploy

clean:
	rm -rf dist

##@ Helpers

help:  ## Display this help
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

