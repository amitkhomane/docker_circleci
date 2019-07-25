SERVICE ?= docker_circleci
GET_VERSION := pipenv run python scripts/get_version.py
BUMP_PART ?= minor

.PHONY: bump-version
bump-version:
	pipenv run bumpversion ${BUMP_PART}
	git push --tags origin hello

.PHONY: docker-build
docker-build:
	docker build --rm -t ${SERVICE} .
	docker tag ${SERVICE} gcr.io/blameless-185322/${SERVICE}:$(shell ${GET_VERSION})
