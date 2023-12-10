function Vector2(xp, yp)
    return {
        x = xp,
        y = yp
    }
end


Input = {
    up = ⬆️,
    down = ⬇️,
    left = ⬅️,
    right = ➡️,
    x = ❎,
    o = 🅾️
}


function CharacterBody()
    local body = {}

    body.position = Vector2(0,0)
    body.velocity = Vector2(0,0)

    body.move = function()
        body.position.x += body.velocity.x
        body.position.y += body.velocity.y
        return body.position
    end

    return body
end


function Sprite(index, w, h)
    w = 1 or w
    h = 1 or h

    local sprite = {}
    sprite.position = Vector2(0,0)
    sprite.flip_h = false
    sprite.flip_v = false

    sprite.draw = function()
        spr(index, sprite.position.x, sprite.position.y, w, h, sprite.flip_h, sprite.flip_v)
    end
    
    return sprite
end