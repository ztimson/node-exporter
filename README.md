<!-- Header -->
<div id="top" align="center">
  <br />

  <!-- Logo -->
  <img src="https://git.zakscode.com/repo-avatars/1d5549fafabb98354acb1341d7bb7c14aafb090be3ddb698b55de12a80ecf20f" alt="Logo" width="200" height="200">

  <!-- Title -->
  ### node-exporter

  <!-- Description -->
  node-exporter with hostname

  <!-- Repo badges -->
  [![Version](https://img.shields.io/badge/dynamic/json.svg?label=Version&style=for-the-badge&url=https://git.zakscode.com/api/v1/repos/ztimson/node-exporter/tags&query=$[0].name)](https://git.zakscode.com/ztimson/node-exporter/tags)
  [![Pull Requests](https://img.shields.io/badge/dynamic/json.svg?label=Pull%20Requests&style=for-the-badge&url=https://git.zakscode.com/api/v1/repos/ztimson/node-exporter&query=open_pr_counter)](https://git.zakscode.com/ztimson/node-exporter/pulls)
  [![Issues](https://img.shields.io/badge/dynamic/json.svg?label=Issues&style=for-the-badge&url=https://git.zakscode.com/api/v1/repos/ztimson/node-exporter&query=open_issues_count)](https://git.zakscode.com/ztimson/node-exporter/issues)

  <!-- Links -->

  ---
  <div>
    <a href="https://git.zakscode.com/ztimson/node-exporter/releases" target="_blank">Release Notes</a>
    • <a href="https://git.zakscode.com/ztimson/node-exporter/issues/new?template=.github%2fissue_template%2fbug.md" target="_blank">Report a Bug</a>
    • <a href="https://git.zakscode.com/ztimson/node-exporter/issues/new?template=.github%2fissue_template%2fenhancement.md" target="_blank">Request a Feature</a>
  </div>

  ---
</div>

## Table of Contents
- [node-exporter](#top)
    - [About](#about)
        - [Built With](#built-with)
    - [Setup](#setup)
        - [Production](#production)
        - [Development](#development)

## About

This is an extension of [prom/node-exporter](https://hub.docker.com/r/prom/node-exporter) which adds the hostname as a metric.

For the hostname to be detected, you must mount the host's `rootfs` into the container's `/host` directory:

```yaml
version: '3.8'

services:
  node-exporter:
    image: ztimson/node-exporter:latest
    command:
      - --path.rootfs=/host
    volumes:
      - /:/host:ro,rslave
    networks:
      - network
    deploy:
      mode: global
```

[See on DockerHub](https://hub.docker.com/r/ztimson/node-exporter)

### Built With
[![Docker](https://img.shields.io/badge/Docker-384d54?style=for-the-badge&logo=docker)](https://docker.com/)

## Setup

<details>
<summary>
  <h3 id="production" style="display: inline">
    Production
  </h3>
</summary>

#### Prerequisites
- [Docker](https://docs.docker.com/install/)

#### Instructions
1. Run the docker image: `docker run -v "/:/host:ro,rslave" ztimson/node-exporter --path.rootfs=/host`
</details>

<details>
<summary>
  <h3 id="development" style="display: inline">
    Development
  </h3>
</summary>

#### Prerequisites
- [Docker](https://docs.docker.com/install/)

#### Instructions
1. Build the docker image: `docker build -t MY_IMAGE:TAG .`
2. Run docker image: `docker run -v "/:/host:ro,rslave" MY_IMAGE:TAG --path.rootfs=/host`

</details>
