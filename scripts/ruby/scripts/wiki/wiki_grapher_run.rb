
def prepare_yml filename
  yml_str = File.read("./data/#{filename}.yml")
  print_comment yml_str, filename
  YAML.load(yml_str)
end

# ---------
puts "\n\n#{'-' * 80}\n\n"

def preset_slapshot_indiv
  sections = prepare_yml 'sections'
  template = prepare_yml 'template'
  print_sections sections, 3, template
end
# preset_slapshot_indiv

def preset_eeylops_slapshot_combined
  sections = prepare_yml 'eeylops_slapshot_combined'
  print_sections sections, 2
end
# preset_eeylops_slapshot_combined

def preset_eeylops_slapshot_indiv
  sections = prepare_yml 'eeylops_slapshot_sections'
  template = prepare_yml 'eeylops_slapshot_template'
  print_sections sections, 2, template
end
preset_eeylops_slapshot_indiv
