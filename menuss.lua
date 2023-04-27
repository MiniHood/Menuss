--- MenuV Menu
---@type Menu
local menu = MenuV:CreateMenu(false, 'Welcome to Coastal Life', 'topleft', 255, 0, 0, 'size-125', 'default', 'menuv', 'example_namespace')
local playeroptionsMenu = MenuV:CreateMenu('Player Options', 'Customize yourself.', 'topleft', 255, 0, 0)
local vehicleoptionsMenu = MenuV:CreateMenu('Vehicle Options', 'Customize your vehicle.', 'topleft', 255, 0, 0)
local teleportoptionsMenu = MenuV:CreateMenu('Teleport Options', 'Teleport yourself, or others?', 'topleft', 255, 0, 0)
local weaponoptionsMenu = MenuV:CreateMenu('Weapon Options', 'Turn your handgun into an rpg.', 'topleft', 255, 0, 0)
local weatheroptionsMenu = MenuV:CreateMenu('Weather Options', 'I don\'t like the rain either don\'t worry.', 'topleft', 255, 0, 0)
local timeoptionsMenu = MenuV:CreateMenu('Time Options', 'Too dark? Ya scared?', 'topleft', 255, 0, 0)
local objectspoonerMenu = MenuV:CreateMenu('Object Spooner', 'Spoon an object? Bit weird...', 'topleft', 255, 0, 0)
local superheroMenu = MenuV:CreateMenu('Super Hero', 'Bitchman to the rescue!', 'topleft', 255, 0, 0)
local miscoptionsMenu = MenuV:CreateMenu('Misc Options', 'How do I spell miscilinios?', 'topleft', 255, 0, 0)
local settingsMenu = MenuV:CreateMenu('Settings', 'Set your tings.', 'topleft', 255, 0, 0)

-- Menu Button
local menu_button = menu:AddButton({ icon = '😃', label = 'Player Options', value = playeroptionsMenu, description = 'Customize yourself.' })
local menu_button = menu:AddButton({ icon = '😃', label = 'Vehicle Options', value = vehicleoptionsMenu, description = 'Customize your vehicle.' })
local menu_button = menu:AddButton({ icon = '😃', label = 'Teleport Options', value = teleportoptionsMenu, description = 'Teleport yourself, or others?' })
local menu_button = menu:AddButton({ icon = '😃', label = 'Weapon Options', value = weaponoptionsMenu, description = 'Turn your handgun into an rpg.' })
local menu_button = menu:AddButton({ icon = '😃', label = 'Weather Options', value = weatheroptionsMenu, description = 'I don\'t like the rain either don\'t worry.' })
local menu_button = menu:AddButton({ icon = '😃', label = 'Time Options', value = timeoptionsMenu, description = 'Too dark? Ya scared?' })
local menu_button = menu:AddButton({ icon = '😃', label = 'Object Spooner', value = objectspoonerMenu, description = 'Spoon an object? Bit weird...' })
local menu_button = menu:AddButton({ icon = '😃', label = 'Super Hero', value = superheroMenu, description = 'Become a superhero or something.' })
local menu_button = menu:AddButton({ icon = '😃', label = 'Misc Options', value = miscoptionsMenu, description = 'How do I spell miscilinios?' })
local menu_button = menu:AddButton({ icon = '😃', label = 'Settings', value = settingsMenu, description = 'Set your tings.' })

-- Global Locals?
local ped = PlayerPedId()

-- Player Options Menus
local TriggerFXMenu = CreateMenu('TriggerFX', '.', 'topleft', 255, 0, 0)
local CloningOptions = CreateMenu('Cloning Options', '.', 'topleft', 255, 0, 0)

