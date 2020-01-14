

ItemMenuState = Class{__includes = BaseState}

function ItemMenuState:init(player)
    self.player = player
    self.inventory = player.inventory

    local itemList = {}
    for k, item in pairs(self.inventory.items) do
        table.insert(itemList, {
            text = item.def.name .. ' : ' .. item.noHeld,
            onSelect = function()
                gStateStack:push(DialogueState(item.def.text, function()
                end)) 
            end
        })
    end
    
    table.insert(itemList, {
        text = 'Exit',
        onSelect = function()
            gStateStack:pop()
        end
    })

    self.itemMenu = Menu{
        x = 0,
        y = 0,
        width = 3 * (VIRTUAL_WIDTH / 4),
        height = VIRTUAL_HEIGHT,
        color = GREY,
        top = true,
        cursor = true,
        justify = 'left',
        items = itemList
    }
end

function ItemMenuState:update(dt)
    self.itemMenu:update(dt)
end

function ItemMenuState:render()
    self.itemMenu:render()
end