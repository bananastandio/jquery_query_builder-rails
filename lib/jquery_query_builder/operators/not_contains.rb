module JqueryQueryBuilder
  module Operators
    class NotContains
      def evaluate(left, right)
        return false if left.nil? # If the value isn't even defined, then assume that it is not not in it.
        !left.include?(right)
      end
    end
  end
end
