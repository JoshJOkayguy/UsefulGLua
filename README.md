- [Introduction](https://github.com/JoshJOkayguy/UsefulGLua#usefulglua)
- [Contributing](https://github.com/JoshJOkayguy/UsefulGLua#contributing)
- [Index](https://github.com/JoshJOkayguy/UsefulGLua#index)
  - [CL Funcs](https://github.com/JoshJOkayguy/UsefulGLua#client)
  - [SV Funcs](https://github.com/JoshJOkayguy/UsefulGLua#server)
  - [SH Funcs](https://github.com/JoshJOkayguy/UsefulGLua#shared)
- [Advice](https://github.com/JoshJOkayguy/UsefulGLua#advice)
- [Text Editors](https://github.com/JoshJOkayguy/UsefulGLua#text-editors)
# UsefulGLua
Useful Garry's Mod Lua functions that myself and others can reference.

  Do *NOT* be intimidated by the code in any of the files. It's very simple so long as you carefully look through it and read the comments! I'll provide an index towards the end of the readme if you still find yourself lost so that you can still get help with whatever you need. I'll also provide some tips for coding at the bottom of the page, I'm no expert but I've picked up a few tricks in the time I've been making addons.

  I have neatly explained pretty much everything I do in the code (unless it is completely unecessary to explain), so hopefully nobody should have too many problems referencing these. The point is not just for you to copy and paste what you see here, it's for you to understand what you're looking at so that you can apply it in the future. You can, of course, copy and paste it regardless but I urge you to read the comments and try to grasp an understanding of what is being shown here.

# Contributing

Feel free to add or change things as you please, but it'll only get merged if the explanation is clear enough to understand. If it's too advanced, make a new file for it.
# Index

**SO LONG AS THIS REPO IS BEING MAINTAINED THIS SECTION IS A WIP**

### CLIENT
- [Derma Animation](https://github.com/JoshJOkayguy/UsefulGLua/blob/main/clientside_examples.lua#L3)

### SERVER
- [Simple SQL Explanation](https://github.com/JoshJOkayguy/UsefulGLua/blob/main/serverside_examples.lua#L1)

### SHARED
- [is* functions](https://github.com/JoshJOkayguy/UsefulGLua/blob/main/shared_examples.lua#L1)
- [Notifications](https://github.com/JoshJOkayguy/UsefulGLua/blob/main/shared_examples.lua#L24)

# Advice
This is mainly just general advice for your coding experience that isn't an actual "example" per se. Some of it is pretty obvious, but I guess common sense just isn't common anymore.

- If you want to learn GLua, there is this very obscure yet powerful resource called [YouTube](https://www.youtube.com/).
- Use surface.CreateFont sparingly in order to save resources. Whenever possible, consider using [Matrices](https://wiki.facepunch.com/gmod/VMatrix:SetScale) to manipulate it's size after creation.
- When working with Derma, use [docking](https://wiki.facepunch.com/gmod/Panel:Dock) when possible, it's very useful and will save you the trouble of manually positioning (and scaling, in some cases) everything.
- Avoid defining global variables. When it is required, be mindful of the name you choose, it should be distinct to your project, otherwise it may conflict with other addons. As a rule of thumb you should never assign global variables explicitly, but use the expression `GlobalValue = GlobalValue or SomeValue` that way, there is a chance that multiple addons could coexist without compatibility conflicts. This advice is also partially applicable to [Hooks](https://wiki.facepunch.com/gmod/hook), because their names are used as table keys.
- Comment your code so that you and others understand what's happening if you decide to go back to it in the future. You spend more time reading code than writing it.
- Proofread your code to check for things like unecessary lines of code, messy formatting, endless loops, etc.
- Reference the [GMod Wiki](http://wiki.facepunch.com/gmod/) when you can, it's useful and may provide you with an alternate solution to a complex task that you're undertaking... It also makes sure that you don't waste the time of others when the answer you're looking for is literally on the wiki.
  - When asking for help, make sure you aren't creating the [XY problem](https://xyproblem.info/).
- Always look for an alternate, better solution. If what you're doing seems convoluted or wrong, it just may be. Search the wiki and think hard BEFORE asking for help, it'll help you become a better coder. It seems obvious, but it's a truly useful piece of advice that some people genuinely don't consider.
- Do not be afraid to ask people to look at your code. There's always a chance for a good advice and a learning experience.
- Establish naming convention to be used throughout your code. [Lua officially uses](http://lua-users.org/wiki/LuaStyleGuide) *lowercase* for both functions and variables, but *CamelCase* is widely adopted in order to differentiate proprietary stuff from Lua itself. This is what Garry's Mod does, but whatever you prefer, it's important that you commit to the choice in order to minimize the reader's confusion.
- Try to avoid using [GLua specific syntax](https://wiki.facepunch.com/gmod/Specific_Operators), this makes harder to seek help outside of the Garry's Mod community and makes process of porting your code to other APIs unnecessarily lengthy.
- Use [RenderTargets](https://wiki.facepunch.com/gmod/Global.GetRenderTarget) to minimize the amount of computational power consumed when rendering geometry that doesn't need to be manipulated each render call.
- Allow [monkeypatching](http://kiki.to/blog/2014/04/04/rule-3-allow-monkeypatching/) of your code.
- When making an addon, do not display information in players' chat about it's version, updates, creator, etc. You might not know it (yet), but your addon is not special and it doesn't deserve special attention.

# Text Editors
These are text editors which you can use, they are the most used and have good syntaxing for GLua (as well as many other languages).

- [Sublime Text](https://www.sublimetext.com/)
- [Visual Studio Code](https://code.visualstudio.com/)
  - Use with [GLua Enhanced](https://marketplace.visualstudio.com/items?itemName=venner.vscode-glua-enhanced)

