-- Change the Color Values Here to what you want
local percentages = {
  percent90 = "<green>",
  percent75 = "<yellow_green>",
  percent50 = "<yellow>",
  percent25 = "<orange_red>",
  percent0  = "<brown>"
}

-- Change the below if you know what you're doing. 😁
local function ColorPercent(number)
  local result = ""

  if number >= 90 then
    result = percentages.percent90 .. tostring(number) .. "<reset>"
  elseif number >= 75 then
    result = percentages.percent75 .. tostring(number) .. "<reset>"
  elseif number >= 50 then
    result = percentages.percent50 .. tostring(number) .. "<reset>"
  elseif number >= 25 then
    result = percentages.percent25 .. tostring(number) .. "<reset>"
  else
    result = percentages.percent0 .. tostring(number) .. "<reset>"
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
