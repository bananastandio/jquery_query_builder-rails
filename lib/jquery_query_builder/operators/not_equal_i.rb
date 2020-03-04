module JqueryQueryBuilder
  module Operators
    class NotEqualI
      def evaluate(left, right)
        return false if left.nil? && !right.nil? # If the thing we're looking at is not defined, assume it's not not equal
        return false if left == right # If they're totally equal, even before assuming it's a string, then they're also not case-insenstive equal
        left.casecmp(right) != 0
      end
    end
  end
end
