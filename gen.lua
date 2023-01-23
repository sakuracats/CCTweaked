m = peripheral.wrap("back")
m.setTextScale(2)
m.setTextColor(colors.white)
m.setBackgroundColor(colors.black)
m.clear()
width,height = m.getSize()
row = height/10
col = width/2
jump = 2

rednet.open("front")
rednet.host( "monitor", "monitor1")


function gen(m,co,name,msg)
    m.setBackgroundColor(colors.black)
    m.setCursorPos(0+1,0+row*3+(co*jump))
    m.write(name)
    m.setCursorPos(0+1+col,0+row*3+(co*jump))
    if msg == "Stopped" then
        m.setBackgroundColor(colors.red)
    elseif msg == "Running" then
        m.setBackgroundColor(colors.green)
    else
    end
    m.write(msg)
end

while true do
local id,message = rednet.receive()
if not id then
elseif not message[1] then
elseif not message[2] then
elseif not message[3] then
co = message[3]
name = message[1]
msg = message[2]
gen(m,co,name,msg)
end
end
