function love.load()
    x = 100
    y = 50
    width = 200
    height = 150
    rectangle_draw_mode = "fill"
    move_speed = 200
end

function love.draw()
    love.graphics.rectangle(rectangle_draw_mode, x, y, width, height)
end

function love.update(delta_time)
    if love.keyboard.isDown("up") then
        y = y - move_speed * delta_time
    end

    if love.keyboard.isDown("down") then
        y = y + move_speed * delta_time
    end

    if love.keyboard.isDown("right") then
        x = x + move_speed * delta_time
    end

    if love.keyboard.isDown("left") then
        x = x - move_speed * delta_time
    end
end
