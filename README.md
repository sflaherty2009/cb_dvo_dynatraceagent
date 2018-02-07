# cb_dvo_dynatraceAgent

* Installs the Dynatrace OneAgent
* May require application restarts to take full effect

# Environment Pinning

* production: 0.0.1
* staging: 0.0.1
* testing: latest
* development: latest

# Requirements

## Supported Platforms

* Linux
* Windows

## Chef

* Chef 12+

## Dependent Cookbooks

* dynatrace-appmon

## Attributes (significant)

# Recipes

## cb_dvo_dynatraceAgent::Default

# Usage

  "run_list": "recipe['cb_dvo_dynatraceAgent']",

## After provisioning

* Verify connectivity to dynatrace server. Restart apps that require monitoring if requried.

## Planned & Unplanned Tech Debt

* None

# Tests

## Linux

## Windows

# Contributing

Managed via feature branch pull requests.  Must pass all tests and include new tests for additional functionality/templates.

# License & Authors

**Aurthor:** Matt Oleksowicz (Matthew_Oleksowicz@trekbikes.com)

**Copyright:** 2018, The Trek Bicycle Corporation, All Rights Reserved
