#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.7
# from Racc grammer file "".
#

require 'racc/parser.rb'

# parser.rb : generated by racc
  
module Cadenza
  class Parser < Racc::Parser

module_eval(<<'...end cadenza.y/module_eval...', 'cadenza.y', 196)
attr_reader :lexer

def initialize(options={})
  @lexer = options.fetch(:lexer, Cadenza::Lexer.new)

  raise "Lexers passed to the parser must define next_token" unless @lexer.respond_to?(:next_token)

  raise "Lexers passed to the parser must define source=" unless @lexer.respond_to?(:source=)
end

def parse(source)
  @lexer.source = source

  @stack = [DocumentNode.new]

  do_parse

  @stack.first
end

def push_child(node)
  @stack.last.children.push(node)
end

def push_block(block_node)
  @stack.first.add_block(block_node)
  push_child(block_node)
end

def next_token
  @lexer.next_token
end
...end cadenza.y/module_eval...
##### State transition tables begin ###

racc_action_table = [
    35,     3,     3,   111,     4,    35,    86,    48,    21,    22,
    23,    24,     3,    35,     4,     8,     8,    99,    63,    64,
    83,    79,    35,    29,    35,    32,     8,   105,   118,    33,
    32,    79,    34,    71,    33,    36,    35,    34,    32,   138,
    36,    35,    33,    63,    64,    34,    81,    32,    36,    32,
    75,    33,   102,    33,    34,    81,    34,    36,   137,    36,
     3,    32,   135,    74,    75,    33,    32,   123,    34,    73,
    33,    36,    72,    34,     8,   115,    36,    48,    21,    22,
    23,    24,    48,    21,    22,    23,    24,    48,    21,    22,
    23,    24,   124,    29,   130,    63,    64,   126,    29,    66,
   124,    65,   125,    29,    20,    21,    22,    23,    24,    48,
    21,    22,    23,    24,    48,    21,    22,    23,    24,    83,
    29,    85,    69,    84,    68,    29,   110,     3,   109,   136,
    29,    48,    21,    22,    23,    24,    48,    21,    22,    23,
    24,     8,     3,     3,    37,    37,     3,    29,     4,     3,
   108,     4,    29,     3,   107,     4,     8,     8,   104,     3,
     8,   116,     3,     8,     4,   103,     3,     8,   111,     3,
     3,   111,     4,     8,    99,     3,     8,   119,    63,    64,
     8,    63,    64,     8,     8,    54,    55,    54,    55,     8,
    56,    57,    58,    59,    60,    61,    56,    57,    58,    59,
    60,    61,    48,    21,    22,    23,    24,    48,    21,    22,
    23,    24,    48,    21,    22,    23,    24,    48,    21,    22,
    23,    24,    48,    21,    22,    23,    24,    48,    21,    22,
    23,    24,    48,    21,    22,    23,    24,    48,    21,    22,
    23,    24,    48,    21,    22,    23,    24,    48,    21,    22,
    23,    24,    48,    21,    22,    23,    24,    54,    55,    54,
    55,    52,    53,    54,    55,    52,    53,    54,    55,    54,
    55,    52,    53,   133,    99,    47,    83,    44,    41,    16,
   139,   140 ]

