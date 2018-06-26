Given("a log files") do
  @path = "spec/fixtures/webserver.log"
end

Then("I output the result by most views") do
  expect{SmartTest.run(["spec/fixtures/webserver.log"])}.to output.to_stdout()
end

Then("I output the result by most unique page views") do
  expect{SmartTest.run(["spec/fixtures/webserver.log", "uniq"])}.to output.to_stdout()
end
