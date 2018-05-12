#! /usr/bin/env ruby

# コマンドラインから受け取ったファイルを読み込み、文字の出現回数を出力する。
# 文字には空白 (スペース, タブ, 改行) を含まないものとする。
# 出現回数の多い順に回数と文字を出力する。
# 出現回数が同じなら、文字のコード順に出力する。
puts ARGF.read.gsub(/\s/, '').chars
  .group_by(&:itself).transform_values(&:size)
  .sort_by{|c, n| [-n, c]}
  .map{|c, n| "%8d: %s" % [n, c]}
