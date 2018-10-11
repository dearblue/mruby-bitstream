# mruby-bitstream

## つかいかた

```ruby
File.open("xxx.bin", "rb") do |file|
  bs = BitStream.new(file)

  bitsize1 = 5
  bits1 = bs.read bitsize1

  bitsize2 = 19
  bits2 = bs.read bitsize2

  bs.unread bitsize1, bits1
  bs.unread bitsize2, bits2

  bitsize3 = 27
  bits3 = bs.read bitsize3
end
```

## くみこみかた

`build_config.rb` ファイルに `gem github: "dearblue/mruby-bitstream"` を任意の場所に追加して下さい。

```ruby
# build_config.rb

MRuby::Build.new do |conf|
  ...
  conf.gem github: "dearblue/mruby-bitstream"
  ...
end
```

あるいは `mrbgem.rake` ファイルに依存する mrbgem として追加して下さい。

```ruby
# mrbgem.rake

MRuby::Gem::Specification.new("your-mgem") do |spec|
  ...
  spec.add_dependency "mruby-bitstream", github: "dearblue/mruby-bitstream"
  ...
end
```


## Specification

  - Package name: mruby-bitstream
  - Version: 0.0.0.1.CONCEPT.TRYOUT
  - Licensing: [2 clause BSD License](LICENSE)
  - Product quality: CONCEPT, ***BUGGY***
  - Project page: <https://github.com/dearblue/mruby-bitstream>
  - Author: [dearblue](https://github.com/dearblue)
  - Support mruby version: ?
  - Object code size: +2 kb (without dependencies) (on FreeBSD 11.2 AMD64 with clang-6.0)
  - Dependency external mrbgems:
    - [mruby-bitset](https://github.com/dearblue/mruby-bitset)
      under [2 clause BSD License](https://github.com/dearblue/mruby-bitset/blob/wip/LICENSE)
      by [dearblue](https://github.com/dearblue)
  - Dependency C libraries: (NONE)
