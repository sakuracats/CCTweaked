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

    return nowlocation
end

function DustToIron()
    print('Go To Iron')
    turtle.turnLeft()
    turtle.forward()
    turtle.forward()
    turtle.turnRight()
    nowlocation = 'iron'
    return nowlocation
end


function GetItem()
    while turtle.suck() do
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
    while turtle.getItemCount(16) == 0 do
        turtle.suck()
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
    end
    if nowlocation == 'iron' then
        IronToDust()
    end
end

nowlocation = 'dust'
print('nowlocation is Dust')
while true do

    print(turtle.getFuelLevel())
    if turtle.getFuelLevel() < 50 then
        turtle.refuel(1)
    end
    
    turtle.select(1)
    
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
        a = turtle.drop()
        while a == false do
            print('no space sleep 10 sec to retry')
            sleep(10)
            a = turtle.drop()
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
