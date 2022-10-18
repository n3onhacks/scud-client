# Scud: Disposable Chat - Client

Scud (DISPOSABLE CHAT) is an exploding encrypted chat - from the TERMINAL.

Designed for temp servers that are spun up either for internal comms or from a front facing temp server.

FROM NOTHING TO FULL CHAT INFRASTRUCTURE IN 30 SECONDS. EXPLODES 30 MINS AFTER SERVER LAUNCH.

Note: make sure you have openssl (apt install openssl) and sshpass (apt install sshpass) on your systems.

The server will produce an Agent file for those who want to chat off the server using it for uploads/downloads via SSH.

HOW TO USE:

1) Make sure you have openssl and sshpass installed.
2) The person who is running the server will provide you a LINK and Password.
3) 'git commit https://github.com/n3onhacks/scud-client.git'
4) Make sure the file from the LINK (agent.txt) is placed into the same folder as scud.sh
5) Chmod 777 the folder, run scud ( ./scud.sh ) and follow prompts.

<h2>Release:</h2>
Version 1.0 - BETA
- This is a POC, unstable version and is not encrypted fully yet. Unencrypted chat files will hit the server until it's wiped out after 30mins from launch. Once we are out of Beta with a stable version it will be full end-to-end encryption.
