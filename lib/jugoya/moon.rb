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
      @phase == @@full_phase ? true : false
    end

    def half?
      @phase == @@half_phase ? true : false
    end

    def crescent?
      @phase == @@crescent_phase ? true : false
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
        '満月やで'
      when half?
        '半月やで'
      when crescent?
        '三日月やで'
      when almost_full?
        'だいたい満月やで'
      when almost_half?
        'だいたい半月やで'
      when almost_crescent?
        'だいたい三日月やで'
      else
        '今日はアカン'
      end
    end
  end
end
