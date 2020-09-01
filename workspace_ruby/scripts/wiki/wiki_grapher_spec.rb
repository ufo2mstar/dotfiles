require 'yaml'
require_relative './wiki_grapher'

# foo = StringIO.new
# $stdout = foo
#
# # Send some text to $stdout.
# puts 'hi'
# puts 'bye'
#
# # Access the data written to standard output.
# $stdout.string
# # => "hi\nbye\n"
#
# # Send your captured output to the original output stream.
# STDOUT.puts $stdout.string

describe "csv parse" do
  after() do
    STDOUT.puts $stdout.string
  end
  context "kod" do
    it 'kod' do
      puts 'x'
    end
    it 'preset_slapshot_indiv' do
      sections = prepare_yml 'sections'
      template = prepare_yml 'template'
      print_sections sections, 3, template
    end
# preset_slapshot_indiv

    it 'preset_eeylops_slapshot_combined' do
      sections = prepare_yml 'eeylops_slapshot_combined'
      print_sections sections, 2
    end
# preset_eeylops_slapshot_combined

    it 'preset_eeylops_slapshot_indiv' do
      sections = prepare_yml 'eeylops_slapshot_sections'
      template = prepare_yml 'eeylops_slapshot_template'
      print_sections sections, 2, template
    end
      # preset_eeylops_slapshot_indiv
  end
end
