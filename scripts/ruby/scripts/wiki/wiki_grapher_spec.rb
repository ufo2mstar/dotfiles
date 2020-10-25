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

describe "wiki_print" do
  after() do
    # STDOUT.puts $stdout.string
    # STDOUT.puts $stdout
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

    it 'preset_eeylops_slapshot_combined' do
      sections = prepare_yml 'eeylops_slapshot_combined'
      print_sections sections, 2
    end

    it 'preset_eeylops_slapshot_indiv' do
      sections = prepare_yml 'eeylops_slapshot_sections'
      template = prepare_yml 'eeylops_slapshot_template'
      print_sections sections, 2, template
    end
  end
end
