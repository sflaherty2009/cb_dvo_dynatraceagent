# cb_dvo_dynatraceAgent

* Installs the Dynatrace OneAgent
* May require application restarts to take full effect

# Environment Pinning

* production: 1.0.0
* staging: 1.0.0
* testing: latest
* development: latest

# Requirements

## Supported Platforms

* Linux
* Windows

## Chef

* Chef 12+

## Dependent Cookbooks

* None

## Attributes (significant)

# Recipes

## cb_dvo_dynatraceAgent::Default
## cb_dvo_dynatraceAgent::Uninstall

# Usage

  Install: "run_list": "recipe['cb_dvo_dynatraceAgent']"
  Uninstall: Most likely manually add to the run list with knife.
  e.g. (to uninstall for all nodes at next chef-client run in a particular environment from a shell)
  ```
  for node in $(knife search node "ALM_environment:ss AND recipes:cb_dvo_dynatraceAgent" -i); do
    knife node run_list add $node "recipe[cb_dvo_dynatraceAgent::uninstall]" -a "recipe[cb_dvo_dynatraceAgent]";
    knife node run_list remove $node "recipe[cb_dvo_dynatraceAgent]";
  done
  ```


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
