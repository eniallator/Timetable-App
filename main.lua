function love.load(arg)
  screenDim = {}
  screenDim.x, screenDim.y = love.graphics.getDimensions()

  local font = love.graphics.newFont(screenDim.y / 25)
  love.graphics.setFont(font)

  menu = require "lib.menu"
  keys = require "lib.keys"
end

function love.update(dt)
  menu.update()
end

function love.draw()
  menu.draw()
end
