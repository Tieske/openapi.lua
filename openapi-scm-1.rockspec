local package_name = "openapi"
local package_version = "scm"
local rockspec_revision = "1"
local github_account_name = "Tieske"
local github_repo_name = "openapi.lua"


package = package_name
version = package_version.."-"..rockspec_revision

source = {
  url = "git+https://github.com/"..github_account_name.."/"..github_repo_name..".git",
  branch = (package_version == "scm") and "main" or nil,
  tag = (package_version ~= "scm") and package_version or nil,
}

description = {
  summary = "Generate Lua functions to call OpenAPI operations",
  detailed = [[
    Generate Lua functions to call OpenAPI operations
  ]],
  license = "MIT",
  homepage = "https://github.com/"..github_account_name.."/"..github_repo_name,
}

dependencies = {
  "lua >= 5.1, < 5.5",
}

build = {
  type = "builtin",

  modules = {
    ["openapi.init"] = "src/openapi/init.lua",
  },

  install = {
    bin = {
      ["openapi"] = "bin/openapi.lua",
    }
  },

  copy_directories = {
    -- can be accessed by `luarocks openapi doc` from the commandline
    "docs",
  },
}
