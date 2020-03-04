module JqueryQueryBuilder
  module Operators
    class EqualI
      def evaluate(left, right)
        return false if left.nil? # If the thing we're looking at is not defined, assume it's not equal
        return true if left == right # If they're totally equal, even before assuming it's a string, then they're also case-insenstive equal
        left.casecmp(right) == 0
      end
    end
  end
end


