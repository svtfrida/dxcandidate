#!/bin/sh

go mod vendor

GO_IN=${GO_IN:-"./"}
GO_OUT=${GO_OUT:-"build/staticsrv"}

go build \
    -o ${GO_OUT} \
    -mod=vendor \
    ${GO_IN}

