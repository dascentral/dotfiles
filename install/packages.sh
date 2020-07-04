#!/usr/bin/env bash

# AWS CLI
# Source: https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-mac.html#cliv2-mac-install-cmd
name="AWS Command Line Interface"
check="/usr/local/bin/aws"
if [ ! -e "$check" ]; then
    curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
    sudo installer -pkg ./AWSCLIV2.pkg -target /
fi
