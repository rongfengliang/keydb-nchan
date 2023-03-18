FROM dalongrong/openresty-tengine:debug-njs
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && apk update && apk upgrade
RUN apk add --no-cache perf