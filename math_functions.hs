-- here you must use ghci on terminal
-- to use one of those functions you just type the name of the function then the number

double x = x + x

circleArea r = pi * r^2


-- 'where' are used only local, to use anywhere you must use 'let'
triangleArea a b c = sqrt (s * (s - a) * (s - b) * (s - c))
    where 
        s = (a + b + c) / 2