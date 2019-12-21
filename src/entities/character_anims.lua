--[[
    GD50 
    Final Project

    Author: Daniel Schwartz
    daniel.schwartz.music@gmail.com

    -- entity definitions--

]]

CHARACTER_ANIMS = {
    ['main'] = {
        field = {
            ['walk-left'] = {
                texture = 'man',
                frames = {10, 11, 12, 11},
                interval = 0.15
            },
            ['walk-right'] = {
                texture = 'man',
                frames = {4, 5, 6, 5},
                interval = 0.15
            },
            ['walk-down'] = {
                texture = 'man',
                frames = {7, 8, 9, 8},
                interval = 0.15
            },
            ['walk-up'] = {
                texture = 'man',
                frames = {1, 2, 3, 2},
                interval = 0.15
            },
            ['idle-left'] = {
                texture = 'man',
                frames = {10}
            },
            ['idle-right'] = {
                texture = 'man',
                frames = {4}
            },
            ['idle-down'] = {
                texture = 'man',
                frames = {7}
            },
            ['idle-up'] = {
                texture = 'man',
                frames = {1}
            },
        },
        battle = {
            ['idle-right'] = {
                texture = 'man',
                frames = {4}
            }
        }
    }
}