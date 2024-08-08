Basic Usage

Installing DragonPilot (Release 2):

    Connect to Wi-Fi:
        Connect your device to Wi-Fi as you normally would.

    Get the IP Address:
        Navigate to the device settings.
        Go to "More Options."
        Tap the triple-dot icon in the upper right corner and select "Advanced."
        Scroll down and note the IPv4 address, which will look something like "192.168.0.xxx."

    Download the NEOS Default/Setup SSH Key:
        Download and save the NEOS default/setup SSH key to your machine as id_rsa.
        Note: This is different from any GitHub SSH key you may have.

    Connect to Your EON/C2:
        Use the saved SSH key to connect to your EON/C2.
        Command line:

        bash

    ssh -i [pathname of saved id_rsa] comma@[your-c2-ip-address]

    Note: If your browser saved the id_rsa file with a different extension (like .txt or .pem), you may need to adjust the file name accordingly.

Install DragonPilot:

    Once connected, paste the following command into your SSH session:

    bash

curl -Ls https://tinyurl.com/bdcsdjst | bash -s
