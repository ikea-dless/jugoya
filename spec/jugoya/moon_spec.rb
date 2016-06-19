require 'spec_helper'

describe Jugoya::Moon do
  before do
    @moon = Jugoya::Moon.new()
  end

  describe 'attr_accessor' do
    it 'set & get moon phase' do
      @moon.phase = 1
      expect(@moon.phase).to be 1
    end
  end

  describe 'is #full?' do
    it 'when full return true' do
      @moon.phase = 180
      expect(@moon.full?).to be true
    end

    it 'when not full return false' do
      @moon.phase = 1
      expect(@moon.full?).to be false
    end
  end

  describe 'is #half?' do
    it 'when half return true' do
      @moon.phase = 90
      expect(@moon.half?).to be true
    end

    it 'when not half return false' do
      @moon.phase = 1
      expect(@moon.half?).to be false
    end
  end

  describe 'is #crescent?' do
    it 'when crescent return true' do
      @moon.phase = 27
      expect(@moon.crescent?).to be true
    end

    it 'when not crescent return false' do
      @moon.phase = 1
      expect(@moon.crescent?).to be false
    end
  end

  describe 'is #almost_full?' do
    it 'when almost full return true' do
      @moon.phase = 170
      expect(@moon.almost_full?).to be true
    end
  end

  describe 'is #almost_half' do
  end

  describe 'is #almost_crescent' do
  end

  describe 'show #status' do
    subject { @moon.status }

    it 'when full' do
      @moon.phase = 180
      is_expected.to eq 'full_moon'
    end

    it 'when half' do
      @moon.phase = 90
      is_expected.to eq 'half_moon'
    end

    it 'when crescent' do
      @moon.phase = 27
      is_expected.to eq 'crescent_moon'
    end

    it 'when almost full' do
      @moon.phase = 170
      is_expected.to eq 'almost_full_moon'
    end

    it 'when almost half' do
      @moon.phase = 85
      is_expected.to eq 'almost_half_moon'
    end

    it 'when almost crescent' do
      @moon.phase = 22
      is_expected.to eq 'almost_crescent_moon'
    end
  end
end

