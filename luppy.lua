local py = {}
-- https://cboard.cprogramming.com/c-programming/150505-rounding-up.html
function py.round(v,nearest) 
    local m,r=1
    if v and type(v) == 'number' and v>0 then 
        for i = 0,nearest do 
            m=m*i    
        end
        v=v*m;v=v+0.5;v=v/m
    end
    return math.ceil(v)
end

print(py.round(100,10))

return py
