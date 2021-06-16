watch:
	docker-compose run --rm bikeshed watch $(filter-out $@, $(MAKECMDGOALS))

define build-target
	docker-compose run --rm bikeshed spec $1
endef

build:
	@for f in $(shell find . -name "*.bs"); do $(call build-target,$${f}); done

%:
	echo ""
