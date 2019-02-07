def ftoc(f)
    (f - 32) * 5 / 9
end

def ctof(c)
    c = c.to_f
    (c * 9 / 5) + 32
end