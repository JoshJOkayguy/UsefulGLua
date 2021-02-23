-- 1. Neat stuff with global variables
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
