# Docker Image of Postgres with PostGIS and PGVector

Postgres with PostGIS and PGVector

NOTE: The version is not specified. At least I confirmed that `apt install` the latest version.

Postgres minor version can be updated via Dependabot.
It will not create the PR for a Major update.


## Usage

The registry of this image is private so follow this [instruction](https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry) to download locally.

```bash
echo $GITHUB_PERSONAL_ACCESS_TOKEN | docker login ghcr.io -u USERNAME --password-stdin
```
