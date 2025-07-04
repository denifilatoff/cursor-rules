# cursor-rules

Custom rules for Cursor IDE that automate routine development tasks.

## Available Rules

- **mkdocs-init.mdc** - Complete MkDocs Material setup with themes, navigation, and CI/CD
- **mkdocs-examples.mdc** - Automation for including code examples in documentation
- **readme-update.mdc** - Update readme.md with industry standards
- **adr-create.mdc** - Format your architecture decision description into structured ADR template
- **gh-issue-create.mdc** - Generate GitHub Feature Request or Issue from chat and confirm before posting

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
@gh-issue-create Need to add dark mode support for better user experience
@adr-create We decided to use PostgreSQL instead of MongoDB for user data storage. Context: need ACID transactions and complex queries. Decision: PostgreSQL provides better consistency. Consequences: more complex setup but better data integrity.

```

## License

Apache License 2.0
