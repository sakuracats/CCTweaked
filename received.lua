cmder = rednet.lookup("cmder","cmder1")
hostname = "gen1"
protocol = "im_gen"

rednet.host( protocol, hostname)
while true do
    local id,message = rednet.receive()

    local running = {hostname,"Running",0}
    local stopped = {hostname,"Stopped",0}
    if message == false then
        rs.setOutput("top", true)
        rednet.send(cmder,running)
    else
        rs.setOutput("top", false)
        rednet.send(cmder,stopped)
    end
end
