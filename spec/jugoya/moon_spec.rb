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
  end

  describe 'is #almost_half' do
  end

  describe 'is #almost_crescent' do
  end

  describe 'show #status' do
    it 'when full' do
      @moon.phase = 180
      expect(@moon.status).to eq '満月やで'
    end

    it 'when half' do
      @moon.phase = 90
      expect(@moon.status).to eq '半月やで'
    end

    it 'when crescent' do
      @moon.phase = 27
      expect(@moon.status).to eq '三日月やで'
    end

    it 'when almost full' do
    end

    it 'when almost half' do
    end

    it 'when almost crescent' do
    end
  end
end

