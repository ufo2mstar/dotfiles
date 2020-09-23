require 'yaml'

# settings -------
DEFAULT_W = 550
DEFAULT_H = 300
DEFAULT_LAYOUT = 'default'

# code --------
LAYOUT = {
    'default' => ['60D1D', '4D1H', '5H5m'],
    'old_default' => ['30D1D', '7D1H', '8H5m']
}

TIME_UNIT_MAP = {
    'D' => 'Day',
    'H' => 'Hour',
}

PERIOD_MAP = {
    '1W' => 'OneWeek',
    '1D' => 'OneDay',
    '1H' => 'OneHour',
    '5m' => 'FiveMinute',
    '1s' => 'OneSecond', #? cloud watch does it, test..
}

# &StartTime1=-P7D&
# &StartTime1=-PT8H&
def make_time(time, unit)
  time_unit = TIME_UNIT_MAP[unit]
  time_prefix = time_unit =~ /H/ ? 'PT' : 'P'
  "#{time_prefix}#{time}#{unit}"
end

# &Period1=OneDay&
# &Period1=OneHour&
# &Period1=FiveMinute&
def make_period(period)
  PERIOD_MAP[period]
end

# ['60D1D', '4D1H', '5H5m']
# |=60 Day [1 day]|=4 Day [1 hr]|=5 Hour [5 min]
def make_title(time, unit, period)
  time_unit = TIME_UNIT_MAP[unit]
  "#{time} #{time_unit} [#{make_period(period)}]"
end

def time_period_parse(time_period)
  time, unit, period = time_period.match(/(\d+)(\w)(.*)/).captures
  [make_time(time, unit), make_period(period), make_title(time, unit, period)]
end

def fix_time_period graph, time, period
  graph
      .gsub(/&StartTime1=-([\w\d]+)&/, "&StartTime1=-#{time}&") #time
      .gsub(/&Period1=(\w+)&/, "&Period1=#{period}&") #period
end

#|width=550|height=300
def fix_sizes str, w = 550, h = 300
  str.gsub(/\|width=(\d+)\|height=(\d+)/, "|width=#{w}|height=#{h}")
end

def print_wikitable(graph, layout = 'default')
  cols = LAYOUT[layout]
  title_cols = []
  graph_cols = []
  cols.each do |time_period|
    time, period, pretty_title = time_period_parse time_period
    # "time #{time}, period #{period}"
    # add title
    title_cols << pretty_title
    # add graph
    size_fixed_graph = fix_sizes graph, DEFAULT_W, DEFAULT_H
    graph_cols << fix_time_period(size_fixed_graph, time, period)
  end

  # cols.print_title
  title_sep = '|='
  puts "#{title_sep}#{title_cols.join title_sep}"

  # cols.print_graphs
  puts '|'
  graph_sep = " |\n"
  puts graph_cols.join graph_sep
end

# will fail if value does not contain {{igraph ... }}
def quick_validate_and_clean(graph)
  return graph if graph.nil?
  # graph.match(/(\{\{igraph.*\}\})/)[0]
  match = graph.match(/^(\{\{igraph.*\}\})$/)
  match
end

def make_wiki_title(title_str, level = 1)
  tag = '=' * level
  "#{tag}#{title_str}#{tag}"
end

def quick_and_dirty_sub(sub_str, template_map)
  template_node = {}
  template_map.each { |title, graph| template_node[title] = graph.gsub(/DEFAULT_SIMPLE_SUB/,sub_str) }
  template_node
end

def process_str(obj, level, template_map)
  if quick_validate_and_clean obj
    print_wikitable obj
  elsif template_map
    template_node = quick_and_dirty_sub obj, template_map
    print_sections template_node, level + 1
  else
    raise 'didnt find a well-formed igraph.. so was expecting a template map!?'
  end
end

def print_sections(node, level = 1, template_map = nil)
  # obj == sections_or_graph_or_template_subs
  node.each do |title, obj|
    type = obj.class.to_s
    puts make_wiki_title title, level
    puts
    if type == "Hash"
      print_sections obj, level + 1, template_map
    elsif type == "String"
      process_str obj, level, template_map
    else
      raise 'yml not right!'
    end
    puts
    puts
  end
end

def print_comment(yml_str, title)
  puts '{{comment}}'
  (puts; puts title.capitalize; puts) if title
  puts yml_str
  puts '{{/comment}}'
  puts "\n\n"
end

# def prepare_yml filename
#   yml_str = File.read("./data/#{filename}.yml")
#   print_comment yml_str, filename
#   YAML.load(yml_str)
# end