-- Player Option Check Box
local Invisibility = playeroptionsMenu:AddCheckbox({ icon = '💡', label = 'Invisibility', value = 'n' })
local AutoClean = playeroptionsMenu:AddCheckbox({ icon = '💡', label = 'Auto Clean', value = 'n' })
local WalkUnderwater = playeroptionsMenu:AddCheckbox({ icon = '💡', label = 'Walk Underwater', value = 'n' })
local Forcefield = playeroptionsMenu:AddCheckbox({ icon = '💡', label = 'Force Field', disabled = true, value = 'n' })
local BurnMode = playeroptionsMenu:AddCheckbox({ icon = '💡', label = 'Burn Mode', value = 'n' })
local Drunk = playeroptionsMenu:AddCheckbox({ icon = '💡', label = 'Drunk', value = 'n' })
local Seatbelt = playeroptionsMenu:AddCheckbox({ icon = '💡', label = 'Seatbelt', value = 'n' })
local Invincibility = playeroptionsMenu:AddCheckbox({ icon = '💡', label = 'Invincibility', value = 'n' })
local NoRagdoll = playeroptionsMenu:AddCheckbox({ icon = '💡', label = 'No Ragdoll', value = 'n' })

-- Player Option Range
local WalkRunSpeed = playeroptionsMenu:AddRange({ icon = '⚽', label = 'Walk & Run Speed', min = 1, max = 1000, value = 1, saveOnUpdate = true })
local SwimSpeed = playeroptionsMenu:AddRange({ icon = '⚽', label = 'Swim Speed', min = 1, max = 1000, value = 1, saveOnUpdate = true })

-- Player Option Buttons
local menu_button = playeroptionsMenu:AddButton({ icon = '😃', label = 'Cloning Options', value = CloningOptions, description = '.' })

-- Player Option Check Box Bools
local InvisibleToggle = false
local InvincibleToggle = false
local AutoCleanToggle = false
local WalkUnderwaterToggle = false
local ForcefieldToggle = false
local BurnModeToggle = false
local DrunkToggle = false
local SeatbeltToggle = false
local NoRagdollToggle = false
local RPGToggle = false
local GunsToggle = false
local FireworkToggle = false
local SnowballsToggle = false
local BallsToggle = false
local WaterHydrantsToggle = false
local FlameleakToggle = false
local ValkyrieTurretToggle = false
local FlaresToggle = false
local TazersToggle = false
local MolotovsToggle = false

-- Player Option Cache
local ForcefieldCache = {}
local UnderwaterThreadID

-- Vehicle Options Menus
local MenussCustomsMenu = MenuV:CreateMenu('Menuss Customs', '.', 'topleft', 255, 0, 0)
local VehicleWeaponsMenu = MenuV:CreateMenu('Vehicle Weapons', '.', 'topleft', 255, 0, 0)
local VehicleMultipliersMenu = MenuV:CreateMenu('Vehicle Multipliers', '.', 'topleft', 255, 0, 0)
local MultiPlatformNeonsMenu = MenuV:CreateMenu('Multi-Platform Neons', '.', 'topleft', 255, 0, 0)
local PVOptionsMenu = MenuV:CreateMenu('PV Options', '.', 'topleft', 255, 0, 0)
local AutoDriveMenu = MenuV:CreateMenu('Auto Drive', '.', 'topleft', 255, 0, 0)
local SlamItMenu = MenuV:CreateMenu('Slam It', '.', 'topleft', 255, 0, 0)

-- Vehicle Option SubMenu Buttons
local menu_button = vehicleoptionsMenu:AddButton({ icon = '😃', label = 'Menuss Customs', value = MenussCustomsMenu, description = '.' })
local menu_button = vehicleoptionsMenu:AddButton({ icon = '😃', label = 'Vehicle Weapons', value = VehicleWeaponsMenu, description = '.' })
local menu_button = vehicleoptionsMenu:AddButton({ icon = '😃', label = 'Vehicle Multipliers', value = VehicleMultipliersMenu, description = '.' })
local menu_button = vehicleoptionsMenu:AddButton({ icon = '😃', label = 'Multi-Platform Neons', value = MultiPlatformNeonsMenu, description = '.' })
local menu_button = vehicleoptionsMenu:AddButton({ icon = '😃', label = 'PV Options', value = PVOptionsMenu, description = '.' })
local menu_button = vehicleoptionsMenu:AddButton({ icon = '😃', label = 'Auto Drive', value = AutoDriveMenu, description = '.' })
local menu_button = vehicleoptionsMenu:AddButton({ icon = '😃', label = 'Slam It', value = SlamItMenu, description = '.' })

-- Vehicle Option Menuss Customs Buttons
local TopSpeedOfVehicle = GetVehicleEstimatedMaxSpeed(GetVehiclePedIsIn(ped, false))
local TopSpeedKMPH = MenussCustomsMenu:AddRange({ icon = '⚽', label = 'Top Speed (MPH)',  min = 1, max = 1000, value = TopSpeedOfVehicle, saveOnUpdate = true })

