def egyptian(target_value)
  denominators = []
  unit_denominator = 1

  until target_value == 0
    unit_fraction = Rational(1, unit_denominator)
    if target_value >= unit_fraction
      target_value -= unit_fraction
      denominators << unit_denominator
    end

    unit_denominator += 1
  end

  denominators
end

def unegyptian(denominators)
  denominators.inject(0) { |accu, denominator| accu + Rational(1, denominator) }
end

egyptian(Rational(2, 1)) == [1, 2, 3, 6]
egyptian(Rational(137, 60)) == [1, 2, 3, 4, 5]
egyptian(Rational(3, 1)) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
