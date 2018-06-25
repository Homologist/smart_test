Given("a log files") do
  @path = "spec/fixtures/webserver.log"
end

When("I parse the file") do
  @parsed_log = Mapper.new(path: @path).parse
end

When("I sort the file by most views") do
  @ordered_list = Sort.new(log: @parsed_log).sort_by_most_views
end

Then("I output the result by most views") do
  SmartTest.run(["spec/fixtures/webserver.log"])
end

When("I sort the file by most unique page views") do
  @ordered_list = Sort.new(log: @parsed_log).sort_by_most_unique_page_views
end

Then("I output the result by most unique page views") do
  SmartTest.run(["spec/fixtures/webserver.log", "uniq"])
end
