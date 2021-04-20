
#
# Java
#
java: build-java run-java

build-java:
	docker build --pull --rm -f "java/Dockerfile-helloWorld" -t java-hello-world:latest ./java/
	docker build --pull --rm -f "java/Dockerfile-findPrimes" -t java-find-primes:latest ./java/

run-java:
	@-echo "java hello world"
	@-time docker run --rm java-hello-world
	@-time docker run --rm java-find-primes

#
# Python
#
python: build-python run-python

build-python:
	docker build --pull --rm -f "python/Dockerfile-helloWorld" -t python-hello-world:latest ./python/
	docker build --pull --rm -f "python/Dockerfile-findPrimes" -t python-find-primes:latest ./python/

run-python:
	@-echo "python hello world"
	@-time docker run --rm python-hello-world
	@-time docker run --rm python-find-primes

#
# Golang
#
golang: build-golang run-golang

build-golang:
	docker build --pull --rm -f "golang/Dockerfile-helloWorld" -t golang-hello-world:latest ./golang/
	docker build --pull --rm -f "golang/Dockerfile-findPrimes" -t golang-find-primes:latest ./golang/

run-golang:
	@-echo "golang hello world"
	@-time docker run --rm golang-hello-world
	@-time docker run --rm golang-find-primes


#
# build
#
build: build-java build-python build-golang

#
# run
#
run: run-java run-python run-golang
run-primes: 
	@-echo JAVA
	@-time docker run --rm java-find-primes
	@-echo
	@-echo GOLANG
	@-time docker run --rm golang-find-primes
	@-echo
	@-echo PYTHON
	@-time docker run --rm python-find-primes
	@-echo


