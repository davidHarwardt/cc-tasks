
function break_tree()
    local h = 0
    while turtle.detect() do
        turtle.dig()
        turtle.digUp()
        turtle.up()
        h = h + 1
    end
    for i=0,h do turtle.down() end
end

function is_log()
    local found, ty = turtle.inspect()
    if not found then return false end
    return ty.tags["minecraft:logs"]
end

function main_loop()
    while not is_log() do sleep(5) end
    break_tree()
    turtle.place()
end

while true do main_loop() end

