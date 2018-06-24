Given("a log files") do
  @path = "spec/fixtures/webserver.log"
end

When("I parse the file") do
  @parsed_log = Mapper.new(path: @path).parse
end

When("I sort the file by most views") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I output the result by most views") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I sort the file by most unique page views") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I output the result by most unique page views") do
  pending # Write code here that turns the phrase above into concrete actions
end
