#fibonacci method without recursion, returns whole sequence
def fibs(n)
  sequence = []
  0.upto(n) do |i|
    i < 2 ? sequence.push(i) : sequence.push(sequence[i-1] + sequence[i-2])
  end
  sequence
end

#fibonacci method with recursion, returns value at specific spot
def fibs_rec(n)
  n < 2 ? n : fibs_rec(n-1) + fibs_rec(n-2)
end

fibonacci = []
(0..10).each { |i| fibonacci.push(fibs_rec(i)) }
p fibonacci

p fibs(10)
