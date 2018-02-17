# frozen_string_literal: true

module Cadenza
  # The {GenericBlockNode} allows the end user of Cadenza to provide custom
  # block rendering logic via a proc defined on {Context}.
  class GenericBlockNode
    include TreeNode

    # @return [String] the name of the block as defined in {Context}
    attr_accessor :identifier

    # @return [Array] a list of Node objects which are this block's child nodes
    attr_accessor :children

    # @return [Array] a list of Node objects which hold the value of parameters
    #                 passed to this block.
    attr_accessor :parameters

    # Creates a new generic block with the given name, children and parameters.
    # @param [String] identifier the name of the node as defined in {Context}
    # @param [Array] children the child nodes belonging to this block
    # @param [Array] parameters the nodes holding the value of parameters
    #                passed to this block.
    def initialize(identifier, children, parameters = [])
      @identifier = identifier
      @children = children
      @parameters = parameters
    end

    # @param [GenericBlockNode] other
    # @return [Boolean] true if the given node is equivalent by value to the
    #                   current node.
    def ==(other)
      @identifier == other.identifier &&
        @children == other.children &&
        @parameters == other.parameters
    end
  end
end
