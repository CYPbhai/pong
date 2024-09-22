Padel = Class {}
function Padel:init(x, y, width, height)
    self.x = x
    self.y = y
    self.width = width
    self.height = height
    self.dy = 0
end

function Padel:update(dt)
    if self.y < 0 then
        self.y = math.max(0, self.y + self.dy * dt)
    else
        self.y = math.min(VIRTUAL_HEIGHT - self.height, self.y + self.dy * dt)
    end
end

function Padel:render()
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end