racc_action_check = [
   116,   113,   127,   113,   127,   136,    51,    35,    35,    35,
    35,    35,   106,   119,   106,   113,   127,    85,    51,    51,
    70,    41,   111,    35,   135,   116,   106,    70,    81,   116,
   136,   116,   116,    35,   136,   116,    37,   136,   119,   136,
   136,     4,   119,    67,    67,   119,   119,   111,   119,   135,
   111,   111,    67,   135,   111,    44,   135,   111,   135,   135,
   128,    37,   128,    37,    37,    37,     4,    99,    37,    36,
     4,    37,    36,     4,   128,    79,     4,    83,    83,    83,
    83,    83,    20,    20,    20,    20,    20,    24,    24,    24,
    24,    24,   122,    83,   122,    31,    31,   103,    20,    31,
   101,    31,   101,    24,     3,     3,     3,     3,     3,   123,
   123,   123,   123,   123,    63,    63,    63,    63,    63,    50,
     3,    50,    34,    50,    33,   123,    75,   134,    74,   134,
    63,    64,    64,    64,    64,    64,    32,    32,    32,    32,
    32,   134,     5,    39,     5,    39,    40,    64,    40,     2,
    73,     2,    32,    43,    72,    43,     5,    39,    69,    80,
    40,    80,    46,     2,    46,    68,    78,    43,    78,    77,
     0,    77,     0,    80,   124,    82,    46,    82,   121,   121,
    78,    49,    49,    77,     0,    27,    27,    96,    96,    82,
    28,    28,    28,    28,    28,    28,    62,    62,    62,    62,
    62,    62,    53,    53,    53,    53,    53,    60,    60,    60,
    60,    60,    61,    61,    61,    61,    61,    58,    58,    58,
    58,    58,    54,    54,    54,    54,    54,    59,    59,    59,
    59,    59,    29,    29,    29,    29,    29,    52,    52,    52,
    52,    52,    56,    56,    56,    56,    56,    57,    57,    57,
    57,    57,    55,    55,    55,    55,    55,    95,    95,    94,
    94,    26,    26,    93,    93,    89,    89,    92,    92,    91,
    91,    90,    90,   126,    66,    16,   131,     7,     6,     1,
   137,   138 ]

racc_action_pointer = [
   146,   279,   125,   102,    39,   118,   252,   251,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   275,   nil,   nil,   nil,
    80,   nil,   nil,   nil,    85,   nil,   253,   175,   178,   230,
   nil,    76,   134,   122,   120,     5,    67,    34,   nil,   119,
   122,   -12,   nil,   129,    20,   nil,   138,   nil,   nil,   162,
    98,    -1,   235,   200,   220,   250,   240,   245,   215,   225,
   205,   210,   184,   112,   129,   nil,   272,    24,   133,   130,
    -1,   nil,   126,   122,   100,    98,   nil,   145,   142,    47,
   135,     0,   151,    75,   nil,    15,   nil,   nil,   nil,   257,
   263,   259,   257,   253,   249,   247,   177,   nil,   nil,    45,
   nil,    77,   nil,    95,   nil,   nil,   -12,   nil,   nil,   nil,
   nil,    20,   nil,   -23,   nil,   nil,    -2,   nil,   nil,    11,
   nil,   159,    69,   107,   172,   nil,   245,   -22,    36,   nil,
   nil,   255,   nil,   nil,   103,    22,     3,   252,   253,   nil,
   nil ]

racc_action_default = [
    -2,   -71,    -1,   -71,   -71,   -71,   -47,   -52,   -60,   -61,
   -62,   -63,   -64,   -65,   -67,   -69,   -71,   -66,   -68,   -70,
    -3,    -4,    -5,    -6,   -71,    -8,   -11,   -14,   -21,   -71,
   -23,   -71,   -71,   -71,   -71,   -71,   -71,   -71,   -39,   -71,
   -71,   -71,   -46,   -71,   -71,   -51,   -71,   141,    -3,   -26,
   -71,   -71,   -71,   -71,   -71,   -71,   -71,   -71,   -71,   -71,
   -71,   -71,   -22,   -71,   -71,   -32,   -71,   -71,   -71,   -71,
   -71,   -54,   -71,   -71,   -71,   -71,   -40,   -71,   -71,   -71,
   -71,   -71,   -71,   -71,   -34,   -71,    -7,    -9,   -10,   -12,
   -13,   -15,   -16,   -17,   -18,   -19,   -20,   -24,   -25,   -28,
   -30,   -71,   -36,   -71,   -49,   -56,   -71,   -58,   -59,   -37,
   -38,   -71,   -42,   -71,   -41,   -45,   -71,   -48,   -50,   -71,
   -53,   -27,   -71,   -71,   -71,   -33,   -71,   -71,   -71,   -43,
   -35,   -29,   -31,   -44,   -71,   -71,   -71,   -71,   -71,   -55,
   -57 ]

