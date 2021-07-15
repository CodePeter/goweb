FROM golang:1.16-alpine

WORKDIR /opt/goweb

COPY . .

ARG GOPROXY="https://goproxy.cn"

#RUN go mod download
RUN go build -o goweb .

EXPOSE 9999
#VOLUME [ "/opt/ferry/config" ]
CMD [ "./goweb" ]
