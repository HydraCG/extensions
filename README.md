# Hydra extensions

This repository gathers vocabularies which extend [Hydra Core](http://www.hydra-cg.com/spec/latest/core/) to allow implementors to create richer hypermedia in their Hydra APIs.

## Adding extensions

Simply run `make new spec=my-extension` and commit the created `index.bs` file.

## Run locally

Run `make watch spec=my-extension` to start bikeshed in observing mode. It will generate an adjacent `index.html` when the source changes.

Run `make build` to generate all specification files.
