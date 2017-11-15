require_relative '../config/environment.rb'
require_relative '../lib/api_communicator.rb'
require_relative '../lib/command_line_interface.rb'

welcome
binding.pry
input = choose_search

if input == "1"
  name = get_name_from_user
  search_by_name(name)
elsif input == "2"
  under_development
end
