local function smoothScroll(target)
    local element = document:getElementById(target)
    if element then
        element:scrollIntoView({behavior = "smooth"})
    end
end

local anchors = document:querySelectorAll('a[href^="#"]')
for _, anchor in ipairs(anchors) do
    anchor:addEventListener('click', function(event)
        event:preventDefault()
        local targetId = anchor:getAttribute('href'):sub(
