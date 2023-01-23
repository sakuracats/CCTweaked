cmder = rednet.lookup("cmder","cmder1")
hostname = "gen1"
protocol = "im_gen"

rednet.host( protocol, hostname)
rednet.open("left")
while true do
    local id,message = rednet.receive()

    local running = {hostname,"Running",0}
    local stopped = {hostname,"Stopped",0}
    if not id then
    elseif message == false then
        rs.setOutput("top", true)
        rednet.send(cmder,stopped)
    elseif message == true then
        rs.setOutput("top", false)
        rednet.send(cmder,running)
    end
end
