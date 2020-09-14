require 'erb'
require 'yaml'

sections = {
    'Eeylops' => {
        'Sent' => {
            'Email' => 'default',
            'SMS' => 'default',
            'PUSH': 'default',
        },
        'carrierType' => {
            'AMXL' => 'default',
            '3P' => 'default',
            'OTHER' => 'default',
        }
    }
}
File.open("sample.yml", "w") { |file| file.write(sections.to_yaml) }


def get_items()
  ['bread', 'milk', 'eggs', 'spam']
end

def get_template()
  %{
        Shopping List for <%= @date.strftime('%A, %d %B %Y') %>

        You need to buy:

          <% for @col in @items %>
            <%= h(@item) %>
            <%= h(@item) %>
          <% end %>
  }
end

class WikiGrapher
  include ERB::Util
  attr_accessor :sections, :template, :date

  def initialize(items, template, date = Time.now)
    @date = date
    @sections = items
    @template = template
  end

  def render()
    ERB.new(@template).result(binding)
  end

  def save(file)
    File.open(file, "w+") do |f|
      f.write(render)
    end
  end

end

list = WikiGrapher.new(get_items, get_template)
# puts list
# puts list.render
# puts ENV['HOME']
# list.save(File.join(ENV['HOME'], 'list.html'))
# list.save(File.join('.', 'list.html'))


def get_sections()

end

def get_template2()
  %{
          <% for @section in @sections %>
            <%= h(@section) %>
          <% end %>

  }
end

class WikiGrapher
  include ERB::Util
  attr_accessor :sections, :template, :date

  def initialize(sections, template, date = Time.now)
    @sections = sections
    @template = template
    @date = date
  end

  def render()
    ERB.new(@template).result(binding)
  end

  def save(file)
    File.open(file, "w+") do |f|
      f.write(render)
    end
  end

end

# =============
#
wiki = WikiGrapher.new(get_sections, get_template2)
puts wiki.render
