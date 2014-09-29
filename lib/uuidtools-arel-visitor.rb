require 'uuidtools'

# from https://github.com/jashmenn/activeuuid/blob/master/lib/activeuuid/uuid.rb

module Arel
  module Visitors
    class DepthFirst < Arel::Visitors::Visitor
      def visit_UUIDTools_UUID(o, a = nil)
        o.quoted_id
      end
    end

    class MySQL < Arel::Visitors::ToSql
      def visit_UUIDTools_UUID(o, a = nil)
        o.quoted_id
      end
    end

    class SQLite < Arel::Visitors::ToSql
      def visit_UUIDTools_UUID(o, a = nil)
        o.quoted_id
      end
    end

    class PostgreSQL < Arel::Visitors::ToSql
      def visit_UUIDTools_UUID(o, a = nil)
        "'#{o.to_s}'"
      end
    end
  end
end

module UUIDTools
  class UUID
    def quoted_id
      s = raw.unpack("H*")[0]
      "x'#{s}'"
    end
  end
end

