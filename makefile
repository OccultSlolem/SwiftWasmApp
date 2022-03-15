all: helloworld

helloworld:
	swiftc -target wasm32-unknown-wasi ./src/hello.swift -o ./out/hello.wasm
