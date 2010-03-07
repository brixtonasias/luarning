require("luarocks.require")
-- load the http module
local io = require("io")
local http = require("socket.http")
local ltn12 = require("ltn12")

print("Enter username: ")
username = io.read()
print("Enter password: ")
password = io.read()

authentication = username .. ":" .. password
-- use rss / json / xml
myurl = "http://" .. authentication ..  "@api.twitter.com/1/statuses/friends_timeline.xml"

-- connect to server twitter
-- and print the result to stdout
http.request{ 
    url = myurl, 
    sink = ltn12.sink.file(io.stdout)
}