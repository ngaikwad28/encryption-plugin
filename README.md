# my-plugin 


# Encryption Plugin for Kong

## Overview

The `encryption-plugin` for Kong Gateway provides encryption and decryption functionalities for requests and responses using AES-256-CBC.

## Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/yourusername/encryption-plugin.git
   cd encryption-plugin
==========================================================================================

#enable plugin to service  
curl -X POST http://localhost:8001/services/demo/plugins \
  --data "name=encryption-plugin" \
  --data "config.key=7f3e68e2db5f8b38c9d2e8f12a7e5c9c6f2a7c1a54f8a05b48d8d3f5a7e8a7c5" \
  --data "config.operation=encrypt"

=========================================================================================
### 2. Install and Enable the Plugin

1. **Install the Plugin**

   If you have LuaRocks installed, navigate to the plugin directory and run:

   ```bash
   luarocks make encryption-plugin-1.0-1.rockspec


============================================
To allow ip open on putty application connection
apt install net-tools
netstat -ntpl
apt install openssh-server





