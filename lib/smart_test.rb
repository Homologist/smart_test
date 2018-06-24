#!/usr/bin/env ruby
require_relative "smart_test/version"
require_relative "smart_test/mapper"
require_relative "smart_test/sort"

module SmartTest
  def self.run(args = nil)
    path       =  args[0]
    parsed_log = Mapper.new(path: path).parse
    if args[1] == "uniq"
      sorted_log = Sort.new(log: parsed_log).sort_by_most_unique_page_views
    else
      sorted_log = Sort.new(log: parsed_log).sort_by_most_views
    end
    puts sorted_log
  end
end
