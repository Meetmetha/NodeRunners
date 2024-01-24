# NodeRunner - Run Web3 Nodes and Validators

This are just shell scripts to help you automate package installations so you dont have to type individual commands and execute after connecting to VPS

### Steps

1. **Shardeum**
   - wget https://raw.githubusercontent.com/Meetmetha/NodeRunners/main/shardeum.sh && sudo bash shardeum.sh
   - (Type "Y" when asked for questions and Enter when asked for anything else it will use default)
   - (Enter your password when asked for accessing Dashboard)
   - (Open port 8080 as per your VPC provider settings)
2. **Avail**
   - sudo apt install screen && screen -S availscreen
   - wget https://raw.githubusercontent.com/Meetmetha/NodeRunners/main/avail.sh && sudo bash avail.sh
   - (Press Enter when ask for config we will use default)
   - Once you see node running detach from screen by pressing "Ctrl A and then Ctrl D"
3. **BEVM**
   - sudo apt install screen && screen -S bevm
   - wget https://raw.githubusercontent.com/Meetmetha/NodeRunners/main/bevm.sh && sudo bash bevm.sh --address=0x0000YourWalletAddress0000
   - (While copying above command make sure you add your address next to --address=)
   - Once you see node running detach from screen by pressing "Ctrl A and then Ctrl D"

Send me request for any more nodes will add them here 🚀



