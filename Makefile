SHELL := /bin/zsh

start-front:
	cd frontend && serve -l 3000 build
	
build-front:
	cd frontend && yarn build

start-back:
	cd backend && ./gradlew bootRun