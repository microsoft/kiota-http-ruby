# Contributing to Kiota HTTP for Ruby

This project welcomes contributions and suggestions. Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit <https://cla.opensource.microsoft.com>.

When you submit a pull request, a CLA bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., status check, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## Commit Messages

This project uses [Conventional Commits](https://www.conventionalcommits.org/) to automate versioning and changelog generation through [release-please](https://github.com/googleapis/release-please).

Every commit merged to `main` **must** follow this format:

```
<type>(<optional scope>): <description>
```

### Types

| Type | Description | Version Bump |
|------|-------------|--------------|
| `fix` | Bug fix | Patch (`0.15.0` → `0.15.1`) |
| `feat` | New feature | Minor (`0.15.0` → `0.16.0`) |
| `feat!`, `fix!`, `refactor!`, etc. | Breaking change (append `!`) | Minor while pre-1.0 (`0.15.0` → `0.16.0`) |
| `docs` | Documentation only | No release |
| `chore` | Maintenance tasks | No release |
| `ci` | CI/CD changes | No release |
| `test` | Test changes | No release |
| `refactor` | Code refactoring | No release |

### Examples

```
fix: correct content not being set in request information
feat: add try_add method for request headers
feat!: bump minimum required ruby version to 3.0
docs: update README installation instructions
chore: update dependencies
```

### Pull Requests

When a PR is squash-merged, the PR title becomes the commit message on `main`. Make sure the **PR title** follows the conventional commit format so release-please can categorize it correctly.

## Development Setup

1. Clone the repository
2. Run `bundle install` to install dependencies
3. Run `bundle exec rake` to run linting and tests
