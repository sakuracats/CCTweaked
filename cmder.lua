local gen1 = rednet.lookup("im_gen","gen1")
local gen2 = rednet.lookup("im_gen","gen2")

monitor1 = rednet.lookup("monitor","monitor1")

rednet.host( "cmder", "cmder1" )
rednet.send(gen1,false)

while true do
    local id,message = rednet.receive()
        msg = {message[1],message[2],message[3]}
        if message[1] == "Running" then
            rednet.send(monitor1,msg)
        elseif message[1] == "Stopped" then
            rednet.send(monitor1,msg)
        else
        end
end
