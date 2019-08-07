.PHONY: clean build
.DEFAULT_GOAL := build

SUDO=$(shell docker info >/dev/null 2>&1 || echo "sudo -E")

build:
	CGO_ENABLED=0 go build -a -ldflags '-extldflags "-static"' -o hello-world ./
	$(SUDO) docker build -t akash4927/hello-world:ci .

clean:
	rm -f hello-world
