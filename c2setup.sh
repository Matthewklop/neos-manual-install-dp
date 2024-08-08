#!/usr/bin/bash

set -e

# Default GitHub owner and branch for dragonpilot
# Originally, this was set to "commaai" for the GitHub owner and "release2" for the branch.
# Changed to "dragonpilot-community" as the owner and "r2" as the branch to point to the DragonPilot repository.
DEFAULT_GITHUB_OWNER="dragonpilot-community"
DEFAULT_GITHUB_BRANCH="r2"

# Navigate to the /data directory
# This is the same as the original script. No changes were needed here.
cd /data

# Remove any existing openpilot directory
# Originally, this line removed any existing "openpilot" directory to prepare for a fresh clone.
# No changes were needed here as this is still necessary.
rm -rf openpilot

# Clone the dragonpilot repository using the provided or default owner and branch
# The original script cloned the "commaai/openpilot" repository.
# Changed to clone "dragonpilot-community/dragonpilot" instead.
time git clone https://github.com/${1:-$DEFAULT_GITHUB_OWNER}/dragonpilot.git openpilot -b ${2:-$DEFAULT_GITHUB_BRANCH} --recurse-submodules --depth 1

# Navigate to the Termux files directory
# This is the same as the original script, used to create a continuation script for later execution.
cd /data/data/com.termux/files

# Create a script to continue the setup
# The original script created a "continue.sh" file to restart the setup after a reboot.
# No changes were made here as the functionality remains the same.
echo $'#!/usr/bin/bash\n\ncd /data/openpilot\n./launch_openpilot.sh\n' > continue.sh
chmod +x continue.sh

# Notify the user and reboot the system
# This section is the same as the original script, prompting a reboot after installation.
echo "Install complete, rebooting..."
reboot
