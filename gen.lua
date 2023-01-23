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


function gen(m,co,gen,msg)
    m.setBackgroundColor(colors.black)
    m.setCursorPos(0+1,0+row*3+(co*jump))
    m.write(gen)
    m.setCursorPos(0+1+col,0+row*3+(co*jump))
    m.setBackgroundColor(colors.green)
    m.write(msg)
end

while true do
local id,message = rednet.receive()
print(message)
gen(m,co,gen,msg)
end
