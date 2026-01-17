-- =====================================
-- FRENOX HUB | MAIN SCRIPT (ENGLISH)
-- =====================================

setclipboard("https://discord.gg/f64xr79Bjy") 

local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Player = game.Players.LocalPlayer
local UserRole = (Player.Name == "Sevi" or Player.DisplayName == "Sevi") and "Owner" or "Member"

local Window = Rayfield:CreateWindow({
    Name = "Frenox Hub | Dark Purple Edition",
    LoadingTitle = "Frenox Hub",
    LoadingSubtitle = "by Sevi",
    ConfigurationSaving = { Enabled = true, FolderName = "FrenoxHub" },
    KeySystem = false,
    Theme = "DarkBlue" 
})

local ScriptDatabase = {
    ["blox fruit"] = "https://rawscripts.net/raw/Control-Blox-Fruits-OP-FREE-GUI-77953",
    ["bloxfruits"] = "https://rawscripts.net/raw/Control-Blox-Fruits-OP-FREE-GUI-77953",
    ["rivals"] = "https://pandadevelopment.net/virtual/file/7a283eed368e3a0a",
    ["prison life"] = "https://pandadevelopment.net/virtual/file/6da93390f1d0e855",
    ["prison"] = "https://pandadevelopment.net/virtual/file/6da93390f1d0e855",
    ["99 nights"] = "https://pandadevelopment.net/virtual/file/c2083e3e8d4191a1",
    ["brainrots"] = "https://pandadevelopment.net/virtual/file/9d4b201698940b94",
    ["ability wars"] = "https://pandadevelopment.net/virtual/file/aa106fb0c86a1774",
    ["breaking point"] = "https://pandadevelopment.net/virtual/file/6e2c36522811c74c",
    ["dead rails"] = "https://pandadevelopment.net/virtual/file/eb6df4fc8f44a359",
    ["lucky blocks"] = "https://pandadevelopment.net/virtual/file/968295c53b2eef02",
    ["soccer"] = "https://pandadevelopment.net/virtual/file/f693d55dfd64de46",
    ["ink game"] = "https://pandadevelopment.net/virtual/file/1b68260aff841f18",
    ["football"] = "https://pandadevelopment.net/virtual/file/e6b382cb81e0a96b",
    ["basket"] = "https://pandadevelopment.net/virtual/file/26d93498e838a05e",
    ["flick"] = "https://pandadevelopment.net/virtual/file/9155efd25504f72c",
    ["animal sim"] = "https://rawscripts.net/raw/MantisAnimal-Simulator-Toba-Hub-38777",
    ["iy"] = "https://raw.githubusercontent.com/DarkNetworks/Infinite-Yield/main/latest.lua",
    ["dex"] = "https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"
}

local HomeTab = Window:CreateTab("Home", "home")             
local SearchTab = Window:CreateTab("Script Search", "search") 
local UniversalTab = Window:CreateTab("Universal", "settings-2") 
local NightsTab = Window:CreateTab("99 Nights", "gamepad-2")      
local BrainrotsTab = Window:CreateTab("PvB Brainrots", "gamepad-2") 
local PrisonLifeTab = Window:CreateTab("Prison Life", "gamepad-2") 
local RivalsTab = Window:CreateTab("Rivals", "gamepad-2")         
local AbilityWarsTab = Window:CreateTab("Ability Wars", "gamepad-2") 
local BreakingPointTab = Window:CreateTab("Breaking Point", "gamepad-2") 
local DeadRailsTab = Window:CreateTab("Dead Rails", "gamepad-2")   
local LuckyBlocksTab = Window:CreateTab("Lucky Blocks", "gamepad-2") 
local SoccerTab = Window:CreateTab("Street Soccer", "gamepad-2")  
local InkGameTab = Window:CreateTab("Ink Game", "gamepad-2")      
local FootballTab = Window:CreateTab("Football Leg.", "gamepad-2") 
local BasketTab = Window:CreateTab("Basket Leg.", "gamepad-2")    
local FlickTab = Window:CreateTab("Flick", "gamepad-2")           
local AnimalSimTab = Window:CreateTab("Animal Sim", "gamepad-2")  
local BloxFruitsTab = Window:CreateTab("Blox Fruits", "gamepad-2") 
local SettingsTab = Window:CreateTab("Settings", "settings")   

HomeTab:CreateSection("User Dashboard")
HomeTab:CreateParagraph({Title = "Welcome User:", Content = Player.Name})
HomeTab:CreateParagraph({Title = "Status:", Content = "Rank [" .. UserRole .. "]"})
HomeTab:CreateSection("Official Credits")
HomeTab:CreateParagraph({Title = "Founder & Lead Developer", Content = "Sevi (@Sevi)"})
HomeTab:CreateButton({Name = "Copy Discord Link", Callback = function() setclipboard("https://discord.gg/f64xr79Bjy") end})

