image = registry.nersc.gov/mp107/dataportal:latest

login:
	docker login https://registry.spin.nersc.gov/

build:
	docker build . -t $(image)

run:
	docker run --env-file env.list -p 5000:5000 $(image)

push: build
	docker push $(image)
