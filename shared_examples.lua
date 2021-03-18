-- 1. is* functions

local PLAYER = FindMetaTable("Player") -- https://wiki.facepunch.com/gmod/Meta_Tables
local ENTITY = FindMetaTable("Entity")
local NPC = FindMetaTable("NPC")
local NEXTBOT = FindMetaTable("NextBot")

function isplayer(object)
    return getmetatable(object) == PLAYER
end

function isentity(object)
    return getmetatable(object) == ENTITY
end

function isnpc(object)
    return getmetatable(object) == NPC
end

function isnextbot(object)
    return getmetatable(object) == NEXTBOT
end

-- 2. Notifications

if SERVER then
    util.AddNetworkString("usefulglua.Notify")
    function notifyPlayer(recipients, message, type, duration)
        net.Start("usefulglua.Notify")
        net.WriteString(message)
        net.WriteUInt(type,4)
        net.WriteUInt(duration,4)
        net.Send(recipients)
    end
else
    net.Receive("usefulglua.Notify", function()
        local message = net.ReadString()
        local type = net.ReadUInt(4)
        local duration = net.ReadUInt(4)
        notification.AddLegacy(message, type, duration )
    end)
end

