[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# => [1, nil, nil]
# On the first iteration inside the block as 1 > 1 is false. Num is the last expression executed, therefore num (1) is returned. On the other two iterations inside the if conditional "puts num" is executed (puts always return nil), so the return values from the block are nil (on those iterations).
