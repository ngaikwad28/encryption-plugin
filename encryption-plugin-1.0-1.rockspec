-- encryption-plugin-1.0-1.rockspec
package = "encryption-plugin"
version = "1.0-1"
source = {
  url = "git://github.com/yourusername/encryption-plugin.git",
  branch = "main",
}
description = {
  summary = "A Kong plugin for encryption and decryption",
  detailed = "This plugin provides encryption and decryption functionality using AES-256-CBC.",
  homepage = "http://yourwebsite.com",
}
dependencies = {
  "lua-resty-ssl", -- Replace with actual dependencies if needed
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.encryption-plugin.handler"] = "handler.lua",
    ["kong.plugins.encryption-plugin.schema"] = "schema.lua",
  },
}


