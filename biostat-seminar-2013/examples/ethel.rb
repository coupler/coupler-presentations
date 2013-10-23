require 'ethel'

reader = Ethel::Reader['csv'].new({
  file: 'my-data.csv'
})
writer = Ethel::Writer['csv'].new({
  file: 'dataset.csv'
})
m = Ethel::Migration.new(reader, writer)

m.add_field('firstname', 'string')
m.add_field('lastname', 'string')
m.update do |row|
  row['firstname'], row['lastname'] =
    row['name'].split(" ")
end

m.select(['firstname', 'lastname', 'dob'])

reader_2 = Ethel::Reader['csv'].new({
  file: 'their-data.csv'
})
writer_2 = Ethel::Writer['memory'].new
m2 = Ethel::Migration.new(reader_2, writer_2)

m2.select(['firstname', 'lastname',
  'height', 'weight'])
m2.run

reader_3 = Ethel::Reader['memory'].new({
  data: writer_2.data
})
m.merge(reader_3,
  ['firstname', 'lastname'])
m.run
