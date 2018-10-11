#!ruby

class BitStream < Struct.new(:istream, :msb_first, :bitbuf)
  const_set :BasicStruct, superclass

  def initialize(istream, msb_first = true)
    super istream, !!msb_first, Bitset.new
  end

  def read(size)
    size = size.to_i

    if bitbuf.size < size
      #(bitbuf.size - size + 8 - 1) / 8
      needbytes = ((size - bitbuf.size + 7) / 8).to_i
      if msb_first
        needbytes.times { bitbuf.push (istream.read(1).ord rescue break), 8 }
      else
        needbytes.times { bitbuf.unshift (istream.read(1).ord rescue break), 8 }
      end
    end

    if msb_first
      bitbuf.shift size
    else
      bitbuf.pop size
    end
  end

  def unread(size, bits)
    if msb_first
      bitbuf.push bits, size
    else
      bitbuf.unshift bits, size
    end

    self
  end

  def eof
    istream.eof? && bitbuf.empty?
  end
end
