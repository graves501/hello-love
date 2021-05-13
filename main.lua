local love = _G.love

function love.load()
    X = 100
    Y = 50
    WIDTH = 200
    HEIGHT = 150
    BOX_DRAW_MODE = "fill"
    MOVE_SPEED = 200
end

function love.draw()
    love.graphics.rectangle(BOX_DRAW_MODE, X, Y, WIDTH, HEIGHT)
end

function love.update(delta_time)
    if love.keyboard.isDown("up") then
        Y = Y - MOVE_SPEED * delta_time
    end

    if love.keyboard.isDown("down") then
        Y = Y + MOVE_SPEED * delta_time
    end

    if love.keyboard.isDown("right") then
        X = X + MOVE_SPEED * delta_time
    end

    if love.keyboard.isDown("left") then
        X = X - MOVE_SPEED * delta_time
    end
end
