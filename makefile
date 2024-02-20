# .env file
include .env

# Example
hello:
	@echo "Hello, World!"

# Install composer on a dir
icomposer:
	@docker exec $(APP_NAME) "php composer-setup.php --install-dir=/var/www/html/app/ --filename=composer"

# Craetes a laravel project on /var/www/html folder.
laravel-create:
	@echo "Creating example app..."
	@docker exec -w /var/www/html $(APP_NAME) composer create-project laravel/laravel $(firstword $(ARGS))
	@docker cp $(APP_NAME):/var/www/html/laravel ./app
	@