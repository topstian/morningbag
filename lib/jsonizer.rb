# JSON Serialization wrapper
# Running with Oj
module Jsonizer
  class << self
    # Load from JSON String into a workable Hash
    # @param *args [String] A String is required
    # @return [Hash]
    def load(*args)
      Oj.load(*args)
    end

    # Dump from Hash into a JSON String
    # @params *args [Hash] A Hash is required
    # @return [String]
    def dump(*args)
      Oj.dump(*args)
    end
  end
end
