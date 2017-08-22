## Run the app in local

Install Gorilla Mux (Web tool kit)

```
go get -u github.com/gorilla/mux
```

## Run the app on container

Build

```
docker build -t simple-api-go .
```

Run

```
docker run --rm -it -p 8080:8080 simple-api-go:latest
```

## Push to ECR(ECS Container Registory)

Install vendor package(gorilla) in src

```
godep save ./...
```

Get a login credential, and login to ECR by using the result of the command string.
```
aws ecr get-login --no-include-email --region ap-northeast-1
```

Push to ECR
```
docker tag simple-api-go:latest 640175474045.dkr.ecr.ap-northeast-1.amazonaws.com/simple-api-go:latest
docker push 640175474045.dkr.ecr.ap-northeast-1.amazonaws.com/simple-api-go:latest
```

