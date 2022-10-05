# Kubernetes GitHub Action Runner

⚠️ This project is no longer maintained. Alternate solutions can be found [here](https://docs.github.com/en/actions/hosting-your-own-runners/autoscaling-with-self-hosted-runners#recommended-autoscaling-solutions).

---

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

| Parameter             | Description                          | Default                         |
| --------------------- | ------------------------------------ | ------------------------------- |
| `resources`           | CPU/Memory resource requests/limits. | `{}`                            |
| `repositoryOwner`     | Owner of the repository.             | `""`                            |
| `repository`          | Repository name.                     | `""`                            |
| `personalAccessToken` | GitHub Personal Access Token.        | `""`                            |
| `image`               | Image.                               | `mpriscella/k8s-actions:latest` |
