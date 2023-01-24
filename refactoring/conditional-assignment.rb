variable = nil
puts variable

variable ||= "default value"
puts variable

variable ||= "another default value"
puts variable

variable = "new value"
puts variable
