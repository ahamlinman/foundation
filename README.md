# Foundation

The Foundation image is a simple Alpine Linux Docker image with a few extra
useful packages:

* bash
* curl
* docker
* python3, including the following modules
  - awscli

It is useful as a base image for simple Bash or Python-based tools, or as a
default image for GitLab CI (or similar) jobs.

## Background

A simple approach to Dockerizing the above tools is to create individual images
for each one, using a lightweight base Alpine Linux. However, this image
borrows heavily from the concept of Docker's buildpack-deps images, and
coalesces multiple useful tools into a single image. This means that on a
system where multiple of the above tools are useful:

* The total _overall_ size of images, since the tools can share common
  dependencies (e.g. Bash and Python can share a single copy of the readline
  library)
* Only one image needs to be maintained (e.g. with regular security updates)
  rather than several
