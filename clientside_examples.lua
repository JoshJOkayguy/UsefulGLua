local scrw, scrh = ScrW(), ScrH()

-- 1. Cool derma opening "popup" animation
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
