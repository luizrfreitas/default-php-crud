# Default PHP CRUD

## Introduction
Looking for a standarizing the projects in PHP, this repository wrap the essentials for a project, wrapping Composer, Nginx, and MySQL and more in one standard repository.

## Installation
Before the installation, fill swap the `example.env` with the actual `.env` file.

There's currently two options of environment, development and production. The Makefile can be used to build both environments using, or `build-project-dev`, or `build-project-prod`.

## Supported Services
* PHP 8.3
* MySQL server
* Nginx