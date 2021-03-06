
----------------------------------------------------------------
-- global variables
----------------------------------------------------------------
local versionNumber = "v1.2"
local delay = 15
local endTime
local mx,my

----------------------------------------------------------------
-- speedups
----------------------------------------------------------------
local DiffTimers = Spring.DiffTimers
local GetTimer = Spring.GetTimer
local SendCommands = Spring.SendCommands
local Echo = Spring.Echo
local GetMouseState = Spring.GetMouseState

----------------------------------------------------------------
-- callins
----------------------------------------------------------------

function widget:GetInfo()
  return {
    name      = "Autoquit",
    desc      = versionNumber .. " Automatically quits "..delay.."s after the game ends. Move mouse to postpone.",
    author    = "Evil4Zerggin & zwzsg",
    date      = "25 December 2008",
    license   = "GNU LGPL, v2.1 or later",
    layer     = 0,
    enabled   = true  --  loaded by default?
  }
end

function widget:Initialize()
  endTime = false
end

function widget:GameOver()
  endTime = GetTimer()
  mx,my = GetMouseState()
  Echo("<autoquit> Automatically exiting in " .. delay .. " seconds since last mouse movement")
end

function widget:Update(dt)
  CurrTimer = DiffTimers(GetTimer(), endTime)
  if endTime then
    local nmx,nmy = GetMouseState()
    if nmx~=mx or nmy~=my then
      --Echo("<autoquit> Autoquit canceled.")
      --endTime = false
      endTime = GetTimer()   -- set new endtime, because I've had times that game was running for ages because i wasnt attending pc but somehow it detect a move
      mx,my = GetMouseState()
      -- widgetHandler:RemoveWidget(self)
    elseif DiffTimers(GetTimer(), endTime) > delay then
      Echo("<autoquit> Autoquit sending quit command.")
      SendCommands("quitforce")
    end
  end
end
