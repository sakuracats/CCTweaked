m = peripheral.wrap("back")
m.clear()
m.setTextScale(1)
m.setTextColor(colors.white)
m.setBackgroundColor(colors.black)
width,height = m.getSize()
row = height/10
col = width/2

function gen(m)
    m.setBackgroundColor(colors.black)
    m.setCursorPos(0+1,0+row*2)
    m.write("gen1")
    m.setCursorPos(0+1+col,0+row*2)
    m.setBackgroundColor(colors.green)
    m.write("Running")
    m.setCursorPos(0+1,0+row*3)
    m.write("gen2")
    m.setCursorPos(0+1+col*2,0+row*3)
    m.setBackgroundColor(colors.red)
    m.write("Stopped")
end
gen(m)
