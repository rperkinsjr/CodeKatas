require 'require_all'
require 'rspec'
require_rel '../'

describe BinaryChop do
  describe '#chop' do

    it 'returns -1 when passed an empty array' do
      expect(BinaryChop.chop(3, [])).to eq(-1)
    end

    it 'returns -1 when integer passed is not in single item array' do
      expect(BinaryChop.chop(3, [1])).to eq(-1)
    end

    it 'returns 0 when integer passed is only item in odd numbered array' do
      expect(BinaryChop.chop(1, [1])).to eq(0)
    end

    it 'returns 0 when integer passed is first item in odd numbered array' do
      expect(BinaryChop.chop(1, [1,3,5])).to eq(0)
    end

    it 'returns 1 when integer is second item in odd numbered array' do
      expect(BinaryChop.chop(3, [1,3,5])).to eq(1)
    end

    it 'returns 2 when integer is second item in odd numbered array' do
      expect(BinaryChop.chop(2, [1,3,5])).to eq(2)
    end

    it 'returns -1 when integer is not in odd numbered multitem array' do
      expect(BinaryChop.chop(0, [1,3,5])).to eq(-1)
    end

    it 'returns -1 when integer is not in odd numbered multitem array' do
      expect(BinaryChop.chop(2, [1,3,5])).to eq(-1)
    end

    it 'returns -1 when integer is not in odd numbered multitem array' do
      expect(BinaryChop.chop(4, [1,3,5])).to eq(-1)
    end

    it 'returns -1 when integer is not in odd numbered multitem array' do
      expect(BinaryChop.chop(6, [1,3,5])).to eq(-1)
    end

    it 'returns 0 when integer is first item even numbered multitem array' do
      expect(BinaryChop.chop(1, [1,3,5,7])).to eq(0)
    end

    it 'returns 1 when integer is second item even numbered multitem array' do
      expect(BinaryChop.chop(3, [1,3,5,7])).to eq(1)
    end

    it 'returns 2 when integer is third item even numbered multitem array' do
      expect(BinaryChop.chop(5, [1,3,5,7])).to eq(2)
    end

    it 'returns 3 when integer is last item even numbered multitem array' do
      expect(BinaryChop.chop(7, [1,3,5,7])).to eq(3)
    end

    it 'returns -1 when integer is not in an even numbered multitem array' do
      expect(BinaryChop.chop(0, [1,3,5,7])).to eq(-1)
      expect(BinaryChop.chop(2, [1,3,5,7])).to eq(-1)
      expect(BinaryChop.chop(4, [1,3,5,7])).to eq(-1)
      expect(BinaryChop.chop(6, [1,3,5,7])).to eq(-1)
      expect(BinaryChop.chop(8, [1,3,5,7])).to eq(-1)
    end

  end
end
