m = peripheral.wrap("back")
m.clear()
m.setTextScale(2)
m.setTextColor(colors.red)
function updateClock(m)
  while true do
        mcT = os.time()
        m.setCursorPos(1,5)
        m.clearLine()
        m.setCursorPos(6,5)
        m.write(textutils.formatTime(mcT))
        m.setCursorPos(1,2)
        m.clearLine()
        m.setCursorPos(3,2)
        m.write("Jour "..os.day())
        sleep(0.1)
  end
end
updateClock(m)
