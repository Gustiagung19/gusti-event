-- Register Events Server

ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('gusti-event:validateclaim')
AddEventHandler('gusti-event:validateclaim', function()	
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local job = xPlayer.job.name
    local grade = xPlayer.job.grade
    local identifier = GetPlayerIdentifiers(_source)[1]
    local daytoday = os.date("%d")
    MySQL.Sync.execute("UPDATE users SET event=@today WHERE identifier=@identifier", {['@identifier'] = identifier, ['@today'] = daytoday})
    MySQL.Async.fetchAll('SELECT event FROM users WHERE identifier = @identifier', {['@identifier'] = identifier}, function(result)
        _claimed = result[1].event
        _daytoday = daytoday
    TriggerClientEvent("gusti-event:Return", _source, _claimed, _daytoday)
    end)
    if daytoday == "01" then 
        xPlayer.addInventoryItem("bread",1)
    elseif daytoday == "02" then
        xPlayer.addInventoryItem("bread",2)
    elseif daytoday == "03" then
        xPlayer.addInventoryItem("bread",3)
    elseif daytoday == "04" then
        xPlayer.addInventoryItem("bread",4)
    elseif daytoday == "05" then
        xPlayer.addInventoryItem("bread",5)
    elseif daytoday == "06" then
        xPlayer.addInventoryItem("bread",6)
    elseif daytoday == "07" then
        xPlayer.addInventoryItem("bread",7)
    elseif daytoday == "08" then
        xPlayer.addInventoryItem("bread",8)
    elseif daytoday == "09" then
        xPlayer.addInventoryItem("bread",9)
    elseif daytoday == "10" then
        xPlayer.addInventoryItem("bread",10)
    elseif daytoday == "11" then
        xPlayer.addInventoryItem("bread",11)
    elseif daytoday == "12" then
        xPlayer.addInventoryItem("bread",12)
    elseif daytoday == "13" then
        xPlayer.addInventoryItem("bread",13)
    elseif daytoday == "14" then
        xPlayer.addInventoryItem("bread",14)
    elseif daytoday == "15" then
        xPlayer.addInventoryItem("bread",15)
    elseif daytoday == "16" then
        xPlayer.addInventoryItem("bread",16)
    elseif daytoday == "17" then
        xPlayer.addInventoryItem("bread",17)
    elseif daytoday == "18" then
        xPlayer.addInventoryItem("bread",18)
    elseif daytoday == "19" then
        xPlayer.addInventoryItem("bread",19)
    elseif daytoday == "20" then
        xPlayer.addInventoryItem("bread",20)
    elseif daytoday == "21" then
        xPlayer.addInventoryItem("bread",21)
    elseif daytoday == "22" then
        xPlayer.addInventoryItem("bread",22)
    elseif daytoday == "23" then
        xPlayer.addInventoryItem("bread",23)
    elseif daytoday == "24" then
        xPlayer.addInventoryItem("bread",24)
    end
end)

RegisterServerEvent('gusti-event')
AddEventHandler('gusti-event', function()
    local _source = source
	local identifier = GetPlayerIdentifiers(_source)[1]
    local daytoday = os.date("%d")
    MySQL.ready(function ()
		MySQL.Async.fetchAll('SELECT event FROM users WHERE identifier = @identifier', {['@identifier'] = identifier}, function(result)
            _claimed = result[1].event
            _daytoday = daytoday
		TriggerClientEvent("gusti-event:Return", _source, _claimed, _daytoday)
		end)
    end)
end)

--[[ Version Checker ]]--
local version = "1.0.0"

if Config.CheckForUpdates then
    AddEventHandler("onResourceStart", function(resource)
        if resource == GetCurrentResourceName() then
            CheckFrameworkVersion()
        end
    end)
end

function CheckFrameworkVersion()
    PerformHttpRequest("https://raw.githubusercontent.com/Gustiagung19/gusti-event/master/version.txt", function(err, text, headers)
        if string.match(text, version) then
            print(" ")
            print("--------- ^4GUSTI EVENT VERSION^7 ---------")
            print("gusti-event ^2is up to date^7 and ready to go!")
            print("Running on Version: ^2" .. version .."^7")
            print("^4https://github.com/Gustiagung19/gusti-event^7")
            print("-------------------------------------------")
            print(" ")
        else
          print(" ")
          print("--------- ^4GUSTI EVENT VERSION^7 ---------")
          print("gusti-event ^1is not up to date!^7 Please update!")
          print("Curent Version: ^1" .. version .. "^7 Latest Version: ^2" .. text .."^7")
          print("^4https://github.com/Gustiagung19/gusti-event^7")
          print("-------------------------------------------")
          print(" ")
        end

    end, "GET", "", {})

end