--[[============================================================================
main.lua
============================================================================]]--

-- requires

require "randomizer"
require "gui"


--------------------------------------------------------------------------------
-- helpers
--------------------------------------------------------------------------------

local function song()
  return renoise.song()
end


--------------------------------------------------------------------------------
-- keybinding registration
--------------------------------------------------------------------------------

-- Selected Phrase
renoise.tool():add_keybinding {
  name = "Phrase Editor:Phrase Operations:Randomize Notes",
  invoke = function(repeated)
    if (not repeated) then
      gui.invoke_random_in_range("Selected Phrase")
    end
  end
}

-- Whole pattern
renoise.tool():add_keybinding {
  name = "Pattern Editor:Pattern Operations:Randomize Notes",
  invoke = function(repeated)
    if (not repeated) then
      gui.invoke_random_in_range("Whole Pattern")
    end
  end
}

-- Track in Pattern
renoise.tool():add_keybinding {
  name = "Pattern Editor:Track Operations:Randomize Notes in Pattern",
  invoke = function(repeated)
    if (not repeated) then
      gui.invoke_random_in_range("Track in Pattern")
    end
  end
}

-- Track in Song
renoise.tool():add_keybinding {
  name = "Pattern Editor:Track Operations:Randomize Notes in Song",
  invoke = function(repeated)
    if (not repeated) then
      gui.invoke_random_in_range("Track in Song")
    end
  end
}

-- Selection
renoise.tool():add_keybinding {
  name = "Pattern Editor:Block Operations:Randomize Notes",
  invoke = function(repeated)
    if (not repeated) then
      gui.invoke_random_in_range("Selection")
    end
  end
}




-- Randomize GUI
renoise.tool():add_keybinding {
  name = "Pattern Editor:Tools:Randomize Notes...",
  invoke = function(repeated)
    if (not repeated) then
      gui.show_randomize_gui()
    end
  end
}


--------------------------------------------------------------------------------
-- menu registration
--------------------------------------------------------------------------------

renoise.tool():add_menu_entry {
  name = "Main Menu:Tools:Randomize Notes...",
  invoke = gui.show_randomize_gui
}

renoise.tool():add_menu_entry {
  name = "Pattern Editor:Randomize Notes...",
  invoke = gui.show_randomize_gui
  
}

renoise.tool():add_menu_entry {
  name = "Main Menu:Tools:set_notes_from_sel",
  invoke = gui.set_notes_from_sel
}
--set_notes_from_sel()

renoise.tool():add_menu_entry {
  name = "Main Menu:Tools:genbass 303",
  invoke = randomizer.genbass1
}

renoise.tool():add_menu_entry {
  name = "Main Menu:Tools:genbass ok",
  invoke = randomizer.genbass2
}