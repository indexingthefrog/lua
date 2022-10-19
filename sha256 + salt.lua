local msg = 'hello'
local numbs = '12345'
local hash = crypt.hash or syn.crypt.hash
local type = type or typeof
local char = string.char 
local sub = string.sub
local lower = string.lower

function sha256(k) 
    if type(k) == 'string' and k~=nil and k~='' then 
      return hash(k,'sha256')  
    end
end

function salt(len) 
    local res = ''
        if typeof(length) ~= 'string' and len > 0 then 
            for i = 1,len do 
                res = res .. char(math.random(97, 122)) .. sub(numbs,math.random(1,#numbs))
            end
        return res
    end
end
local slt = salt(64)
local mg = msg .. slt
local sha = sha256(mg)


print('salt id output : ' .. mg)
print('sha256 output (copied to clipboard!): ' .. lower(sha)) -- example: hello + salt = 412a108e202c0956bb7f3c5e5708ff2ecd38052feb87062a26ec0ca121a71338
setclipboard(lower(sha))
