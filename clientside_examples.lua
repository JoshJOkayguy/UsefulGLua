-- CLIENTSIDE CODE --

local scrw, scrh = ScrW(), ScrH()

-- Cool derma opening "popup" animation
local function PopupAnimation()
  local frameW, frameH, animTime, animDelay, animEase = scrw * .4, scrh * .5, 1.8, 0, .1 -- Caching values for the panel size, animation delay, and ease.
  
  local DFrame = vgui.Create("DFrame")
  DFrame:SetSize(0,0) -- Setting the size at the start of the animation.
  DFrame:Center()
  DFrame:MakePopup()
  
  local isAnimating = true -- Once the panel is created, the animation will start.
  
  DFrame:SizeTo( frameW, frameH, animTime, animDelay, animEase, function() -- The animation occurs with the values we cached earlier.
        isAnimating = false
    end )
  
  DFrame.OnSizeChanged = function(self,w,h) -- Makes sure the frame stays centered while animating. You should also put the sizing for children that are sized based on the frame in here.
        if isAnimating then
            self:Center()
        end
    end
  
end
-- Get the local player's FPS
local function LocalPlayerFPS()
  --TODO
end

-- Make a circle
local function trigonometry()
  -- Look, I barely know trigonometry, and chances are you don't either. That's a problem, because it's an extremely useful skill that'll help us a ton when coding in the future. Thankfully, you don't have to learn it today because I have a very simple function to draw a circle here that you can copy and paste like the shameless skid you are.
end

-- SERVERSIDE CODE --



-- SHARED CODE --
-- Neat stuff with global variables
local function Globals() -- I may be wrong regarding some of the information in this section, however the code itself does function --
  
  example = example or {} -- Sets a global that allows you to do certain things later on without overwriting other things.
  
  example.coolTable {
    sick = true,
  }
  
  example.coolerTable { -- Now this will not overwrite the previous table that began with "example.". It's useful for readability among other things. You could have a library addon that stores things like this so you can use them in other addons.
    sicker = true,
  }
  
  example.configOption = true -- This can be used in any of your files now, whether clientside or serverside.
end
