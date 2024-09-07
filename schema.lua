-- schema.lua
return {
  name = "encryption-plugin",
  fields = {
    { config = {
        type = "record",
        fields = {
          { key = { type = "string", required = true, default = "" } },
          { operation = { type = "string", required = true, one_of = { "encrypt", "decrypt" } } },
        },
      },
    },
  },
}
