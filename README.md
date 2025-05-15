# Introduction
This is a bash script to automate running Open WebUI on Linux systems with Cloudflare via Docker. The script currently works on Debian 12 with an AMD Radeon 7900XTX -- YMMV with other setups.

# Setup
1. Clone the repo
2. Rename `exampleenv` to `.env` and set the variables to your own Cloudflare token and local IP address.
3. If using an NVIDIA GPU, make the necessary changes to `run.sh`
4. Navigate to the folder in terminal and run `chmod +x run.sh`
5. Enter `/.run.sh`
6. Optional: delete the .git
