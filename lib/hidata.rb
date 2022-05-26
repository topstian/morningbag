# High intensity data wrapper
# Running with Redis + Hiredis
module Hidata
  class << self
    # Setups a new connection using Redis + Hiredis
    # @return [ConnectionPool] A pool with the connections reserved to be used
    def link
      ConnectionPool.new(size: ENV.fetch('HIDATA_CONNECTION_POOL_SIZE', 12).to_i,
                         timeout: ENV.fetch('HIDATA_CONNECTION_POOL_TIMEOUT', 10).to_i) do
        Redis.new(url: ENV.fetch('HIDATA_URL', 'redis://hidata:6379/0'), driver: :hiredis)
      end
    end
  end
end
