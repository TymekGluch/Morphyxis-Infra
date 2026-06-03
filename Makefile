.PHONY: init
init:
	bash scripts/init.sh

.PHONY: bump-version
bump-version:
	bash scripts/bumpVersion.sh

.PHONY: help
help: 
	@echo "Usage: make [target]"
	@echo "Targets:"
	@echo "init - Initialize necessary git hooks"
	@echo "bump-version - Bump version based on conventional commits"
	@echo "help    - Show this help message"