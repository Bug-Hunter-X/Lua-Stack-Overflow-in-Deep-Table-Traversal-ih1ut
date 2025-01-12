local function foo(t)
  local q = {}
  q[#q+1] = t
  while #q > 0 do
    local current = q[1]
    table.remove(q, 1)
    for k, v in pairs(current) do
      if type(v) == "table" then
        q[#q+1] = v
      end
    end
  end
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t)

--This iteratively processes nested tables and avoids a stack overflow error.