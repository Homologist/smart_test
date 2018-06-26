RSpec.describe SmartTest do
  it "has a version number" do
    expect(SmartTest::VERSION).not_to be nil
  end

  it "run cli" do
    expect{SmartTest.run ["spec/fixtures/webserver.log"]}.to output().to_stdout
  end
end
