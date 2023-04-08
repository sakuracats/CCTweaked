while true do
    if turtle.getFuelLevel() < 50 then
        turtle.select(1)
        turtle.refuel(1)
    end
    turtle.suck()
    for 1 , 16 do
        name = turtle.getItemDetail(i).name
        if name == "ae2:certus_quartz_crystal" then
            turtle.select(i)
            turtle.drop()
        end
    end
end