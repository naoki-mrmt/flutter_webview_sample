.DEFAULT_GOAL := setup

.PHONY: init
init: ## install flutter
	$(MAKE) install

.PHONY: setup
setup: ## `flutter clean` and `flutter pub get`
	$(MAKE) clean
	$(MAKE) pub-get
	$(MAKE) build

.PHONY: install
install: ## asdf install
	$(info $(SEPARATOR))
	asdf install

.PHONY: clean
clean: ## flutter clean
	$(info $(SEPARATOR))
	flutter clean

.PHONY: pub-get
pub-get: ## flutter pub get
	$(info $(SEPARATOR))
	flutter pub get

.PHONY: run
run: ## flutter run
	$(info $(SEPARATOR))
	flutter run


.PHONY: build
build: ## flutter pub run build_runner build
	$(info $(SEPARATOR))
	flutter pub run build_runner build --delete-conflicting-outputs

.PHONY: help
help: ## print this message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

SEPARATOR=********************

.PHONY: operation-check
operation-check: ## Run operation check including flutter clean, pub get, pod install, and make run
	$(MAKE) clean
	$(MAKE) pub-get
	cd ios && pod install
	$(MAKE) run
