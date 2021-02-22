# UsefulGLua
Useful Garry's Mod Lua functions that myself and others can reference.

  Do *NOT* be intimidates by the code in [examples.lua](https://github.com/JoshJOkayguy/UsefulGLua/blob/main/examples.lua). It's very simple so long as you carefully look through it and read the comments! I'll provide an index at the end of the readme if you still find yourself lost so that you can still get help with whatever you need.

  I have neatly explained pretty much everything I do in the code (unless it is completely unecessary to explain), so hopefully nobody should have too many problems referencing these. The point is not just for you to copy and paste what you see here, it's for you to understand what youre looking at so that you can apply it in the future. You can, of course, copy and paste it regardless but I urge you to read the comments and try to grasp an understanding of what is being shown here.

# Index

### SO LONG AS THIS REPO IS BEING MAINTAINED THIS SECTION IS A WIP

- ["Popup" Animation](https://github.com/JoshJOkayguy/UsefulGLua/blob/main/examples.lua#L6)
- [Get the FPS of the local player](https://github.com/JoshJOkayguy/UsefulGLua/blob/main/examples.lua#L28)


# Advice
This is mainly just general advice for your coding experience that isn't an actual "example" per se. Uh... Please read it?

- If you want to learn gLua, there is this very obscure yet powerful resource called [youtube](youtube.com).
- Use surface.CreateFont sparingly, it eats up performance. Basically just don't create a new font for every possible font size in the known universe.
- When working with derma, use docking when possible, it's very useful and will save you the trouble of manually positioning (and scaling, in some cases) everything.
- Try to avoid using global variables. They can be really useful, but you have to be careful with them because they WILl conflict with other addons if they have the same name.
  - Also, make sure your variables have unique names so that you can actually remember what they do when you or someone else reads your code (or so that they don't conflict with other addons in the event that they're global variables!)
- Comment your code so that you and others understand what's happening if you decide to go back to it in the future.
- Proofread your code to check for things like unecessary lines of code, messy formatting, endless loops, etc.
- Reference the [gmod wiki](http://wiki.facepunch.com/gmod/) when you can, it's useful and may provide you with an alternate solution to a complex task that you're undertaking... It also makes sure that you don't waste the time of others when the answer you're looking for is literally on the wiki.
  - When asking for help, make sure you aren't creating the [xy problem](https://xyproblem.info/).
