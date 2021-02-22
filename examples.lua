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
-- A simple explanation of when and how to use sql in gmod
local function sqlExplanation()
-- The use of SQLite in gmod is actually pretty simple once you get the hang of it. But, you don't want to overuse it. Database tables are useful because, unlike lua tables (if you don't know what those are, you are not ready for this), they carry data over between restarts and from server to server. It's just like a table except you can't see it in your code all in one block, you're creating "queries" to access it to store and remove data.
  
  local exampleVar = "I love SQL"
  if !sql.TableExists( 'UsefulGLua_sqlTutorial' ) then -- In case you missed it, we are checking if the table does NOT exist, look at the exclamation mark prior to the statement.
    
    sql.Query("CREATE TABLE UsefulGLua_sqlTutorial(column1 VARCHAR(255), column2 VARCHAR(255) ) ") -- Creates a table called "UsefulGLua_sqlTutorial" with two columns named column1 and column2. VARCHAR is simply an identifier of the datatype that will go into that column.
    sql.Query("INSERT INTO UsefulGLua_sqlTutorial('column1' 'column2')VALUES ('"..exampleVar.."', 'SQL is cool') ") -- Inserts the value stored in exampleVar into column1 and "SQL is cool" into column2. As you can see, you have to escape the quotes that SQLite needs to concatenate a variable.
  end
  
  print(sql.Query("SELECT * FROM UsefulGLua_sqlTutorial")) -- Selects * (ALL) from the table. So, it's printing everything we just put in right out into the console.
    
  -- Now that you have a basic understanding, you can reference https://www.w3schools.com/sql/default.asp to help you in your journey. w3schools is a fantastic resource for learning different facets of web development, SQL included.
end


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
