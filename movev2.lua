function IronToController()
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
end

function ControllerToIron()
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
    turtle.turnRight()'
    nowlocation = 'iron'
end

function DustToController()
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
end

function ControllerToDust()
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
end


function IronToDust()
    turtle.turnRight()
    turtle.forward()
    turtle.forward()
    turtle.turnLeft()
    nowlocation = 'dust'
end

function DustToIron()
    turtle.turnLeft()
    turtle.forward()
    turtle.forward()
    turtle.turnRight()
    nowlocation = 'iron'
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


while true do
    nowlocation = 'iron'
    print('nowlocation is iron')
    print(turtle.getFuelLevel())
    if turtle.getFuelLevel() < 50 then
        turtle.refuel(1)
    end
    
    turtle.select(1)
    
    -- Get Item
    getitem = GetItem()
    lastchest = nowlocation
    while getitem == 'notfull' do
        Switch()
        getitem = GetItem()
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


    
    -- Move to Chest
    if lastchest == 'iron' then
        ControllerToIron()
    end
    if lastchest == 'dust' then
        ControllerToDust()
    end
    
end