-- Vehicle Option Vehicle Weapons Buttons
local DisplayProjectilePath = VehicleWeaponsMenu:AddCheckbox({ icon = '😃', label = 'Display Projectile Path', value = 'n' })
local EnableRPG = VehicleWeaponsMenu:AddCheckbox({ icon = '😃', label = 'RPG', value = 'n' })
local EnableFireworks = VehicleWeaponsMenu:AddCheckbox({ icon = '😃', label = 'Fireworks', value = 'n' })
local EnableGuns = VehicleWeaponsMenu:AddCheckbox({ icon = '😃', label = 'Guns', value = 'n' })
local EnableSnowballs = VehicleWeaponsMenu:AddCheckbox({ icon = '😃', label = 'Snowballs', value = 'n' })
local EnableBalls = VehicleWeaponsMenu:AddCheckbox({ icon = '😃', label = 'Balls', value = 'n' })
local EnableWaterHydrants = VehicleWeaponsMenu:AddCheckbox({ icon = '😃', label = 'Water Hydrants', value = 'n' })
local EnableFlameLeaks = VehicleWeaponsMenu:AddCheckbox({ icon = '😃', label = 'Flame Leaks', value = 'n' })
local EnableValkyrieTurrets = VehicleWeaponsMenu:AddCheckbox({ icon = '😃', label = 'Valkyrie Turrets', value = 'n' })
local EnableFlares = VehicleWeaponsMenu:AddCheckbox({ icon = '😃', label = 'Flares', value = 'n' })
local EnableHeavySnipers = VehicleWeaponsMenu:AddCheckbox({ icon = '😃', label = 'Heavy Snipers', value = 'n' })
local EnableTazers = VehicleWeaponsMenu:AddCheckbox({ icon = '😃', label = 'Tazers', value = 'n' })
local EnableMolotovs = VehicleWeaponsMenu:AddCheckbox({ icon = '😃', label = 'Molovtovs', value = 'n' })

-- Vehicle Option Vehicle Weapon Toggles
local DisplayProjectilePathToggle = false

-- Vehicle Option Vehicle Weapon Events

-- Player Option Functions

-- Vehicle Sides
local vehicle_weapons_originR, vehicle_weapons_targetR
local vehicle_weapons_originL, vehicle_weapons_targetL

function StoreVehicleWeaponPosition(vehicle)
    local dim1, dim2 = vehicle.Model.Dimensions

    if IsGameplayCamLookingBehind() then
        vehicle_weapons_originR = GetOffsetFromEntityInWorldCoords(vehicle, dim1.x - 0.22, 0.5 - dim2.y, 0.5)
        vehicle_weapons_targetR = GetOffsetFromEntityInWorldCoords(vehicle, dim1.x - 0.22, -(dim1.y + 350.0), 0.5)

        vehicle_weapons_originL = GetOffsetFromEntityInWorldCoords(vehicle, 0.22 - dim2.x, 0.5 - dim2.y, 0.5)
        vehicle_weapons_targetL = GetOffsetFromEntityInWorldCoords(vehicle, 0.22 - dim2.x, -(dim2.y + 350.0), 0.5)
    else
        vehicle_weapons_originR = GetOffsetFromEntityInWorldCoords(vehicle, dim1.x - 0.22, dim1.y - 0.5, 0.5)
        vehicle_weapons_targetR = GetOffsetFromEntityInWorldCoords(vehicle, dim1.x - 0.22, dim1.y + 350.0, 0.5)

        vehicle_weapons_originL = GetOffsetFromEntityInWorldCoords(vehicle, 0.22 - dim2.x, dim1.y - 0.5, 0.5)
        vehicle_weapons_targetL = GetOffsetFromEntityInWorldCoords(vehicle, 0.22 - dim2.x, dim1.y + 350.0, 0.5)
    end
end



function ShootBullet(sourcePosition, targetPosition, owner, weaponHash, damage, speed, audible, visible)
    local audibleFlag = audible and true or false
    local visibleFlag = not visible and true or false

    ShootSingleBulletBetweenCoords(
        sourcePosition.x, sourcePosition.y, sourcePosition.z,
        targetPosition.x, targetPosition.y, targetPosition.z,
        damage, true, weaponHash, owner, audibleFlag, visibleFlag, speed
    )
