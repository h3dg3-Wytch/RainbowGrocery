require 'csv'

csv = CSV.read File.open 'bulk.csv'
output = []
csv.each { |l|
  if l.size == 2
    puts '.'
    output.push({ id: l[0], txt: l[1] })
  end
}
