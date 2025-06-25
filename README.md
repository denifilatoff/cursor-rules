# cursor-rules

Custom rules for Cursor IDE that automate routine development tasks.

## Available Rules

- **mkdocs-init.mdc** - Complete MkDocs Material setup with themes, navigation, and CI/CD
- **mkdocs-examples.mdc** - Automation for including code examples in documentation
- **readme-update.mdc** - Update readme.md with industry standards"

## Installation

1. From the root of your git project, run:

```bash
curl -sSL https://raw.githubusercontent.com/denifilatoff/cursor-rules/main/install.sh | bash
```

2. **Restart** Cursor and open a new chat

⚠️ **Warning:** The script will overwrite existing files in `.cursor/rules/` with the same names without warning.

### Manual Installation

1. Copy the required `.mdc` files to `.cursor/rules/` in your project
2. **Restart** Cursor and open a new chat

## Usage

Type the following text using the `@` symbol to invoke a specific rule in new chat:
```
@command Type your request here
```

Examples:
```
@mkdocs-examples Please help to include code examples from the examples folder in documentation
@readme-update Please help to update README.md
```

## License

Apache License 2.0
