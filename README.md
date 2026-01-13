<!--
SPDX-FileCopyrightText: 2026 Dominik Wombacher <dominik@wombacher.cc>

SPDX-License-Identifier: Apache-2.0
-->

# Domain management

OpenTofu based management of my Domains on inwx.
The majority of DNS records are handled outside this repo.

[![REUSE status](https://api.reuse.software/badge/git.sr.ht/~wombelix/domain-mgmt)](https://api.reuse.software/info/git.sr.ht/~wombelix/domain-mgmt)
[![builds.sr.ht status](https://builds.sr.ht/~wombelix/domain-mgmt.svg)](https://builds.sr.ht/~wombelix/domain-mgmt?)

## Table of Contents

* [Usage](#usage)
* [Source](#source)
* [Contribute](#contribute)
* [License](#license)

## Usage

To interact with AWS (S3 Backend and KMS encryption) and inwx,
the following Environment variables have to be set:

```
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
```

Variables with `TF_VAR_` prefix can also be defined
in a `terraform.tfvars` file instead, for example:

```
project = "domain-mgmt"
```

To managed already existing domains, use
`tofu import module.<modulename>.inwx.inwx_domain <resourcename>`, example:
`tofu import module.wombacher_cc.inwx.inwx_domain wombacher.cc`

## Source

The primary location is:
[git.sr.ht/~wombelix/domain-mgmt](https://git.sr.ht/~wombelix/domain-mgmt)

Mirrors are available on
[Codeberg](https://codeberg.org/wombelix/domain-mgmt),
[Gitlab](https://gitlab.com/wombelix/domain-mgmt)
and
[GitHub](https://github.com/wombelix/domain-mgmt).

## Contribute

Please don't hesitate to provide feedback,
open an issue, or create a Pull / Merge Request.

Just pick the workflow or platform you prefer and are most comfortable with.

Feedback, bug reports, or patches sent to my sr.ht list
[~wombelix/inbox@lists.sr.ht](https://lists.sr.ht/~wombelix/inbox) or via
[Email and Instant Messaging](https://dominik.wombacher.cc/pages/contact.html)
are also always welcome.

## License

Unless otherwise stated: `Apache 2.0`

All files contain license information either as a
`header comment` or a `corresponding .license` file.

[REUSE](https://reuse.software) from the [FSFE](https://fsfe.org/)
is implemented to verify license and copyright compliance.
