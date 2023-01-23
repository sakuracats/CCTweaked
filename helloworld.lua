m = peripheral.wrap("back")
m.clear()
m.setTextScale(1)
m.setTextColor(colors.red)

width,height = m.getSize()
row = height/10
col = width/2


function updateClock(m)
    for i = 0,width,col do
        for x = 0,height,row do
            m.setBackgroundColor(colors.blue)
            m.setCursorPos(i,x)
            m.write(i,"-",x)  
        end
    end
end
updateClock(m)
