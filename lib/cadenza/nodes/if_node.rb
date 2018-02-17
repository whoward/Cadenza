# frozen_string_literal: true

module Cadenza
  # The {IfNode} is a structure for rendering one of it's two given blocks
  # based on the evaluation of an expression in the current {Context}.
  class IfNode
    include TreeNode

    # @return [OperationNode|BooleanInverseNode] the evaluatable expression
    #         used to determine which set of nodes to render.
    attr_accessor :expression

    # @return [Array] A list of nodes which will be rendered if the {#expression}
    #                 evaluates to true in the given {Context}.
    attr_accessor :true_children

    # @return [Array] A list of nodes which will be rendered if the {#expression}
    #                 evaluates to false in the given {Context}.
    attr_accessor :false_children

    # creates a new {IfNode} with the given evaluatable expression and pair of
    # blocks.
    # @param [OperationNode|BooleanInverseNode] expression the expression to evaluate
    # @param [Array] true_children a list of Node objects which will be rendered
    #        if the {#expression} evaluates to true in the given {Context}.
    # @param [Array] false_children a list of Node objects which will be
    #        rendered if the {#expression} evaluates to false in the given {Context}.
    def initialize(expression, true_children = [], false_children = [])
      @expression = expression
      @true_children = true_children
      @false_children = false_children
    end

    # @param [Context] context
    # @return [Array] evalutes the expression in the given context and returns
    #         a list of nodes which should be rendered based on the result of
    #         that evaluation.
    def evaluate_expression_for_children(context)
      if truthyness_for_value(@expression.eval(context))
        @true_children
      else
        @false_children
      end
    end

    # @param [IfNode] other
    # @return [Boolean] true if the given node is equivalent by value to this node.
    def ==(other)
      @expression == other.expression &&
        @true_children == other.true_children &&
        @false_children == other.false_children
    end

    private

    # @return [Boolean] returns the truthyness of the value given
    def truthyness_for_value(value)
      case value
      when Float, Integer then value != 0 # non-zero numbers are truthy
      when String then !value.strip.empty? # non-blank strings are truthy
      else !!value # everything else is coerced to a boolean (booleans are coerced to themselves)
      end
    end
  end
end
