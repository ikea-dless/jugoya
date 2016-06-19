module Jugoya
  class Moon
    @@full_phase = 180
    @@half_phase = 90
    @@crescent_phase = 27
    attr_accessor :phase

    def initialize(phase = nil)
      @phase = phase.to_i
    end

    def full?
      @phase == @@full_phase
    end

    def half?
      @phase == @@half_phase
    end

    def crescent?
      @phase == @@crescent_phase
    end

    def almost_full?
      (@@full_phase - 10..@@full_phase + 10).include?(@phase)
    end

    def almost_half?
      (@@half_phase - 5..@@half_phase + 5).include?(@phase)
    end

    def almost_crescent?
      (@@crescent_phase - 5..@@crescent_phase + 5).include?(@phase)
    end

    def status
      case
      when full?
        'full_moon'
      when half?
        'half_moon'
      when crescent?
        'crescent_moon'
      when almost_full?
        'almost_full_moon'
      when almost_half?
        'almost_half_moon'
      when almost_crescent?
        'almost_crescent_moon'
      else
        'oops.. you will not to be able to worship the beautiful moon.'
      end
    end
  end
end
