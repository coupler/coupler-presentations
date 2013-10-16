require 'rubygems'
require 'forgery'
require 'blundersaur'

demographics = File.open('demographics.csv', 'w')
demographics.puts "id,first,last,ssn,dob"
visits_1 = File.open('visits_1.csv', 'w')
visits_1.puts "visit_id,id,num,temp,sys,dia"
visits_2 = File.open('visits_2.csv', 'w')
visits_2.puts "visit_id,ssn,num,temp,sys,dia"
visits_3 = File.open('visits_3.csv', 'w')
visits_3.puts "visit_id,first,last,num,temp,sys,dia"

n = ARGV.empty? ? 50 + rand(100) : ARGV[0].to_i
visit_id = 0
n.times do |i|
  id    = i + 1
  first = Forgery(:name).first_name
  last  = Forgery(:name).last_name
  ssn   = "%09d" % rand(1000000000)
  dob   = Time.at(-946771200 + rand(1893456000)).strftime("%Y-%m-%d")  # 1940-01-01 to 2000-01-01
  demographics.puts [id, first, last, ssn, dob].join(",")

  tmp = rand(40)
  base_sys = 90 + tmp
  base_dia = 60 + (tmp / 2)
  rand(5).times do |j|
    visit_id += 1
    num  = j+1
    temp = 95 + rand(5)
    sys  = base_sys + rand(10)
    dia  = base_dia + rand(5)

    visits_1.puts [visit_id, id, num, temp, sys, dia].join(",")
    bad_ssn = rand(2) == 1 ? ssn.random_mistake : ssn
    #if bad_ssn.to_i > 2147483647
      ## BUG WORKAROUND! :(
      #bad_ssn = ssn
    #end
    visits_2.puts [visit_id, bad_ssn, num, temp, sys, dia].join(",")
    visits_3.puts [
      visit_id,
      rand(2) == 1 ? first.random_mistake : first,
      rand(2) == 1 ? last.random_mistake : last,
      num, temp, sys, dia
    ].join(",")
  end
end