end

function SetVehicleWeaponFire(hash, speed)
    if not speed then
        speed = 2000.0
    end

    ShootBullet(vehicle_weapons_originL, vehicle_weapons_targetL, ped, hash, 200, speed, true, true)
    ShootBullet(vehicle_weapons_originR, vehicle_weapons_targetR, ped, hash, 200, speed, true, true)
end

function SetVehicleWeaponExplosion(type)
    local vehicle = GetVehiclePedIsIn(ped, false)

    if IsDisabledControlPressed(0, 19) then -- INPUT_CHARACTER_WHEEL
        TargPosR = GetOffsetFromEntityInWorldCoords(vehicle, 1.24, -40.0, 0.0)
        TargPosL = GetOffsetFromEntityInWorldCoords(vehicle, -1.24, -40.0, 0.0)
    else
        TargPosR = GetOffsetFromEntityInWorldCoords(vehicle, 1.24, 40.0, 0.0)
        TargPosL = GetOffsetFromEntityInWorldCoords(vehicle, -1.24, 40.0, 0.0)
    end

    AddExplosion(TargPosR.x, TargPosR.y, TargPosR.z, type, 5.0, true, false, 0.3)
    AddExplosion(TargPosL.x, TargPosL.y, TargPosL.z, type, 5.0, true, false, 0.3)
end

RegisterCommand('+shootvehicleweapon', function ()
    print('test')

end, false)

RegisterKeyMapping('+shootvehicleweapon', 'Shoot Vehicle Weapon', 'keyboard', 'l')

function ToggleClean()
    while true do
        Wait(200)

        if not AutoCleanToggle then
            TerminateThisThread()
        end

        ClearPedBloodDamage(ped)
    end
end



function ToggleUnderwater()
    while true do
        Wait(1)
        if IsEntityInWater(ped) then
            
        if not WalkUnderwaterToggle then
            SetPedConfigFlag(ped, 65, true)
            SetPedConfigFlag(ped, 66, true)
            SetPedConfigFlag(ped, 168, true)
            break
        end

        SetPedConfigFlag(ped, 65, false)
        SetPedConfigFlag(ped, 66, false)
        SetPedConfigFlag(ped, 168, false)

        PlayerPos = GetEntityCoords(ped, false)

        DrawLightWithRangeAndShadow(PlayerPos.x, PlayerPos.y, (PlayerPos.z + 1.5), 255, 255, 251, 100.0, 1.5, 0.0)
        DrawLightWithRangeAndShadow(PlayerPos.x, PlayerPos.y, (PlayerPos.z + 50.0), 255, 255, 251, 200.0, 1.0, 0.0)

        if IsPedJumping(ped) then
            ApplyForceToEntity(ped, true, 0, 0, 0.7, 0, 0, 0, true, true, true, true, false, true)
        end

        if GetEntityHeightAboveGround(ped) > 1 then
            SetPedConfigFlag(ped, 60, false)
            SetPedConfigFlag(ped, 61, false)
            SetPedConfigFlag(ped, 104, false)
            SetPedConfigFlag(ped, 276, false)
            SetPedConfigFlag(ped, 76, true)
            ApplyForceToEntity(ped, true, 0, 0, -0.2, 0, 0, 0, true, true, true, true, false, true)
        end

        if GetIsTaskActive(ped, 281) or IsPedSwimming(ped) or IsPedSwimmingUnderWater(ped) then
            ClearPedTasksImmediately(ped)
        end
    end
end
    UnderwaterThreadID = GetIdOfThisThread()
    TerminateThisThread()
    return
end

function GetEntitiesWithinRange(coords, range, models)
    local entities = {}
    local modelHashes = {}

    if models then
        for _, model in ipairs(models) do
            local hash = GetHashKey(model)
            table.insert(modelHashes, hash)
        end
    end

    local handle, entity = FindFirstEntity()
    repeat
        local distance = #(coords - GetEntityCoords(entity))
        if distance <= range then
            if not models or HasModelLoaded(GetEntityModel(entity)) and table.contains(modelHashes, GetEntityModel(entity)) then
                table.insert(entities, entity)
            end
        end

        handle, entity = FindNextEntity(handle)
    until not handle

    return entities
