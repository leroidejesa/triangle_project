class Triangle
  define_method(:initialize) do |side1, side2, side3|
    @target = ""
    @side1 = side1
    @side2 = side2
    @side3 = side3
    # @combo1 = (@side1+(@side2)).>(@side3)
    # @combo2 = (@side2+(@side3)).>(@side1)
    # @combo3 = (@side1+(@side3)).>(@side2)
  end

  # define_method(:triangle?) do
  #   @combo1 = (@side1+(@side2)).>(@side3)
  #   @combo2 = (@side2+(@side3)).>(@side1)
  #   @combo3 = (@side1+(@side3)).>(@side2)
  #   if @combo1 & @combo2 & @combo3
  #     @target = "it's a triangle"
  #   else
  #     @target = "it's not a triangle"
  #   end
  # end

  define_method(:triangle_type) do
    # combo1 = (@side1+(@side2)).>(@side3)
    # combo2 = (@side2+(@side3)).>(@side1)
    # combo3 = (@side1+(@side3)).>(@side2)

    sides1_2 = @side1+@side2
    sides2_3 = @side2+@side3
    sides1_3 = @side1+@side3

    combo1 = sides1_2.>(@side3)
    combo2 = sides2_3.>(@side1)
    combo3 = sides1_3.>(@side2)

    if combo1 &! combo2 &! combo3
      "hey dumb fuck, this isn't even a triangle!"
      elsif
       @side1.eql?(@side2) & @side1.eql?(@side3)
        "it's an equilateral, asshole!"
      elsif (@side1.!=(@side2)) & (@side1.!=(@side3)) & (@side2.!=(@side3))
        "it's a scalene, you dick!"
      else @side1.eql?(@side2) | @side1.eql?(@side3)
        "isosceles, motherfucker!"
      end
    end
  end
