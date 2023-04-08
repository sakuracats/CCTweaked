while true do

print(turtle.getFuelLevel())
if turtle.getFuelLevel() < 50 then
    turtle.refuel(1)
end

turtle.select(1)

-- Get Item
while turtle.suck() do
    turtle.suck()
end

-- Move to Controller
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

end
