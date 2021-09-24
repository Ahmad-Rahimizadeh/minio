#!/bin/bash
export MINIO_ROOT_USER=<minio root user>
export MINIO_ROOT_PASSWORD=<minio root password>
minio server --address :9000 http://<minio host>/minio/data
