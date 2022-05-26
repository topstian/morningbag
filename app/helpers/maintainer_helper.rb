# Main maintainers helper
module MaintainerHelper
  attr_accessor :input, :output

  def initialize(input)
    @input = input
    @output = nil
  end
end
