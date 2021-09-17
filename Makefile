VERSION=latest
IMAGE=spencerjp/icebox
REPO=docker.io
IMAGE_TAG=$(REPO)/$(IMAGE):$(VERSION)

DOCKER=sudo docker

build: www Dockerfile nginx
	$(DOCKER) build . -t $(IMAGE_TAG)

push:
	$(DOCKER) push $(IMAGE_TAG)

deploy: build push
	sed "s|{{IMAGE_TAG}}|$(IMAGE_TAG)|" conf/icebox.yaml | kubectl apply -f -
