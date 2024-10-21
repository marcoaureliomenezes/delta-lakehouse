current_branch = 1.0.0



build_hadoop:
	@docker build -t delta-lakehouse-hadoop:$(current_branch) ./docker/hadoop/base

build_notebook:
	@docker build -t delta-lakehouse-notebook:$(current_branch) ./docker/notebook

build_spark:
	@docker build -t delta-lakehouse-spark:$(current_branch) ./docker/spark


deploy_services:
	@docker compose -f services/lakehouse_layer.yml up -d --build
	@docker compose -f services/processing_layer.yml up -d --build

stop_services:
	@docker compose -f services/lakehouse_layer.yml down
	@docker compose -f services/processing_layer.yml down

watch_services:
	@watch docker compose -f services/lakehouse_layer.yml ps