# AWS CLI

## Overview

Amazon Web Services offers reliable, scalable, and inexpensive cloud computing services. You probably already knew this. Well, their administrative console is something of a hot mess and it also requires *manual* activity. I hate manual activity. I want to automate everything so use of the CLI is inevitably more efficient.

### Installation

[macOS Installation Instructions](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-mac.html#cliv2-mac-install-cmd)

## S3

Useful commands include:

**List all buckets**

```bash
aws s3 ls
```

**Sync remote contents to local**

```bash
aws s3 sync s3://BUCKET/PATH /LOCAL/PATH
```

**Delete a bucket**

```bash
aws s3 rb s3://BUCKET --force
```

The `--force` flag will delete the bucket even if it is not empty.
