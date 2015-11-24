#!/bin/bash
set -x
set -eo pipefail

source /VERSIONS

# Install .Net Core Execution environment (DNX).
mozroots --import --sync
touch /home/user/.bash_profile
curl -sSL https://raw.githubusercontent.com/aspnet/Home/${INSTALLER_VER}/dnvminstall.sh | bash
source ~/.dnx/dnvm/dnvm.sh
dnvm upgrade -u
dnvm install -r coreclr ${CORECLR_VER}
