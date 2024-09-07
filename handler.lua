-- handler.lua
local BasePlugin = require "kong.plugins.base_plugin"
local openssl = require "openssl" -- Ensure you have the required OpenSSL library for Lua

local EncryptionPlugin = BasePlugin:extend()

function EncryptionPlugin:new()
  EncryptionPlugin.super.new(self, "encryption-plugin")
end

function EncryptionPlugin:access(conf)
  EncryptionPlugin.super.access(self)

  local req_body = kong.request.get_body()
  
  if conf.operation == "encrypt" then
    -- Encryption logic
    local cipher = openssl.cipher.get("aes-256-cbc")
    local encrypted_data = cipher:encrypt(conf.key, req_body)
    kong.service.request.set_body(encrypted_data)
  elseif conf.operation == "decrypt" then
    -- Decryption logic
    local cipher = openssl.cipher.get("aes-256-cbc")
    local decrypted_data = cipher:decrypt(conf.key, req_body)
    kong.service.request.set_body(decrypted_data)
  end
end

return EncryptionPlugin
