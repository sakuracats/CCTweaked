rednet.host( "im_gen", "gen1" )
while true do
    local id,message = rednet.receive()
    if message == false then
        rs.setOutput("top", true)
    else
        rs.setOutput("top", false)
    end
end