end

function ApplyForce(entity, direction, forcetype)
    ApplyForceToEntity(entity, forcetype, direction.x, direction.y, direction.z, 0, 0, 0, false, false, true, true, false, true)
end

function ToggleForcefield()
        local myPed = ped
        local myPos = GetEntityCoords(myPed)
        Wait(1)
        while ForcefieldToggle do
            myPed = PlayerPedId() -- update player ped
            myPos = GetEntityCoords(myPed) -- update player position
              for _, ent in ipairs(GetGamePool('CVehicle')) do
                local entPos = GetEntityCoords(ent)
                if DoesEntityExist(ent) and ent ~= myPed and ent ~= GetVehiclePedIsIn(ped, false) and GetDistanceBetweenCoords(myPos.x, myPos.y, myPos.z, entPos.x, entPos.y, entPos.z, false) < 10.0 then
                    local director = vector3(myPos.x - entPos.x, myPos.y - entPos.y, myPos.z - entPos.z)
                    ApplyForce(ent, director, 3)
                end
              end
              for _, ent in ipairs(GetGamePool('CPed')) do
                local entPos = GetEntityCoords(ent)
                if DoesEntityExist(ent) and ent ~= myPed and #(myPos - entPos) < 10.0 then
                  ApplyForceToEntity(ent, 3, myPos.x - entPos.x, myPos.y - entPos.y, myPos.z - entPos.z, 0, 0, 0, 1, true, false, true, false, true) -- push entity away
                  local director = vector3(myPos.x - entPos.x, myPos.y - entPos.y, myPos.z - entPos.z)
                  ApplyForce(ent, director, 3)
                end
              end
              for _, ent in ipairs(GetGamePool('CObject')) do
                local entPos = GetEntityCoords(ent)
                if DoesEntityExist(ent) and ent ~= myPed and #(myPos - entPos) < 10.0 then
                  local director = vector3(myPos.x - entPos.x, myPos.y - entPos.y, myPos.z - entPos.z)
                  ApplyForce(ent, director, 3)
                end
              end
      end
end

function DrawLine3D(startPos, endPos, r, g, b, alpha)
    local color = {r = r, g = g, b = b, alpha = alpha or 255}

    DrawLine(
        startPos.x,
        startPos.y,
        startPos.z,
        endPos.x,
        endPos.y,
        endPos.z,
        color.r,
        color.g,
        color.b,
        color.alpha
    )
end

function DisplayProjectilePathDraw()
    while true do
        ClearDrawOrigin()

        local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
        local pos = GetEntityCoords(vehicle)
        local heading = GetEntityHeading(vehicle)
        local offset = 20.0
        heading = heading + 90
        local endpointX = pos.x + offset * math.cos(math.rad(heading))
        local endpointY = pos.y + offset * math.sin(math.rad(heading))
        local endpointZ = pos.z
        local line = DrawLine(pos.x, pos.y, pos.z, endpointX, endpointY, endpointZ, 255, 0, 0, 2.0)
        
        Wait(1)
        if not DisplayProjectilePathToggle then
            ClearDrawOrigin()
            TerminateThisThread()
            break
        end
    end
end

-- Player Options Events
BurnMode:On('change', 
function(_, _, _) 
    if not BurnModeToggle then
        StartEntityFire(ped)
        BurnModeToggle = true
    else
        StopEntityFire(ped)
        BurnModeToggle = false
    end
end)

Invisibility:On('change', 
function(_, _, _) 
    if not InvisibleToggle then
        SetEntityVisible(ped, false, 0)
        InvisibleToggle = true
    else
        SetEntityVisible(ped, true, 0)
        InvisibleToggle = false
    end
end)

Invincibility:On('change', 
function(_, _, _) 
    if not InvincibleToggle then
        SetEntityInvincible(ped, 1)
        SetPedDiesInWater(ped, 0)
        SetEntityProofs(ped, 1, 0, 1, 1, 1, 1, 1, 1)
        InvincibilityToggle = true
    else
        SetEntityInvincible(ped, 0)
        SetPedDiesInWater(ped, 1)
        SetEntityProofs(ped, 0, 0, 0, 0, 0, 0, 0, 0)
        InvincibilityToggle = false
    end
end)