SearchTab:CreateSection("Smart Search & Executor")
local SearchQuery = ""
SearchTab:CreateInput({
   Name = "Search Script",
   PlaceholderText = "Search game name...",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text) SearchQuery = Text:lower() end,
})
SearchTab:CreateButton({
   Name = "Search & Run",
   Callback = function()
       if SearchQuery ~= "" then
           if SearchQuery:find("loadstring") or SearchQuery:find("http") then
               loadstring(SearchQuery)()
           elseif ScriptDatabase[SearchQuery] then
               loadstring(game:HttpGet(ScriptDatabase[SearchQuery]))()
               Rayfield:Notify({Title = "Frenox Hub", Content = "Running script for: " .. SearchQuery, Duration = 3})
           else
               Rayfield:Notify({Title = "Error", Content = "Game not found in database.", Duration = 3})
           end
       end
   end,
})

UniversalTab:CreateSection("Infinite Yield")
UniversalTab:CreateButton({Name = "Execute Infinite Yield", Callback = function() loadstring(game:HttpGet(ScriptDatabase["iy"]))() end})
UniversalTab:CreateSection("Dex Explorer")
UniversalTab:CreateButton({Name = "Execute Dex V3 Mobile", Callback = function() loadstring(game:HttpGet(ScriptDatabase["dex"]))() end})

NightsTab:CreateSection("99 Nights")
NightsTab:CreateButton({Name = "Execute Flash Hub", Callback = function() loadstring(game:HttpGet(ScriptDatabase["99 nights"]))() end})

BrainrotsTab:CreateSection("PvB Brainrots")
BrainrotsTab:CreateButton({Name = "Execute Flash Hub", Callback = function() loadstring(game:HttpGet(ScriptDatabase["brainrots"]))() end})

PrisonLifeTab:CreateSection("Flash Hub Prison")
PrisonLifeTab:CreateButton({Name = "Execute Flash Hub", Callback = function() loadstring(game:HttpGet(ScriptDatabase["prison life"]))() end})
PrisonLifeTab:CreateSection("Xeno Prison")
PrisonLifeTab:CreateButton({Name = "Execute Xeno (XENO ONLY)", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/scripture2025/Checker/refs/heads/main/XenoPrison"))() end})

RivalsTab:CreateSection("Rivals")
RivalsTab:CreateButton({Name = "Execute Flash Hub", Callback = function() loadstring(game:HttpGet(ScriptDatabase["rivals"]))() end})

AbilityWarsTab:CreateSection("Ability Wars")
AbilityWarsTab:CreateButton({Name = "Execute Flash Hub", Callback = function() loadstring(game:HttpGet(ScriptDatabase["ability wars"]))() end})

BreakingPointTab:CreateSection("Breaking Point")
BreakingPointTab:CreateButton({Name = "Execute Flash Hub", Callback = function() loadstring(game:HttpGet(ScriptDatabase["breaking point"]))() end})

DeadRailsTab:CreateSection("Dead Rails")
DeadRailsTab:CreateButton({Name = "Execute Flash Hub", Callback = function() loadstring(game:HttpGet(ScriptDatabase["dead rails"]))() end})

LuckyBlocksTab:CreateSection("Lucky Blocks")
LuckyBlocksTab:CreateButton({Name = "Execute Flash Hub", Callback = function() loadstring(game:HttpGet(ScriptDatabase["lucky blocks"]))() end})

SoccerTab:CreateSection("Street Soccer")
SoccerTab:CreateButton({Name = "Execute Flash Hub", Callback = function() loadstring(game:HttpGet(ScriptDatabase["soccer"]))() end})

InkGameTab:CreateSection("Ink Game")
InkGameTab:CreateButton({Name = "Execute Flash Hub", Callback = function() loadstring(game:HttpGet(ScriptDatabase["ink game"]))() end})

FootballTab:CreateSection("Football Legends")
FootballTab:CreateButton({Name = "Execute Flash Hub", Callback = function() loadstring(game:HttpGet(ScriptDatabase["football"]))() end})

BasketTab:CreateSection("Basket Legends")
BasketTab:CreateButton({Name = "Execute Flash Hub", Callback = function() loadstring(game:HttpGet(ScriptDatabase["basket"]))() end})

FlickTab:CreateSection("Flick")
FlickTab:CreateButton({Name = "Execute Flash Hub", Callback = function() loadstring(game:HttpGet(ScriptDatabase["flick"]))() end})

AnimalSimTab:CreateSection("Animal Simulator")
AnimalSimTab:CreateButton({Name = "Execute Toba Hub", Callback = function() loadstring(game:HttpGet(ScriptDatabase["animal sim"]))() end})

BloxFruitsTab:CreateSection("Blox Fruits")
BloxFruitsTab:CreateButton({Name = "Execute Control Hub", Callback = function() loadstring(game:HttpGet(ScriptDatabase["blox fruit"]))() end})

SettingsTab:CreateSection("Configuration")
SettingsTab:CreateButton({Name = "Destroy Hub", Callback = function() Rayfield:Destroy() end})

Rayfield:Notify({Title = "Frenox Hub", Content = "Professional Hub Loaded!", Duration = 5})
