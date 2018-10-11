#!ruby

MRuby::Gem::Specification.new("mruby-bitstream") do |s|
  s.summary = "Generic bit stream implement for mruby"
  s.version = File.read(File.join(File.dirname(__FILE__), "README.md")).scan(/^ *[-*] version: *(d+(?:.w+)+)/i).flatten[-1]
  s.license = "BSD-2-Clause"
  s.author  = "dearblue"
  s.homepage = "https://github.com/dearblue/mruby-bitstream"

  add_dependency "mruby-string-ext",    core: "mruby-string-ext"
  add_dependency "mruby-struct",        core: "mruby-struct"
  add_dependency "mruby-bitset",        github: "dearblue/mruby-bitset"
  add_test_dependency "mruby-stringio", mgem: "mruby-stringio"
end
