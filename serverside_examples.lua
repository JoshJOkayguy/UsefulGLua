-- 1. A "simple" explanation of when and how to use sql in gmod
local function sqlExplanation()
-- The use of SQLite in gmod is actually pretty simple once you get the hang of it. But, you don't want to overuse it. Database tables are useful because, unlike lua tables, they carry data over between restarts and from server to server (if you manually do so). It's just like a table except you can't see it in your code all in one block, you're creating "queries" to access it to store and remove data.
  
  local exampleVar = "I love SQL"
  if !sql.TableExists( 'UsefulGLua_sqlTutorial' ) then -- In case you missed it, we are checking if the table does NOT exist, look at the exclamation mark prior to the statement.
    
    sql.Query("CREATE TABLE UsefulGLua_sqlTutorial(column1 VARCHAR(255), column2 VARCHAR(255) ) ") -- Creates a table called "UsefulGLua_sqlTutorial" with two columns named column1 and column2. VARCHAR is simply an identifier of the datatype that will go into that column, it's really just a glorified string with a length limit (hence 255).
    
    sql.Query(("INSERT INTO UsefulGLua_sqlTutorial(column1 , column2)VALUES (%s, %s) "):format(sql.SQLStr(exampleVar), sql.SQLStr("SQL is cool"))) -- You are appending these values into the table. You specify which columns you are adding to (column1 and column2) and then what values are going to go into those columns. We make sure the values are strings then use SQLStr to define the values. SQLStr escapes dangerous formatting. For example, if you were to not have that and just insert the exampleVar as is and it was in, say, a DTextEntry, someone could actually write sql code into that that is malicious. It's called sql injection, and it's very dangerous as you can access things you're not supposed to or execute sql queries that are malicious. You can also prepare your statement in a variable earlier to further prevent this. Anyways, you can see that within those SQLStrs we are defining what we want to put into column1 and column2 respectively. Protecting yourself from sql injection is not necessary in this case as it's server side and there is no actual user input aside from what is defined in the code, but it's good to practice.
  end
  
  print(sql.Query("SELECT * FROM UsefulGLua_sqlTutorial")) -- Selects * (ALL) from the table. So, it's printing everything we just put in right out into the console. Once again, be careful in situations where you have to be more specific than just selecting everything (and especially when handling sensitive data!).
    
  -- Now that you have a basic understanding, you can reference https://www.w3schools.com/sql/default.asp to help you in your journey. w3schools is a fantastic resource for learning different facets of web development, SQL included.
end


-- 2. Placeholder text
