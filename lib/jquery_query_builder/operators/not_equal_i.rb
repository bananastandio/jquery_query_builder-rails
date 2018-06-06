module JqueryQueryBuilder
  module Operators
    class NotEqualI
      def evaluate(left, right)
        left.casecmp(right) != 0
      end
    end
  end
end