racc_goto_table = [
    17,    18,    38,    50,   101,    31,    40,    45,    19,    42,
     2,    87,    88,    97,    98,    39,    89,    90,    70,    43,
    62,    46,   106,   122,   127,   132,    51,    91,    92,    93,
    94,    95,    96,     1,    67,   nil,    76,    17,    18,   nil,
    77,   nil,   nil,   nil,   nil,    19,   nil,   nil,   nil,   nil,
    78,   nil,   nil,    80,   nil,   nil,    82,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   112,   114,    17,    18,    17,    18,
    17,    18,   120,   117,    19,   121,    19,   113,    19,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   131,   nil,   nil,   nil,
   129,    17,    18,   nil,   nil,   nil,   128,   nil,   nil,    19,
   nil,   nil,   nil,   nil,   nil,   nil,    17,    18,   nil,   nil,
   nil,   nil,    17,    18,    19,   nil,   nil,   134,   nil,   nil,
    19 ]

racc_goto_check = [
    29,    28,    15,     9,    11,     4,    14,    22,    23,    18,
     2,     3,     3,     8,     8,     2,     5,     5,     9,    20,
     7,    24,    26,    11,    27,    10,     4,     6,     6,     6,
     6,     6,     6,     1,     4,   nil,    15,    29,    28,   nil,
    14,   nil,   nil,   nil,   nil,    23,   nil,   nil,   nil,   nil,
     2,   nil,   nil,     2,   nil,   nil,     2,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,    15,    15,    29,    28,    29,    28,
    29,    28,    22,    18,    23,     4,    23,     2,    23,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,     9,   nil,   nil,   nil,
    15,    29,    28,   nil,   nil,   nil,     2,   nil,   nil,    23,
   nil,   nil,   nil,   nil,   nil,   nil,    29,    28,   nil,   nil,
   nil,   nil,    29,    28,    23,   nil,   nil,     2,   nil,   nil,
    23 ]

racc_goto_pointer = [
   nil,    33,    10,   -41,     2,   -38,   -29,    -9,   -50,   -17,
   -99,   -62,   nil,   nil,     1,    -3,   nil,   nil,     3,   nil,
    13,   nil,     0,     6,    14,   nil,   -49,   -81,    -1,    -2 ]

racc_goto_default = [
   nil,   nil,   nil,    25,    49,    26,    27,    28,    30,   nil,
   100,   nil,     9,     5,   nil,   nil,    10,     6,   nil,    11,
   nil,     7,   nil,    15,   nil,    12,   nil,   nil,    14,    13 ]

