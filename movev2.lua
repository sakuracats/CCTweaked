function IronToController()
    print('Go To Controller')
    turtle.turnRight()
    turtle.forward()
    turtle.forward()
    turtle.forward()
    turtle.forward()
    turtle.forward()
    turtle.forward()
    turtle.turnLeft()
    turtle.forward()
    turtle.forward()
    turtle.forward()
    nowlocation = 'controller'
    return nowlocation
end

function ControllerToIron()
    print('Go To Iron')
    turtle.turnLeft()
    turtle.turnLeft()
    turtle.forward()
    turtle.forward()
    turtle.forward()
    turtle.turnRight()
    turtle.forward()
    turtle.forward()
    turtle.forward()
    turtle.forward()
    turtle.forward()
    turtle.forward()
    turtle.turnRight()
    nowlocation = 'iron'
    return nowlocation
end

function DustToController()
    print('Go To Controller')
    turtle.turnRight()
    turtle.forward()
    turtle.forward()
    turtle.forward()
    turtle.forward()
    turtle.turnLeft()
    turtle.forward()
    turtle.forward()
    turtle.forward()
    nowlocation = 'controller'
    return nowlocation
end

function ControllerToDust()
    print('Go To Dust')
    turtle.turnLeft()
    turtle.turnLeft()
    turtle.forward()
    turtle.forward()
    turtle.forward()
    turtle.turnRight()
    turtle.forward()
    turtle.forward()
    turtle.forward()
    turtle.forward()
    turtle.turnRight()
    nowlocation = 'dust'
    return nowlocation
end


function IronToDust()
    print('Go To Dust')
    turtle.turnRight()
    turtle.forward()
    turtle.forward()
    turtle.turnLeft()
    nowlocation = 'dust'
end

function DustToIron()
    print('Go To Iron')
    turtle.turnLeft()
    turtle.forward()
    turtle.forward()
    turtle.turnRight()
    nowlocation = 'iron'
end

function Holdon()
    for i = 2, 16 do
        count = turtle.getItemCount(i)
        start = 2
        if count = 0 then
            finish = i - 1
        for x = 2, finish do
            if turtle.getItemCount(x) < 60 then
            else
                return true
            end
        end
        end
    end
end


function GetItem()
    while true do
        if Holdon() == true then
            break
        end
        turtle.suck()
    end
    if turtle.getItemCount(16) == 0 then
        rtn = 'notfull'
    else
        rtn = 'full'
    end
return rtn
end

function GetItemLast()
    if select(2, turtle.suck())~="No items to take"
        while turtle.getItemCount(16) == 0 do
            turtle.suck()
        end
    end
    rtn = 'full'
return rtn
end

function GoPutItem()
    if nowlocation == 'dust' then
        DustToController()
    end
    if nowlocation == 'iron' then
        IronToController()
    end
end

function Switch()
    if nowlocation == 'dust' then
        DustToIron()
    elseif nowlocation == 'iron' then
        IronToDust()
    else
        print('Error: nowlocation is not iron or dust')
    end
end

nowlocation = 'dust'
print('nowlocation is Dust')
while true do
    turtle.select(1)
    print(turtle.getFuelLevel())
    if turtle.getFuelLevel() < 50 then
        turtle.refuel(1)
    end
    
    
    
    -- Get Item
    getitem = GetItem()
    lastchest = nowlocation
    maxswitch = 0
    while getitem == 'notfull' do
        Switch()
        maxswitch = maxswitch + 1
        if maxswitch < 1 then
            getitem = GetItem()
        else
            getitem = GetItemLast()
        end
    end

    GoPutItem()
    for i = 2, 16 do
        turtle.select(i)
        if turtle.getItemCount(i) ~= 0 then
            a = turtle.drop()
            while a == false do
                print('no space sleep 10 sec to retry')
                sleep(10)
                a = turtle.drop()
            end
        end
    end

    maxswitch = 0
    -- Move to Chest
    if lastchest == 'iron' then
        ControllerToDust()
    end
    if lastchest == 'dust' then
        ControllerToIron()
    end
    
end
