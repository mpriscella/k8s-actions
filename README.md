# Kubernetes GitHub Action Runner

Will need instance group with c5d.4xlarge and c5.4xlarge instances.

This chart is not hosted anywhere currently. To install the chart, you must
download this repository and unpack it into a directory.


## Prerequisites

* [helm]() 3.0+ - This is the earliest version of helm tested. It is possible
  that it works with earlier versions but this chart hasn't been tested.


## Installing the Chart

To install the chart with the release name `my-release`:

```
$ helm install my-release ./chart
```


## Uninstalling the Chart

```
$ helm delete my-release
```


## Configuration

| Parameter             | Description                         | Default |
| --------------------- | ----------------------------------- | ------- |
| `resources`           | CPU/Memory resource requests/limits | `{}`    |
| `repositoryOwner`     | Owner of the repository.                                   | `''`    |
| `repository`          | Repository name.                                    | `''`    |
| `personalAccessToken` | GitHub Personal Access Token                                     | `''`    |