racc_reduce_table = [
  0, 0, :racc_error,
  1, 40, :_reduce_none,
  0, 40, :_reduce_2,
  1, 42, :_reduce_3,
  1, 42, :_reduce_4,
  1, 42, :_reduce_5,
  1, 42, :_reduce_6,
  3, 42, :_reduce_7,
  1, 44, :_reduce_none,
  3, 44, :_reduce_9,
  3, 44, :_reduce_10,
  1, 45, :_reduce_none,
  3, 45, :_reduce_12,
  3, 45, :_reduce_13,
  1, 46, :_reduce_none,
  3, 46, :_reduce_15,
  3, 46, :_reduce_16,
  3, 46, :_reduce_17,
  3, 46, :_reduce_18,
  3, 46, :_reduce_19,
  3, 46, :_reduce_20,
  1, 47, :_reduce_none,
  2, 47, :_reduce_22,
  1, 43, :_reduce_none,
  3, 43, :_reduce_24,
  3, 43, :_reduce_25,
  1, 48, :_reduce_26,
  3, 48, :_reduce_27,
  1, 49, :_reduce_28,
  3, 49, :_reduce_29,
  1, 50, :_reduce_30,
  3, 50, :_reduce_31,
  3, 51, :_reduce_32,
  5, 51, :_reduce_33,
  4, 51, :_reduce_34,
  6, 51, :_reduce_35,
  4, 52, :_reduce_36,
  3, 53, :_reduce_37,
  3, 54, :_reduce_none,
  2, 55, :_reduce_39,
  3, 55, :_reduce_40,
  4, 55, :_reduce_41,
  4, 55, :_reduce_42,
  5, 55, :_reduce_43,
  6, 56, :_reduce_44,
  3, 57, :_reduce_none,
  2, 58, :_reduce_46,
  0, 59, :_reduce_47,
  4, 58, :_reduce_48,
  4, 60, :_reduce_49,
  3, 61, :_reduce_none,
  2, 62, :_reduce_51,
  0, 63, :_reduce_52,
  4, 62, :_reduce_53,
  0, 65, :_reduce_54,
  8, 64, :_reduce_55,
  0, 66, :_reduce_56,
  9, 64, :_reduce_57,
  4, 67, :_reduce_58,
  4, 67, :_reduce_59,
  1, 68, :_reduce_60,
  1, 68, :_reduce_none,
  1, 68, :_reduce_none,
  1, 68, :_reduce_none,
  1, 68, :_reduce_none,
  1, 41, :_reduce_65,
  2, 41, :_reduce_66,
  1, 41, :_reduce_67,
  2, 41, :_reduce_68,
  1, 41, :_reduce_69,
  2, 41, :_reduce_70 ]

racc_reduce_n = 71

racc_shift_n = 141

racc_token_table = {
  false => 0,
  :error => 1,
  :IDENTIFIER => 2,
  :INTEGER => 3,
  :REAL => 4,
  :STRING => 5,
  "(" => 6,
  ")" => 7,
  "*" => 8,
  "/" => 9,
  "+" => 10,
  "-" => 11,
  :OP_EQ => 12,
  :OP_NEQ => 13,
  :OP_LEQ => 14,
  :OP_GEQ => 15,
  ">" => 16,
  "<" => 17,
  :NOT => 18,
  :AND => 19,
  :OR => 20,
  "," => 21,
  ":" => 22,
  "|" => 23,
  :VAR_OPEN => 24,
  :VAR_CLOSE => 25,
  :STMT_OPEN => 26,
  :IF => 27,
  :STMT_CLOSE => 28,
  :ELSE => 29,
  :ENDIF => 30,
  :FOR => 31,
  :IN => 32,
  :ENDFOR => 33,
  :BLOCK => 34,
  :ENDBLOCK => 35,
  :END => 36,
  :EXTENDS => 37,
  :TEXT_BLOCK => 38 }

racc_nt_base = 39

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "IDENTIFIER",
  "INTEGER",
  "REAL",
  "STRING",
  "\"(\"",
  "\")\"",
  "\"*\"",
  "\"/\"",
  "\"+\"",
  "\"-\"",
  "OP_EQ",
  "OP_NEQ",
  "OP_LEQ",
  "OP_GEQ",
  "\">\"",
  "\"<\"",
  "NOT",
  "AND",
  "OR",
  "\",\"",
  "\":\"",
  "\"|\"",
  "VAR_OPEN",
  "VAR_CLOSE",
  "STMT_OPEN",
  "IF",
  "STMT_CLOSE",
  "ELSE",
  "ENDIF",
  "FOR",
  "IN",
  "ENDFOR",
  "BLOCK",
  "ENDBLOCK",
  "END",
  "EXTENDS",
  "TEXT_BLOCK",
  "$start",
  "target",
  "document",
  "primary_expression",
  "logical_expression",
  "multiplicative_expression",
  "additive_expression",
  "boolean_expression",
  "inverse_expression",
  "parameter_list",
  "filter",
  "filter_list",
  "inject_statement",
  "if_tag",
  "else_tag",
  "end_if_tag",
  "if_block",
  "for_tag",
  "end_for_tag",
  "for_block",
  "@1",
  "block_tag",
  "end_block_tag",
  "block_block",
  "@2",
  "generic_block",
  "@3",
  "@4",
  "extends_statement",
  "document_component" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

