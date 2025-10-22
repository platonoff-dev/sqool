.PHONY: help build run test lint fmt clean install-tools install-hooks

# Default target
help: ## Show this help message
	@echo 'Usage: make [target]'
	@echo ''
	@echo 'Available targets:'
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "  %-15s %s\n", $$1, $$2}'

build: ## Build the application
	@echo "Building..."
	go build -o bin/sqool .

run: ## Run the application
	@echo "Running sqool..."
	go run .

test: ## Run tests
	@echo "Running tests..."
	go test -v -race -coverprofile=coverage.out ./...

test-coverage: test ## Run tests with coverage report
	@echo "Generating coverage report..."
	go tool cover -html=coverage.out -o coverage.html
	@echo "Coverage report generated: coverage.html"

lint: ## Run linter
	@echo "Running golangci-lint..."
	golangci-lint run

fmt: ## Format code
	@echo "Formatting code..."
	gofmt -w .
	@command -v goimports >/dev/null 2>&1 && goimports -w . || echo "goimports not found, skipping (install with: go install golang.org/x/tools/cmd/goimports@latest)"

clean: ## Clean build artifacts
	@echo "Cleaning..."
	rm -rf bin/
	rm -f coverage.out coverage.html

install-tools: ## Install development tools
	@echo "Installing development tools..."
	go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest
	go install golang.org/x/tools/cmd/goimports@latest
	pip install pre-commit || pip3 install pre-commit

install-hooks: ## Install pre-commit hooks
	@echo "Installing pre-commit hooks..."
	pre-commit install

setup: install-tools install-hooks ## Complete development setup
	@echo "Development environment setup complete!"

check: fmt lint test ## Run all checks (format, lint, test)
	@echo "All checks passed!"
