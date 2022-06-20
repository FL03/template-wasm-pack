FROM jo3mccain/rusty as builder-base

ADD . /project
WORKDIR /project

COPY . .
RUN cargo test --workspace

FROM builder-base as builder

RUN cargo publish