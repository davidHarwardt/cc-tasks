
function dig_col(h)
    for i=1,h do
        turtle.digUp()
        turtle.up()
    end
    for i=1,h do turtle.down() end
end

function dig_plane(w, h)
    turtle.turnRight()
    for i=1,w do
        turtle.dig()
        turtle.forward()
        dig_col(h)
    end
    for i=1,w do turtle.back() end
    turtle.turnLeft()
end

function stairs(w, h, d)
    for i=1,d do
        turtle.digDown()
        turtle.down()
        dig_plane(w, h)
        turtle.dig()
        turtle.forward()
    end
end

stairs(3, 4, 5)

