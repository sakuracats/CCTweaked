while True do

if turtle.getFuelLevel() < 50 then
    turtle.refuel(1)
end

-- 取得物品
while turtle.suck() do
    turtle.suck()
end

-- 移動到Controller
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
    turtle.drop()
end

-- 移動到木桶
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