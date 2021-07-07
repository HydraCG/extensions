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

build-vocabulary:
	npx graphy read -c ttl / concat / tree / write -c nt --inputs extensions/*/vocab.ttl > extensions/extensions.nt
	npx graphy read -c ttl / concat / tree / write -c ttl --inputs extensions/*/vocab.ttl > extensions/extensions.ttl
	npx graphy read -c ttl / concat / tree / scribe -c xml --inputs extensions/*/vocab.ttl > extensions/extensions.rdf
