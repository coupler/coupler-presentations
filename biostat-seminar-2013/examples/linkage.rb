require 'linkage'

parents = Linkage::Dataset.new(
  'postgres://example.com/foo',
  'parents')
children = Linkage::Dataset.new(
  'mysql://some-other-host.net/bar',
  'children')

config = parents.link_with(children) do
  lhs[:first_name].must ==
    rhs[:parent_first_name]
  lhs[:last_name].must ==
    rhs[:parent_last_name]
  lhs[:last_name].must_not ==
    "Smith"
  save_results_in('sqlite://results.db')
end
