# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.16.0](https://github.com/microsoft/kiota-http-ruby/compare/v0.15.0...v0.16.0) (2026-04-23)


### Features

* upgrade ruby CI matrix to 3.3, 3.4 and 4.0 ([7bf4976](https://github.com/microsoft/kiota-http-ruby/commit/7bf497603ae5106b57e7b1baf5b51b902049d17c))
* upgrade ruby CI matrix to 3.3, 3.4 and 4.0 ([278f84d](https://github.com/microsoft/kiota-http-ruby/commit/278f84dd0fd8f2d9d13927089b8c09fcc51b5402))


### Bug Fixes

* update minimum required ruby version to 3.3.0 ([fa6e13f](https://github.com/microsoft/kiota-http-ruby/commit/fa6e13fbd422c508a690a29e678ebc1ca3d7f33a))
* update minimum required ruby version to 3.3.0 ([f867d27](https://github.com/microsoft/kiota-http-ruby/commit/f867d270aa008881650af6470428cc19b29d2abd))

## [Unreleased]

### Added

### Changed

## [0.15.0] - 2024-02-16

### Changed

- Ensure get_parse_node does not fail when response body is empty. [#27](https://github.com/microsoft/kiota-http-ruby/pull/28)

## [0.14.0] - 2024-02-14

### Changed

- Make sure the base_url is set when calling authenticate_request. [#27](https://github.com/microsoft/kiota-http-ruby/pull/27)

## [0.13.0] - 2024-02-05

### Changed

- Added support for error mapping deduplication to reduce generated code. [#20](https://github.com/microsoft/kiota-http-ruby/issues/20)

## [0.12.0] - 2023-03-28

### Changed

- Updated kiota abstractions reference
- Bumped minimum required ruby version to 3.0.

## [0.11.0] - 2023-01-10

### Added

- Added a method to convert abstract requests to native requests in the request adapter interface.

## [0.10.0] - 2023-01-06

### Added

- Added a user agent handler to add the product to the request header.

## [0.9.0] - 2022-12-30

### Added

- Initial public release of the package.
