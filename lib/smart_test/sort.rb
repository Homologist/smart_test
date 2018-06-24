class Sort
  def initialize log:
    @log = log
  end

  def sort_by_most_views
    @log.map do |hash|
      hash[:count] = @log.select{|list| hash[:page] == list[:page] }.count
      hash
    end.sort_by{|hash| hash[:count] }.reverse
  end

  def sort_by_most_unique_page_views
    @log.uniq!{|log| [log[:visitor], log[:page]] }
    @log.map do |hash|
      hash[:count] = @log.select{|log| hash[:page] == log[:page] }.count
      hash
    end.sort_by{|hash| hash[:count] }.reverse
  end
end
