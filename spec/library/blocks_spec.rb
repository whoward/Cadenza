# frozen_string_literal: true

require 'spec_helper'

describe Cadenza::Library::Functions do
  let(:library) do
    Cadenza::Library.build do
      define_filter(:escape) { |input, _params| CGI.escapeHTML(input) }

      define_block :filter do |context, nodes, parameters|
        filter = parameters.first.identifier

        nodes.inject('') do |output, child|
          node_text = Cadenza::TextRenderer.render(child, context)
          output + context.evaluate_filter(filter, node_text)
        end
      end
    end
  end

  let(:context_class) do
    klass = Class.new(Cadenza::Context)
    klass.send(:include, library)
    klass
  end

  let(:context) { context_class.new }

  let(:escape) { Cadenza::VariableNode.new('escape') }

  context '#define_block' do
    it 'should define the block' do
      expect(library.blocks[:filter]).to be_a Proc
    end

    it 'should evaluate a block' do
      text = Cadenza::TextNode.new('<h1>Hello World!</h1>')

      output = library.evaluate_block(:filter, context, [text], [escape])

      expect(output).to eq('&lt;h1&gt;Hello World!&lt;/h1&gt;')
    end

    it 'should raise a BlockNotDefinedError if the block is not defined' do
      expect do
        library.evaluate_block(:foo, context, [], [])
      end.to raise_error Cadenza::BlockNotDefinedError
    end
  end

  context '#lookup_block' do
    it 'returns the given block' do
      expect(library.lookup_block(:filter)).to be_a Proc
    end

    it 'raises a BlockNotDefinedError if the block is not defined' do
      expect do
        library.lookup_block(:fake)
      end.to raise_error Cadenza::BlockNotDefinedError
    end
  end

  context '#alias_block' do
    it 'returns nil' do
      expect(library.alias_block(:filter, :apply)).to be_nil
    end

    it 'duplicates the block under a different name' do
      library.alias_block(:filter, :apply)

      text = Cadenza::TextNode.new('<h1>Hello World!</h1>')

      output = library.evaluate_block(:apply, context, [text], [escape])

      expect(output).to eq('&lt;h1&gt;Hello World!&lt;/h1&gt;')
    end

    it 'raises a BlockNotDefinedError if the source variable is not defined' do
      expect do
        library.alias_block(:fake, :something)
      end.to raise_error Cadenza::BlockNotDefinedError
    end
  end
end
