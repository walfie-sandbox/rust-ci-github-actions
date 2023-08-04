FROM rust:1.71.1-slim-bullseye AS builder

WORKDIR /workspace
COPY . .
RUN cargo build --release

# We could copy the executable into a smaller base image but this is fine for now
ENTRYPOINT ["/workspace/target/release/example"]

