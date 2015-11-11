#!/bin/bash

# Install .Net Core Execution environment (DNX).
mozroots --import --sync
touch /home/user/.bash_profile
curl -sSL https://raw.githubusercontent.com/aspnet/Home/dev/dnvminstall.sh | DNX_BRANCH=dev bash
source ~/.dnx/dnvm/dnvm.sh
dnvm upgrade -u
dnvm install -r coreclr latest -u