# reduce 1 omitted

module_eval(<<'.,.,', 'cadenza.y', 8)
  def _reduce_2(val, _values, result)
     result = nil 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 12)
  def _reduce_3(val, _values, result)
     result = VariableNode.new(val[0].value) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 13)
  def _reduce_4(val, _values, result)
     result = ConstantNode.new(val[0].value) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 14)
  def _reduce_5(val, _values, result)
     result = ConstantNode.new(val[0].value) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 15)
  def _reduce_6(val, _values, result)
     result = ConstantNode.new(val[0].value) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 16)
  def _reduce_7(val, _values, result)
     result = val[1] 
    result
  end
.,.,

# reduce 8 omitted

module_eval(<<'.,.,', 'cadenza.y', 21)
  def _reduce_9(val, _values, result)
     result = ArithmeticNode.new(val[0], "*", val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 22)
  def _reduce_10(val, _values, result)
     result = ArithmeticNode.new(val[0], "/", val[2]) 
    result
  end
.,.,

# reduce 11 omitted

module_eval(<<'.,.,', 'cadenza.y', 27)
  def _reduce_12(val, _values, result)
     result = ArithmeticNode.new(val[0], "+", val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 28)
  def _reduce_13(val, _values, result)
     result = ArithmeticNode.new(val[0], "-", val[2]) 
    result
  end
.,.,

# reduce 14 omitted

module_eval(<<'.,.,', 'cadenza.y', 33)
  def _reduce_15(val, _values, result)
     result = BooleanNode.new(val[0], "==", val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 34)
  def _reduce_16(val, _values, result)
     result = BooleanNode.new(val[0], "!=", val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 35)
  def _reduce_17(val, _values, result)
     result = BooleanNode.new(val[0], "<=", val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 36)
  def _reduce_18(val, _values, result)
     result = BooleanNode.new(val[0], ">=", val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 37)
  def _reduce_19(val, _values, result)
     result = BooleanNode.new(val[0], ">", val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 38)
  def _reduce_20(val, _values, result)
     result = BooleanNode.new(val[0], "<", val[2]) 
    result
  end
.,.,

# reduce 21 omitted

module_eval(<<'.,.,', 'cadenza.y', 43)
  def _reduce_22(val, _values, result)
     result = BooleanInverseNode.new(val[1]) 
    result
  end
.,.,

# reduce 23 omitted

module_eval(<<'.,.,', 'cadenza.y', 48)
  def _reduce_24(val, _values, result)
     result = BooleanNode.new(val[0], "and", val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 49)
  def _reduce_25(val, _values, result)
     result = BooleanNode.new(val[0], "or", val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 53)
  def _reduce_26(val, _values, result)
     result = [val[0]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 54)
  def _reduce_27(val, _values, result)
     result = val[0].push(val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 58)
  def _reduce_28(val, _values, result)
     result = FilterNode.new(val[0].value) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 59)
  def _reduce_29(val, _values, result)
     result = FilterNode.new(val[0].value, val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 63)
  def _reduce_30(val, _values, result)
     result = [val[0]] 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 64)
  def _reduce_31(val, _values, result)
     result = val[0].push(val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 69)
  def _reduce_32(val, _values, result)
     result = InjectNode.new(val[1]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 71)
  def _reduce_33(val, _values, result)
     result = InjectNode.new(val[1], val[3]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 74)
  def _reduce_34(val, _values, result)
            variable = VariableNode.new(val[1].value)
        result = InjectNode.new(variable, [], val[2])
      
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 79)
  def _reduce_35(val, _values, result)
            variable = VariableNode.new(val[1].value)
        result = InjectNode.new(variable, val[4], val[2])
      
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 87)
  def _reduce_36(val, _values, result)
            @stack.push DocumentNode.new
        result = val[2]
      
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 93)
  def _reduce_37(val, _values, result)
     @stack.push DocumentNode.new 
    result
  end
