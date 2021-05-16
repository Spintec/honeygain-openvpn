# honeygain-openvpn

# Description: 

The purpose of this repository is to create an openvpn connection from within the honeygain docker container on a linux machine.

# Requirements: 

- docker;
- docker-compose;
- openvpn;

# How to use: 

1. The OpenVPN file should be placed in the same directory, and should be renamed to config.ovpn.
2. Edit docker-compose.yml file with your credentials. Variables to be edited :
   - OPENVPN_USER;
   - OPENVPN_PASS;
   - replace your_email@gmail.com and your_password with the honeygain credentials.

3. Run the following command from bash cli within the folder that contains  docker-compose.yml: ```docker-compose up --build```

Note: In case you get the error "API Error: Network Unusable", it is because honeygain does not support Data Center (DCH) and Reserved (RSV) IP types as stated here: 
https://honeygain.zendesk.com/hc/en-us/articles/360011078760-Error-Unusable-network.

Special thanks to user kiwimato!
