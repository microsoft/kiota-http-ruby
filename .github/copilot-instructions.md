# Copilot Instructions for Kiota HTTP Ruby

## Commit Messages

This repository uses [Conventional Commits](https://www.conventionalcommits.org/) and [release-please](https://github.com/googleapis/release-please) for automated releases.

All commit messages **must** follow the format:

```
<type>(<optional scope>): <description>
```

### Choosing the right type

- `fix:` for bug fixes (bumps patch version)
- `feat:` for new features (bumps minor version)
- Append `!` after the type for breaking changes, e.g. `feat!:` or `fix!:` (bumps minor version while pre-1.0)
- `docs:`, `chore:`, `ci:`, `test:`, `refactor:` for non-release changes

### Rules

- Use lowercase for the type and description
- Do not end the description with a period
- Use the imperative mood in the description (e.g. "add support for" not "added support for")
- When a PR is squash-merged, the PR title becomes the commit message — ensure PR titles follow this format
