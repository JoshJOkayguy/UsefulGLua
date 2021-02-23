-- 1. A simple explanation of when and how to use sql in gmod
local function sqlExplanation()
-- The use of SQLite in gmod is actually pretty simple once you get the hang of it. But, you don't want to overuse it. Database tables are useful because, unlike lua tables (if you don't know what those are, you are not ready for this), they carry data over between restarts and from server to server. It's just like a table except you can't see it in your code all in one block, you're creating "queries" to access it to store and remove data.
  
  local exampleVar = "I love SQL"
  if !sql.TableExists( 'UsefulGLua_sqlTutorial' ) then -- In case you missed it, we are checking if the table does NOT exist, look at the exclamation mark prior to the statement.
    
    sql.Query("CREATE TABLE UsefulGLua_sqlTutorial(column1 VARCHAR(255), column2 VARCHAR(255) ) ") -- Creates a table called "UsefulGLua_sqlTutorial" with two columns named column1 and column2. VARCHAR is simply an identifier of the datatype that will go into that column.
    sql.Query("INSERT INTO UsefulGLua_sqlTutorial('column1' 'column2')VALUES ('"..exampleVar.."', 'SQL is cool') ") -- Inserts the value stored in exampleVar into column1 and "SQL is cool" into column2. As you can see, you have to escape the quotes that SQL queries need to concatenate a variable.
  end
  
  print(sql.Query("SELECT * FROM UsefulGLua_sqlTutorial")) -- Selects * (ALL) from the table. So, it's printing everything we just put in right out into the console.
    
  -- Now that you have a basic understanding, you can reference https://www.w3schools.com/sql/default.asp to help you in your journey. w3schools is a fantastic resource for learning different facets of web development, SQL included.
end


-- 2. Placeholder text
