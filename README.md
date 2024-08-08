DragonPilot Installation Guide

This guide provides step-by-step instructions for installing DragonPilot (Release 2) on your EON/C2 device.
Basic Usage
Step 1: Connect to Wi-Fi

    Connect your device to Wi-Fi as you normally would.

Step 2: Get the IP Address

    Navigate to your device settings.
    Go to "More Options."
    Tap the triple-dot icon in the upper right corner and select "Advanced."
    Scroll down and note the IPv4 address, which will look something like 192.168.0.xxx.

Step 3: Download the NEOS Default/Setup SSH Key

    Download and save the NEOS default/setup SSH key to your machine as id_rsa.
        Note: This is different from any GitHub SSH key you may have.

Step 4: Connect to Your EON/C2

    Use the saved SSH key to connect to your EON/C2.

    Open a terminal and run the following command, replacing [pathname of saved id_rsa] with the path to your downloaded key and [your-c2-ip-address] with the IP address noted earlier:

    bash

    ssh -i [pathname of saved id_rsa] comma@[your-c2-ip-address]

        Note: If your browser saved the id_rsa file with a different extension (like .txt or .pem), you may need to adjust the file name accordingly.

Step 5: Install DragonPilot

    Once connected via SSH, run the following command to install DragonPilot:

    bash

    curl -Ls https://tinyurl.com/bdcsdjst | bash -s

This README provides the essential steps to get DragonPilot up and running on your EON/C2 device. If you encounter any issues or have questions, feel free to reach out to the community for support.
