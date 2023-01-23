local gen1 = rednet.lookup("im_gen","gen1")
local gen2 = rednet.lookup("im_gen","gen2")

local monitor1 = rednet.lookup("monitor","monitor1")

rednet.host( "cmder", "cmder1" )
rednet.send(gen1,false)

while true do
    local id,message = rednet.receive()
        if message[1] == "Running" then
            rednet.send(monitor1,message)
        elseif messagep[1] == "Stopped" then
            rednet.send(monitor1,message)
        else
        end
end
