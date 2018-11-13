
from golang:latest

maintainer shigaki


add . app/

workdir app/

expose 8080

cmd ["go", "run", "main.go"]
