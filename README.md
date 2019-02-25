# OrgDependencies Docker

[![License][license-image]][license-url]

> Docker / Docker Compose Template for OrgDependencies

## Usage

### Environment Setup

Copy `.env.example` into `.env` and populate with your environment configuration.

### Docker Compose

for the first time run, start each container separately to allow for database initialization:

```shell
$ docker-compose up db
$ docker-compose up app
```

thereafter you can simply run:

```shell
$ docker-compose up
```

> _**Note**: this is obviously not ideal, a better approach to is to use methods described in [Docker's Docs](https://docs.docker.com/compose/startup-order/) pull requests are welcome_.

## Notes

### Database Initialization

`docker-compose` will [automatically apply](./docker-compose.yml#L13) the mapped OrgDependencies database schema.

However, this is not recommended for production deployments. Please use an appropriately managed/scaled database server.

---
> Website: [dependencies.org](https://dependencies.org) &bull; 
> Github: [@org-dependencies](https://github.com/org-dependencies) &bull; 
> Twitter: [@OrgDependencies](https://twitter.com/OrgDependencies)

[license-url]: LICENSE
[license-image]: https://img.shields.io/github/license/org-dependencies/docker.svg?style=for-the-badge&logo=circleci
