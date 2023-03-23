
function line(l, d)
    for i=1,l do
        dig_col(d)
        turtle.dig()
        turtle.forward()
    end
end

function turn_dir(i)
    if (i % 2) == 1 then
        turtle.turnRight()
    else
        turtle.turnLeft()
    end
end

function dig_col(depth)
    for i=1,depth do
        turtle.digDown()
        turtle.down()
    end
    for i=1,depth do turtle.up() end
end

function hole(w, h, d)
    for i=1,w do
        line(h, d)
        turtle.back()
        turn_dir(i)
        turtle.dig()
        turtle.forward()
        turn_dir(i)
    end
end

hole(5, 5, 5)

