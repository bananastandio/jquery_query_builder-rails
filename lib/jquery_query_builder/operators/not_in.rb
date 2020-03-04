module JqueryQueryBuilder
  module Operators
    class NotIn
      def evaluate(left, right)
        return false if right.nil? # If the value isn't even defined, then assume that it is not not in it.
        !right.include?(left)
      end
    end
  end
end
