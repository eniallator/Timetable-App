local menu = {}
menu.currMenu = {}

local function drawMenu(menuTbl)
  local font = love.graphics.getFont()

  for i=1, #menuTbl do
    love.graphics.setColor(120, 120, 120)
    -- love.graphics.draw(menuTbl[i].texture, menuTbl[i].x, menuTbl[i].y, 0, menuTbl[i].w / menuTbl[i].texture:getWidth(), menuTbl[i].h / menuTbl[i].texture:getHeight())
    love.graphics.rectangle("fill", menuTbl[i].x, menuTbl[i].y, menuTbl[i].w, menuTbl[i].h)
    love.graphics.setColor(255, 255, 255)
    love.graphics.print(menuTbl[i].text, menuTbl[i].x + menuTbl[i].w / 2 - font:getWidth(menuTbl[i].text) / 2, menuTbl[i].y + menuTbl[i].h / 2 - font:getHeight(menuTbl[i].text) / 2)
  end
end

menu.update = function()

end

menu.draw = function()
  drawMenu(menu.currMenu)
end

return menu
