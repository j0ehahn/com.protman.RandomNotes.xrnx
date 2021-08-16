## com.protman.RandomNotes.xrnx
A remix of com.Renoise.NotesRandomizer that adds more features

v.20210816

**Adds the options:**
Tools > 
- Randomize Notes
- set_notes_from_sel
- genbass 303
- genbass OK

**Randomize Notes:**
Works just like the original com.Renoise.NotesRandomizer, but defaults to Custom instead of Shuffle in the GUI.

**set_notes_from_sel:**
Sets the custom notes grid to contain the notes from the current selection. This makes it easy to generate basslines or randomize notes based on the contents of another sequence or chord.

**genbass 303:**
It generates a bassline within the selected region using the settings from the note randomizer.
Glide rates are calculated to be frequency distance based rather than time based, which should be true to the 303. Since there is a limit on how fast glides may glide in Renoise (without stacking multiple pattern effects) any glide that would not be able to reach its destination note in time simply uses GFF for instant. There's a bug (or feature) in Renoise that affects how velocity affects volume (or shouldn't) when VEL>VOL is disabled. A device chain is attached that uses the velocity tracker to only reset the filter envelope when the velocity is 80, otherwise  a value of 70 or lower will keep the current filter envelope at the same level. 80 and 70 rather than using the whole tracked range helps with the feature/bug. You might need to test it to understand :]

**genbass OK:**
Like the above, but it just generates a bassline of notes and note-offs without the glides.
