LARAVEL_CONTAINER=dawtr2gx_g10_gestioeduca-backend-1
MYSQL_CONTAINER=dawtr2gx_g10_gestioeduca-db-1
VUE_CONTAINER=dawtr2gx_g10_gestioeduca-frontend-1
ADMINER_CONTAINER=dawtr2gx_g10_gestioeduca-adminer-1

RED    := \033[0;31m
GREEN  := \033[0;32m
BLUE   := \033[0;34m
YELLOW := \033[1;33m
CYAN   := \033[0;36m
RESET  := \033[0m

help:
	@echo "		  🐳 Makefile para gestión de proyectos Docker 🐳"
	@echo "		Comanda per borrar totes les imatges: docker-rmi"
	@echo ""
	@echo ""
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

migrate: ## Migrate dins del contenidor laravel
	docker exec -it $(LARAVEL_CONTAINER) php artisan migrate:fresh
	docker restart $(LARAVEL_CONTAINER)

godb: ##Entrar a la bbdd mysql
	docker exec -it $(MYSQL_CONTAINER) mysql -u user -p;

seed: ## Migrate seeders
	docker exec -it $(LARAVEL_CONTAINER) php artisan migrate:fresh --seed

close: ## Tancar tot i eliminar les docker images que no utilitzas.
	docker compose down
	docker image prune -a

show:
	@echo "$(CYAN)==> Listando todos los contenedores (activos e inactivos):$(RESET)"
	@docker ps -a
	@echo "$(YELLOW)\n==> Mostrando estadísticas en tiempo real de los contenedores:$(RESET)"
	@docker stats --no-stream
	@echo "$(GREEN)\n==> Listando todas las imágenes:$(RESET)"
	@docker images
	@echo "$(BLUE)\n==> Mostrando uso de disco (contenedores, imágenes, volúmenes y caché):$(RESET)"
	@docker system df
	@echo "$(CYAN)\n==> Mostrando contenedores activos:$(RESET)"
	@docker ps



