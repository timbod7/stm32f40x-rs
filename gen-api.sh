#!/bin/sh

svd2rust -i resources/STM32F40x.svd
rm -rf src
form -i lib.rs -o src/ && rm lib.rs
cargo fmt
