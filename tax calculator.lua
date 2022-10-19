local x,v = 50,5 
local f = 0.06

function tax(o,e,b) 
    if o>0 then 
        return print('price: ' .. (o*e) .. '\n' .. 'price w sales tax: ' .. ((o*v) + (o*e)*b))
    end
end

tax(x,v,f)
