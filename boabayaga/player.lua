player = {}

player.body = CharacterBody(player)
player.sprite = Sprite(1)
player.gravity = 3

function player:draw()
    self.sprite.draw()
end

function player:update()
    self.sprite.position.x = self.body.position.x
    self.sprite.position.y = self.body.position.y

    self.body.velocity.x = tonum(btn(Input.right)) - tonum(btn(Input.left))
    self.body.velocity.y += player.gravity
    self.body.move()

end
