def proc_method
  num = Proc.new { return 1 }
  num.call 
  2
end

puts proc_method

def lambda_method
  num = lambda { return 1 }
  num.call 
  2
end

puts lambda_method
