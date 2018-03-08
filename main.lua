-- This program displays objects that
-- when touched reacted and displays
-- a new image and text
-- Johnathan M ICS20
-- Touch and React

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--background image
local backgroundImage = display.newImageRect("Images/background.jpg", 1920, 1920)

	--centers the background image
	backgroundImage.x = display.contentWidth/2
	backgroundImage.y = display.contentWidth/2

--background rectangle image
local backgroundrect = display.newImageRect("Images/rectblue.jpg", 1950, 600)
	
	--properties of backgroundrect
	backgroundrect.x = display.contentWidth/2
	backgroundrect.y = 1170
	backgroundrect.strokeWidth = 30
	backgroundrect:setStrokeColor(1, .5, 0)


-- creates variable and sets properties for Red Button
local redbutton = display.newImageRect("Images/Redbutton.png", 400, 200)
	redbutton.x = display.contentWidth/2
	redbutton.y = 1140
	redbutton.isVisible = true


-- creates variable and sets properties for Blue Button
local bluebutton = display.newImageRect("Images/Bluebutton.png", 400, 200)
	bluebutton.x = display.contentWidth/2
	bluebutton.y = 1140
	bluebutton.isVisible = false

-- text that shows when redbutton has been clicked or touched
local clicktext = display.newText("Clicked!", 500, 500, "Images/vinet.ttf", 140)
	clicktext.isVisible = false
	clicktext:setFillColor(1, 0.2, 0)


-- function for blue button to change when touched
local function Bluebuttonclick(touch)

	if (touch.phase == "began") then
		bluebutton.isVisible = true
		redbutton.isVisible = false
		clicktext.isVisible = true
	end
	
	if (touch.phase == "ended") then
		bluebutton.isVisible = false
		redbutton.isVisible = true
		clicktext.isVisible = false
	end

end

-- function for red button to change when touched
local function Redbuttonclick(touch)

	if (touch.phase == "ended") then
		bluebutton.isVisible = false
		redbutton.isVisible = true
		clicktext.isVisible = false
	end

end

-- even listeners for the respective functions
bluebutton:addEventListener("touch", Bluebuttonclick)
redbutton:addEventListener("touch", Redbuttonclick)




