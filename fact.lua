-- factorial funciton
function fact (n)
  if n == 0 then
    return 1
  elseif n < 0 then
    return nil
  else
    return n * fact(n-1)
  end
end
