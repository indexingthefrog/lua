-- creds to dontbanimtoocool for the api link <3
local msg = 'hello'
local numbs = '12345'
local url = "api.hashify.net/hash/sha256/hex?value=" .. msg
local request = request or http.request or syn.request

function sha256(message)
    if typeof(message) == 'string' then
        local r = request(
            {
                Url = url,
                Method = "GET",
                Headers = {
                    ["Content-Type"] = "application/json",
                    ["user-agent"] = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36"
                },
            Body = game:GetService("HttpService"):JSONEncode({text = message})
            }
        )
    return r.Body
    end
end


function salt(len) 
    local res = ''
        if typeof(length) ~= 'string' and len > 0 then 
            for i = 1,len do 
                res = res .. string.char(math.random(97, 122)) .. string.sub(numbs,math.random(1,#numbs))
            end
        return res
    end
end


local slt = salt(25)
local mg = msg..slt
local sha = sha256(mg)

print('salt id output : ' .. mg)
print('sha256 output : ' .. sha) -- example: hello + salt = 412a108e202c0956bb7f3c5e5708ff2ecd38052feb87062a26ec0ca121a71338
setclipboard('copied to clipboard! : ' .. sha)
