


Menu = Class{}

function Menu:init(def)
    self.panel = Panel(def.x, def.y, def.width, def.height, def.color)

    self.selection = Selection {
        items = def.items,
        x = def.x,
        y = def.y,
        width = def.width,
        height = def.height,
        cursor = def.cursor
    }
end

function Menu:update(dt)
    self.selection:update(dt)
end

function Menu:render()
    self.panel:render()
    self.selection:render()
end