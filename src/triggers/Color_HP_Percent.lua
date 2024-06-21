-- Change the Color Values Here to what you want
local percentages = {
  percent80 = "<green>",
  percent50 = "<yellow>",
  percent30 = "<orange_red>",
  percent0  = "<red>"
}

-- Change the below if you know what you're doing.😁
local function ColorPercent(number)
  local result = ""

  if number > 80 then
    result = percentages.percent80 .. tostring(number) .. "<reset>"
  elseif number > 50 then
    result = percentages.percent50.. tostring(number) .. "<reset>"
  elseif number > 30 then
    result = percentages.percent30 .. tostring(number) .. "<reset>"
  else
    result = percentages.percent0 .. number .. "<reset>"
  end

  return result
end

local hp = tonumber(matches[2])
local max_hp = tonumber(matches[3])
local per_hp = tonumber(matches[4])
local sp = tonumber(matches[5])
local max_sp = tonumber(matches[6])
local per_sp = tonumber(matches[7])
local ep = tonumber(matches[8])
local max_ep = tonumber(matches[9])
local per_ep = tonumber(matches[10])

-- Get rid of the text that came in, we will be rewriting it
deleteLine()

local Hpbar = "HP: [ " .. hp .. "/" .. max_hp .. " " .. ColorPercent(per_hp) .. "% ]"
local Spbar = "SP: [ " .. sp .. "/" .. max_sp .. " " .. ColorPercent(per_sp) .. "% ]"
local Epbar = "EP: [ " .. ep .. "/" .. max_ep .. " " .. ColorPercent(per_ep) .. "% ]"

cecho("\n" .. Hpbar .. " " .. Spbar .. " " .. Epbar .. "\n")
