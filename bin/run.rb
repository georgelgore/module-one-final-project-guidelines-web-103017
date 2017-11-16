require_relative '../config/environment.rb'
require_relative '../lib/api_communicator.rb'
require_relative '../lib/command_line_interface.rb'

# quit = false
# while !quit
#   main_menu
#   input = choose_search
#   #binding.pry
#   if input == "1"
#     name = get_name_from_user
#     search_by_name(name)
#   elsif input == "2"
#
#     under_development
#   elsif input == "exit"
#     quit = true
#   end
# end

main_menu
