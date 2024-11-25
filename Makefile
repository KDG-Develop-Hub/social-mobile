.PHONY: runner
runner:
	flutter pub run build_runner build --delete-conflicting-outputs

.PHONY: setup
setup:
	flutter clean \
	flutter pub get

.PHONY: slang
slang:
	dart run slang