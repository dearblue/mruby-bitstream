#!ruby

assert "Lo-input, Hi-output" do
  bs = BitStream.new(StringIO.new "abcdefg")
  assert_equal 0, bs.read(1)
  assert_equal 0xc2, bs.read(8)
  assert_equal 0x62, bs.read(7)
end
