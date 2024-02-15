# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

### Changed

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
