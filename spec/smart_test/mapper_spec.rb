RSpec.describe Mapper do
  it "run cli" do
    expect(Mapper.new(path: "spec/fixtures/webserver.log").parse.count).to eq(500)
  end
end
