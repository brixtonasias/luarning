-- read console input
print("Please enter a number:")
line = io.read()
-- try to convert to number
n = tonumber(line)
-- if conversion fales -> nil is returned
if n == nil then
  -- print an error
  error(line .. " is not a valid number")
else
  -- multiply with 2
  factor = 2
  print(n .. "*" .. factor .. "=" .. n*2)
end