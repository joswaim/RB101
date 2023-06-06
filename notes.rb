# def roundRobin(jobs, slice, index)
#   jobs.each do |num|
#     p num.step(0, -slice) { |value| p value }
#   end
# end

# def roundRobin(jobs, slice, index)
#   p jobs[index] / slice + 1 if jobs[index] % slice != 0
#   jobs[index] - 
# end

# def roundRobin(jobs, slice, index)
#   mod1 = jobs[index] / slice
#   mod2 = jobs[index] % slice != 0 ? 1 : 0
#   answer = jobs.map { |num| num - slice * (mod1 + mod2) }.sum + jobs.sum - (slice * index)
#   answer + jobs[index] % slice
# end

# def roundRobin(jobs, slice, index)
#   mod1 = jobs[index] / slice
#   mod2 = jobs[index] % slice != 0 ? 1 : 0
#   answer = jobs.map { |num| num - slice * (mod1 + mod2) }.sum + jobs.sum - (slice * (jobs.count - 1))
  
# end

# p roundRobin([10, 20, 1], 5, 0)


def spacey(array)
  ending_num = array.size
  answer = []
  answer.append(array[0])
  until answer.size == ending_num
    the_next_index = array.shift + array.shift
    answer.append(the_next_index)
    array.prepend(the_next_index)
  end
  answer
end

spacey(['kevin', 'has','no','space'])
