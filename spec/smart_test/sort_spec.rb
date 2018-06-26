RSpec.describe Sort do
  before :each do
    @list = []
    @list << @first  = {page: "foo", visitor: "42"}
    @list << @second = {page: "foo", visitor: "43"}
    @list << @third  = {page: "bar", visitor: "44"}
    @list << @fourth ={page: "foo", visitor: "43"}
  end

  it "sort list by most views" do
    expect(Sort.new(log: @list).sort_by_most_views).to eq([@second, @fourth, @first, @third])
  end

  it "sort list by most unique views" do
    expect(Sort.new(log: @list).sort_by_most_unique_page_views).to eq([@second, @first, @third])
  end
end
