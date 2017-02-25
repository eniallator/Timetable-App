local keys = {}

local function updateKeys(key, newMode)
  keys.currKey = newMode and key or keys.currKey ~= key and keys.currKey
  keys[key] = newMode
end

function love.keypressed(key)
  updateKeys(key, true)
end

function love.keyreleased(key)
  updateKeys(key, false)
end

return keys
