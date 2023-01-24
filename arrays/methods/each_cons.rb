# each_cons (each consecutive group of elements)
numbers = [1, 3, 5, 8, 9, 4]
print numbers.each_cons(2).map { |x, y| x > y ? x - y : y - x }

random_groups = [1, 5, 2, 5, 3, 5, 2, 7, 4, 4, 7, 2, 9, 2, 5, 3, 7]
print random_groups.each_cons(3).map { |x, y, z| [x, y, z].sort!}
