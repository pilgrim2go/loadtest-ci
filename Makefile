# Variables
DOCKER_COMPOSE=docker compose -f docker-compose.yml
AB_COMMAND=ab -n 1000 -c 10

# Start Docker Compose
.PHONY: start
start:
	$(DOCKER_COMPOSE) up -d
# Stop Docker Compose
.PHONY: stop
stop:
	$(DOCKER_COMPOSE) down

# Run ApacheBench on foo
.PHONY: load-test-foo
load-test-foo:
	$(AB_COMMAND) http://localhost:8082/ > foo_results.txt
# Run ApacheBench on bar
.PHONY: load-test-bar
load-test-bar:
	$(AB_COMMAND) http://localhost:8083/ > bar_results.txt	
# Run all steps
.PHONY: all
all: start load-test-foo load-test-bar stop
