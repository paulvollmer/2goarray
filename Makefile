build:
	@go build

test:
	@make build
	@rm -f fixture/sample.go
	@./2goarray < fixture/sample.txt > fixture/sample.go
	@go test ./fixture

clean:
	@go clean
