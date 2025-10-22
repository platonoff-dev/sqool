# sqool

[![CI](https://github.com/platonoff-dev/sqool/actions/workflows/ci.yml/badge.svg)](https://github.com/platonoff-dev/sqool/actions/workflows/ci.yml)
[![Go Report Card](https://goreportcard.com/badge/github.com/platonoff-dev/sqool)](https://goreportcard.com/report/github.com/platonoff-dev/sqool)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Single file SQL database to learn about storage systems.

## 📖 Overview

**sqool** is an educational project designed to help developers understand the internals of database storage systems. By implementing a simplified SQL database in a single file, this project demonstrates core concepts like:

- File-based storage management
- B-tree indexing
- Query parsing and execution
- Transaction management
- Concurrency control

## 🚀 Getting Started

### Prerequisites

- Go 1.21 or higher
- Make (optional, for easier command execution)

### Installation

```bash
# Clone the repository
git clone https://github.com/platonoff-dev/sqool.git
cd sqool

# Install dependencies
go mod download

# Build the project
make build
# or
go build -o bin/sqool .
```

### Quick Start

```bash
# Run the application
make run
# or
go run .
```

## 🛠️ Development

### Setup Development Environment

```bash
# Install all development tools and pre-commit hooks
make setup
```

This will install:
- `golangci-lint` - Go linter
- `goimports` - Go imports formatter
- `pre-commit` - Git hooks framework

### Available Commands

```bash
make help          # Show all available commands
make build         # Build the application
make run           # Run the application
make test          # Run tests
make test-coverage # Run tests with coverage report
make lint          # Run linter
make fmt           # Format code
make clean         # Clean build artifacts
make check         # Run all checks (format, lint, test)
```

### Running Tests

```bash
# Run all tests
make test

# Run tests with coverage
make test-coverage
```

### Code Quality

The project uses several tools to maintain code quality:

- **golangci-lint**: Comprehensive Go linter with multiple analyzers
- **gofmt/goimports**: Code formatting
- **pre-commit**: Git hooks for automated checks before commits

```bash
# Run linter
make lint

# Format code
make fmt

# Run all checks
make check
```

### Pre-commit Hooks

Pre-commit hooks are automatically installed when you run `make setup`. They will:

- Format your code with `gofmt`
- Run `golangci-lint` to catch common issues
- Run tests to ensure nothing is broken
- Check for trailing whitespace and other common issues

To manually run pre-commit on all files:

```bash
pre-commit run --all-files
```

## 📁 Project Structure

```
sqool/
├── .github/
│   └── workflows/
│       └── ci.yml          # GitHub Actions CI workflow
├── .golangci.yml           # golangci-lint configuration
├── .pre-commit-config.yaml # Pre-commit hooks configuration
├── .gitignore              # Git ignore rules
├── main.go                 # Main application entry point
├── go.mod                  # Go module definition
├── Makefile                # Build and development tasks
└── README.md               # This file
```

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request. Before submitting:

1. Ensure your code passes all checks: `make check`
2. Add tests for new functionality
3. Update documentation as needed

### Development Workflow

1. Fork the repository
2. Create a feature branch: `git checkout -b feature/amazing-feature`
3. Make your changes
4. Run checks: `make check`
5. Commit your changes: `git commit -m 'Add amazing feature'`
6. Push to the branch: `git push origin feature/amazing-feature`
7. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🎓 Learning Resources

- [Database Internals](https://www.databass.dev/) by Alex Petrov
- [Architecture of SQLite](https://www.sqlite.org/arch.html)
- [How databases work](https://cstack.github.io/db_tutorial/)

## 🙏 Acknowledgments

This project is inspired by various database implementations and educational resources in the database systems community.

## 📧 Contact

For questions or suggestions, please open an issue on GitHub.
