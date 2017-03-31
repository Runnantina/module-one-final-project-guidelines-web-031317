#!/usr/bin/env ruby
require_relative '../config/environment.rb'
# require_relative "../lib/api_communicator.rb"
#
# require_relative "../lib/command_line_interface.rb"

cli = CommandLineInterface.new


# driver code here

cli.welcome
cli.need_three_wins 
