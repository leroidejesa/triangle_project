class Triangle
  define_method(:initialize) do |side1, side2, side3|
    @target = ""
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  define_method(:triangle?) do
    combo1 = (@side1+(@side2)).>(@side3)
    combo2 = (@side2+(@side3)).>(@side1)
    combo3 = (@side1+(@side3)).>(@side2)
    if combo1 & combo2 & combo3
      @target = "it's a triangle"
    else
      @target = "it's not a triangle"
    end
  end

end

# Is it a triangle?
# A + B > C