AutoClean:On('change', 
function(_, _, _) 
    if not AutoCleanToggle then                                                
        AutoCleanToggle = true -- Keep here otherwise it'll be a race condition  | Normally Wins
        CreateThread(ToggleClean) --<--<--<--<--<--<--<--<--<--<--<--<-<-| 
    else
        print('Destroying thread.')
        AutoCleanToggle = false
    end
end)

Seatbelt:On('change', 
function(_, _, _) 
    if not SeatbeltToggle then
        SetPedCanBeKnockedOffVehicle(ped, 1)
        SetPedConfigFlag(ped, 32, false)
        DrunkToggle = true
    else
        SetPedCanBeKnockedOffVehicle(ped, 0)
        SetPedConfigFlag(ped, 32, true)
        DrunkToggle = false
        end
end)

NoRagdoll:On('change', 
function(_, _, _) 
    if not NoRagdollToggle then
        SetPedCanRagdoll(ped, 0)
        SetPedCanRagdollFromPlayerImpact(ped, 0)
        DrunkToggle = true
    else
        SetPedCanRagdoll(ped, 1)
        SetPedCanRagdollFromPlayerImpact(ped, 1)
        DrunkToggle = false
        end
end)

Drunk:On('change', 
function(_, _, _) 
    if not DrunkToggle then
        if not HasAnimSetLoaded("MOVE_M@DRUNK@VERYDRUNK") then
            RequestAnimSet("MOVE_M@DRUNK@VERYDRUNK")
            while not HasAnimSetLoaded("MOVE_M@DRUNK@VERYDRUNK") do
                Wait(0)
            end
        end
        SetPedIsDrunk(ped, true)
        ShakeGameplayCam("DRUNK_SHAKE", 1.0)
        SetPedConfigFlag(ped, 100, true)
        SetPedMovementClipset(ped, "MOVE_M@DRUNK@VERYDRUNK", 1.0)
        DrunkToggle = true
    else
        SetPedConfigFlag(ped, 100, false)
        ShakeGameplayCam("DRUNK_SHAKE", 0)
        ClearTimecycleModifier()
        ResetScenarioTypesEnabled()
        ResetPedMovementClipset(ped, 0)
        SetPedIsDrunk(ped, false)
        SetPedMotionBlur(ped, false)
        DrunkToggle = false
    end
end)

WalkUnderwater:On('change', 
function(_, _, _) 
    if not WalkUnderwaterToggle then
        WalkUnderwaterToggle = true
        CreateThread(ToggleUnderwater)
    else
        WalkUnderwaterToggle = false
        TerminateThread(UnderwaterThreadID)
    end
end)

Forcefield:On('change', 
function(_, _, _) 
    if not ForcefieldToggle then
        ForcefieldToggle = true
        CreateThread(Forcefield)
    else
        ForcefieldToggle = false
    end
end)

WalkRunSpeed:On('change', function(item, newValue, oldValue)
    SetRunSprintMultiplierForPlayer(ped, newValue)
end)

SwimSpeed:On('change', function(item, newValue, oldValue)
    SetSwimMultiplierForPlayer(ped, newValue)
end)

-- Vehicle Option Menuss Customs Events

TopSpeedKMPH:On('change', function(item, newValue, oldValue)
    SetEntityMaxSpeed(GetVehiclePedIsIn(ped, false), newValue)
    TopSpeedKMPH.Description = ("Speed: %s"):format(math.ceil((newValue+0.5 * 3.6) * 2) + 2)
end)

DisplayProjectilePath:On('change', 
function(_, _, _) 
    if not DisplayProjectilePathToggle then
        DisplayProjectilePathToggle = true
        CreateThread(DisplayProjectilePathDraw)
    else
        DisplayProjectilePathToggle = false
    end
end)


EnableRPG:On('change', function(_,_,_)
    if not DisplayProjectilePathToggle then
        RPGToggle = true
        CreateThread(ShootingRPGFunction)
    else
        DisplayProjectilePathToggle = false
    end
end)

RegisterKeyMapping('+openmenuss', 'Open Menuss', 'keyboard', 'F7')
RegisterCommand('+openmenuss', function ()
    menu:Open()
end, false)
