
local actor={}

-- override event from blueprint
function actor:ReceiveBeginPlay()
    self.bCanEverTick = true
    -- set bCanBeDamaged property in parent
    self.bCanBeDamaged = false
    print("vinjn:ReceiveBeginPlay")
end

-- override event from blueprint
function actor:ReceiveEndPlay(reason)
    print("vinjn:ReceiveEndPlay")
end

function actor:Tick(dt)
    print("vinjn:Tick",self,dt)
    -- call actor function
    local pos = self:K2_GetActorLocation()
    -- can pass self as Actor*
    local dist = self:GetHorizontalDistanceTo(self)
    print("vinjn pos",pos,dist)
end

return actor 