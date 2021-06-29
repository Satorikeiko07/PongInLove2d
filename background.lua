background = {}

function background:load()
    self.universe = love.graphics.newImage("assets/baccround.png")
    self.stars = love.graphics.newImage("assets/stars.png")
    self.width = self.universe:getWidth()
    self.height = self.universe:getWidth()
    self.rotation = 0
end

function background:update(dt)
    self.rotation = self.rotation + 0.05 * dt
end

function background:draw()
    love.graphics.draw(self.universe, 0, 0)
    love.graphics.draw(self.stars, self.width / 2, self.height / 2, self.rotation, 1, 1, self.width / 2, self.height / 2)
end