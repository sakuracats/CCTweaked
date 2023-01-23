local attachedMonitor = peripheral.wrap("back")
local defaultBackgroundColor =colors.black
local defaultTextColor=colors.white

local backgroundColorNormal = colors.red                                               
local backgroundColorPressed = colors.green

local textColorNormal = colors.white
local textColorPressed = colors.white

local width=10
local label="Gen1"

local startColumn=3
local startRow=3

-- Set up Monitor
attachedMonitor.setBackgroundColor(defaultBackgroundColor)
attachedMonitor.setTextColor(defaultTextColor)
attachedMonitor.setTextScale(.5)
attachedMonitor.clear()

-- Display the button Background
attachedMonitor.setBackgroundColor(backgroundColorNormal)
attachedMonitor.setCursorPos(startRow,startColumn)
attachedMonitor.write(string.rep(" ",width))

--Display the label (auto centered)
attachedMonitor.setTextColor (textColorNormal)
attachedMonitor.setCursorPos(startColumn + math.floor((width - #label)/2),startRow)
attachedMonitor.write(label)

-- reset to original text/background colors
attachedMonitor.setBackgroundColor(defaultBackgroundColor)
attachedMonitor.setTextColor(defaultTextColor)

-- sleep and then let's do it again with our "pressed" colors.
sleep(3)

attachedMonitor.setBackgroundColor(backgroundColorPressed)
attachedMonitor.setCursorPos(startRow,startColumn)
attachedMonitor.write(string.rep(" ",width))
attachedMonitor.setTextColor(textColorPressed)
attachedMonitor.setCursorPos(startColumn + math.floor((width - #label)/2),startRow)
attachedMonitor.write(label)

attachedMonitor.setBackgroundColor(defaultBackgroundColor)
attachedMonitor.setTextColor(defaultTextColor)
attachedMonitor.setCursorPos(1,5)       
attachedMonitor.write("Done.")
print()
