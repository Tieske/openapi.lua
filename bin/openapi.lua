#!/usr/bin/env lua

--- CLI application.
-- Description goes here.
-- @script openapi
-- @usage
-- # start the application from a shell
-- openapi --some --options=here

print("Welcome to the openapi CLI, echoing arguments:")
for i, val in ipairs(arg) do
  print(i .. ":", val)
end
