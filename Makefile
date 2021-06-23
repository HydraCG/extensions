watch:
	docker-compose run --rm bikeshed watch /extensions/$(spec)/index.bs

define build-target
	docker-compose run --rm bikeshed spec $1
endef

build:
	@for f in $(shell find . -name "*.bs"); do \
		echo "Building $${f}"; \
  		$(call build-target,$${f}); \
	done

new:
	mkdir -p ./extensions/$(spec)
	docker-compose run --rm bikeshed template > ./extensions/$(spec)/index.bs
