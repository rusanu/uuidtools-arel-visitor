require 'uuidtools'

module UUIDTools
  class UUID
    def quoted_id
      s = raw.unpack("H*")[0]
      "x'#{s}'"
    end
  end
end

