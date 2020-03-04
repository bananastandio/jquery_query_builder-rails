module JqueryQueryBuilder
  module Operators
    class Contains
      def evaluate(left, right)
        return false if left.nil? # If the value isn't even defined, then assume that it is not in it.
        left.include?(right)
      end
    end
  end
end
