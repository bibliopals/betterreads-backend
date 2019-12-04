#!/usr/bin/env bash
set -euxo pipefail

pipenv run pycodestyle .
pipenv run flake8 .
pipenv run pydocstyle .
pipenv run mypy .