.,.,

# reduce 38 omitted

module_eval(<<'.,.,', 'cadenza.y', 101)
  def _reduce_39(val, _values, result)
     @stack.pop; result = IfNode.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 102)
  def _reduce_40(val, _values, result)
     result = IfNode.new(val[0], @stack.pop.children) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 105)
  def _reduce_41(val, _values, result)
            false_children, true_children = @stack.pop.children, @stack.pop.children
        result = IfNode.new(val[0], true_children, false_children)
      
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 110)
  def _reduce_42(val, _values, result)
            false_children, true_children = @stack.pop.children, @stack.pop.children
        result = IfNode.new(val[0], true_children, false_children)
      
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 115)
  def _reduce_43(val, _values, result)
            false_children, true_children = @stack.pop.children, @stack.pop.children
        result = IfNode.new(val[0], true_children, false_children)
      
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 121)
  def _reduce_44(val, _values, result)
     result = [val[2].value, val[4].value] 
    result
  end
.,.,

# reduce 45 omitted

module_eval(<<'.,.,', 'cadenza.y', 132)
  def _reduce_46(val, _values, result)
            iterator = VariableNode.new(val[0][0])
        iterable = VariableNode.new(val[0][1])
        
        result = ForNode.new(iterator, iterable, [])      
      
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 137)
  def _reduce_47(val, _values, result)
     @stack.push DocumentNode.new 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 139)
  def _reduce_48(val, _values, result)
            iterator = VariableNode.new(val[0][0])
        iterable = VariableNode.new(val[0][1])
        
        result = ForNode.new(iterator, iterable, @stack.pop.children)
      
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 147)
  def _reduce_49(val, _values, result)
     result = val[2].value 
    result
  end
.,.,

# reduce 50 omitted

module_eval(<<'.,.,', 'cadenza.y', 156)
  def _reduce_51(val, _values, result)
     result = BlockNode.new(val[0], []) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 157)
  def _reduce_52(val, _values, result)
     @stack.push DocumentNode.new 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 157)
  def _reduce_53(val, _values, result)
     result = BlockNode.new(val[0], @stack.pop.children) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 161)
  def _reduce_54(val, _values, result)
     @stack.push DocumentNode.new 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 163)
  def _reduce_55(val, _values, result)
     result = GenericBlockNode.new(val[1].value, @stack.pop.children) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 164)
  def _reduce_56(val, _values, result)
     @stack.push DocumentNode.new 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 166)
  def _reduce_57(val, _values, result)
     result = GenericBlockNode.new(val[1].value, @stack.pop.children, val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 170)
  def _reduce_58(val, _values, result)
     result = val[2].value 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 171)
  def _reduce_59(val, _values, result)
     result = VariableNode.new(val[2].value) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 175)
  def _reduce_60(val, _values, result)
     result = TextNode.new(val[0].value) 
    result
  end
.,.,

# reduce 61 omitted

# reduce 62 omitted

# reduce 63 omitted

# reduce 64 omitted

module_eval(<<'.,.,', 'cadenza.y', 183)
  def _reduce_65(val, _values, result)
     push_child val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 184)
  def _reduce_66(val, _values, result)
     push_child val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 185)
  def _reduce_67(val, _values, result)
     @stack.first.extends = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 186)
  def _reduce_68(val, _values, result)
     @stack.first.extends = val[1] 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 187)
  def _reduce_69(val, _values, result)
     push_block(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'cadenza.y', 188)
  def _reduce_70(val, _values, result)
     push_block(val[1]) 
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

  end   # class Parser
  end   # module Cadenza
