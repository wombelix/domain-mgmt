<!--
SPDX-FileCopyrightText: 2026 Dominik Wombacher <dominik@wombacher.cc>

SPDX-License-Identifier: Apache-2.0
-->

# Domain management

OpenTofu based management of my Domains on inwx.
The majority of DNS records are handled outside this repo.

<!-- markdownlint-disable MD013 -->
[![REUSE status](https://api.reuse.software/badge/github.com/wombelix/domain-mgmt)](https://api.reuse.software/info/github.com/wombelix/domain-mgmt)
[![Mirror](https://github.com/wombelix/domain-mgmt/actions/workflows/mirror.yml/badge.svg)](https://github.com/wombelix/domain-mgmt/actions/workflows/mirror.yml)
[![Opentofu](https://github.com/wombelix/domain-mgmt/actions/workflows/opentofu.yml/badge.svg)](https://github.com/wombelix/domain-mgmt/actions/workflows/opentofu.yml)
<!-- markdownlint-enable MD013 -->

## Table of Contents

* [Usage](#usage)
* [Source](#source)
* [Contribute](#contribute)
* [License](#license)

## Usage

To interact with AWS (S3 Backend and KMS encryption), inwx and Cloudflare,
the following Environment variables have to be set:

```text
AWS_REGION
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
TF_VAR_aws_region
TF_VAR_aws_account_id
TF_VAR_aws_kms_name
TF_VAR_aws_s3_bucket
TF_VAR_project
INWX_USERNAME
INWX_PASSWORD
CLOUDFLARE_API_TOKEN
```

Variables with `TF_VAR_` prefix can also be defined
in a `terraform.tfvars` file instead, for example:

```hcl
project = "domain-mgmt"
```

To managed already existing domains, use
`tofu import module.<modulename>.inwx.inwx_domain <resourcename>`, example:
`tofu import module.wombacher_cc.inwx.inwx_domain wombacher.cc`

## Source

The primary location is:
[github.com/wombelix/domain-mgmt](https://github.com/wombelix/domain-mgmt)

Mirrors are available on
[Codeberg](https://codeberg.org/wombelix/domain-mgmt) and
[Gitlab](https://gitlab.com/wombelix/domain-mgmt).

## Contribute

Pick the platform you prefer and are most comfortable with.

Provide feedback, open an issue or create a pull / merge request.

## License

Unless otherwise stated: `Apache 2.0`

All files contain license information either as a
`header comment` or a `corresponding .license` file.

[REUSE](https://reuse.software) from the [FSFE](https://fsfe.org/)
is implemented to verify license and copyright compliance.
