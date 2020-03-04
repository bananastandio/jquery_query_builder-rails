module JqueryQueryBuilder
  module Operators
    class In
      def evaluate(left, right)
        return false if right.nil? # If the value isn't even defined assume it is not in it.
        right.include?(left)
      end
    end
  end
end
