FROM python:3.12-slim-bookworm AS base
ENV PYTHONUNBUFFERED=1
WORKDIR /usr/src/app

COPY requirements.txt ./
RUN --mount=type=cache,target=/root/.cache/pip python -m pip install -U pip && \
    pip install -r requirements.txt

COPY . .

FROM gcr.io/distroless/python3-debian12
WORKDIR /usr/src/app

COPY --from=base /usr/src/app .
ENTRYPOINT ["python", "."]
