module JqueryQueryBuilder
  class RuleGroup
    attr_accessor :condition, :rules, :opts
    def initialize(rule_group_hash, opts)
      self.condition = rule_group_hash['condition']
      self.rules = rule_group_hash['rules']
      self.opts = opts
    end

    def evaluate(object, opts = {})
      case condition
      when "AND"
        rules.all?{|rule| get_rule_object(rule).evaluate(object) }
      when "OR"
        rules.any?{|rule| get_rule_object(rule).evaluate(object) }
      end
    end

    def get_rule_object(rule)
      if rule['rules'].present?
        RuleGroup.new(rule, opts)
      else
        Rule.new(rule, opts)
      end
    end
  end
end
