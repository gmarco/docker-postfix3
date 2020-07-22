FROM alpine:3.13

MAINTAINER Marco Gittler <marco@gitma.de>


# Build and install Postfix
# https://git.alpinelinux.org/cgit/aports/tree/main/postfix/APKBUILD?h=2b1512eefca296b0ef1b60d2e521349385a3c353
RUN apk update \
 && apk upgrade \
 && apk add --no-cache \
        ca-certificates \
 && update-ca-certificates \
 && apk add --no-cache postfix postfix-pcre

EXPOSE 25

CMD ["postfix","start-fg"]

