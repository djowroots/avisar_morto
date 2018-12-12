--[[made by djow
rainbow function by ash--]]
local function RGBRainbow( frequency )
	local result = {}
	local curtime = GetGameTimer() / 1000

	result.r = math.floor( math.sin( curtime * frequency + 0 ) * 127 + 128 )
	result.g = math.floor( math.sin( curtime * frequency + 2 ) * 127 + 128 )
	result.b = math.floor( math.sin( curtime * frequency + 4 ) * 127 + 128 )
	
	return result
end

--natives/#_0x28477EC23D892089
CreateThread(function()
	while true do

		Wait(0)

		local pedCoords = GetEntityCoords(PlayerPedId())
		local rainbow = RGBRainbow( 1 )
		local closestPlayerPed = GetPlayerPed(closestPlayer)

		if IsPedDeadOrDying(closestPlayerPed, 1) then
		DrawMarker(3, pedCoords.x, pedCoords.y, pedCoords.z, 0.0, 0.0, 0.0, 5.0, 180.0, 0.0, 0.3, 0.3, 0.3, rainbow.r, rainbow.g, rainbow.b, 100, false, false, 2, true, nil, false)
		DrawMarker(6, pedCoords.x, pedCoords.y, pedCoords.z, 0.0, 0.0, 0.0, 5.0, 180.0, 0.0, 0.5, 0.5, 0.5, rainbow.r, rainbow.g, rainbow.b, 100, false, false, 2, true, nil, false)
		end
	end
end)

