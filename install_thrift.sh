#!/bin/sh
# Thrift 0.12.0 compiler for the JitPack build (see jitpack.yml). The binary lives
# on this repo's GitHub release "thrift-0.12.0-linux-amd64"; it used to come from
# s3://remerge-artifacts/3rdparty/thrift, which is being removed (IT-9168).
set -e
wget -q -O thrift https://github.com/remerge/parquet-mr/releases/download/thrift-0.12.0-linux-amd64/thrift
echo "f19059a1fb2cdcadbaf1911d8935a29d7f67ca6dfb8cb359396d5409a3f97ecc  thrift" | sha256sum -c -
chmod +x thrift
export PATH=$PATH:`pwd`
