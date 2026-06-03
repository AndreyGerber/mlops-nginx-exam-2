links:
	@echo "Prometheus: http://localhost:9090"
	@echo "Grafana: http://localhost:3000"

start-project:
	docker compose -p mlops up -d --build

stop-project:
	docker compose -p mlops down

test:
	@echo "Executing automated test suite..."
	@chmod +x tests/run_tests.sh
	./tests/run_tests.sh
