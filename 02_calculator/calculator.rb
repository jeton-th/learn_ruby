def add(a,b)
    a+b
end

def subtract(a,b)
    a-b
end

def sum(ar)
    sum = 0
    unless ar.empty?
        ar.each { |a|
            sum += a
        }
    end

    sum
end