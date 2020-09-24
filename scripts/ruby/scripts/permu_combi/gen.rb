require 'json'
require 'amazing_print'

def generate_all_combinations
  [1, 2, 3, 4, 5, 6].repeated_permutation(4).to_a
end
# p generate_all_combinations

config = %w[
MissingOptIn
NotOptIn
OptInPrimary
OptInPrimaryDiffAddress
OptInPrimaryDiffShipment
OptInPrimaryDiffAddressDiffShipment
OptInNotPrimary
OptInNotPrimaryDiffAddress
OptInNotPrimaryDiffShipment
OptInNotPrimaryDiffAddressDiffShipment
]

tots = []
# tots << config.combination(1).to_a
# tots << config.combination(2).to_a
tots << config.combination(3).to_a
# tots << config.repeated_combination(3).to_a
# tots << config.repeated_combination(2).to_a
p tots[0].size

res = {}
tots[0].each { |c| res[c.join('_')] = c}
# puts res.to_json
# ap res
# pp res.to_json
puts JSON.pretty_generate(res)
File.write('./res.json', JSON.dump(res))
File.write('./clean_res.json', JSON.pretty_generate(res))
