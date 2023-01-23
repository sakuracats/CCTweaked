m = peripheral.wrap("back")
m.clear()
m.setTextScale(1)
m.setTextColor(colors.red)

width,height = m.getSize()
row = height/10
col = width/2

function gen(m)
    m.setBackgroundColor(colors.black)
    m.setCursorPos(0+1,0+row*2)
    m.write("gen1")
    m.setCursorPos(0+1+col,0+row*2)
    m.write("running")
end
gen(m)
