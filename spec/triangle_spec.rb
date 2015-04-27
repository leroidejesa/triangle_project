require('rspec')
require('triangle')
require('pry')

describe(Triangle) do
  describe(:triangle?) do
    it("returns whether or not three user given numbers are a triangle") do
      new_triangle = Triangle.new(3, 4, 5)
      expect(new_triangle.triangle?()).to(eq("it's a triangle"))
    end
  end

  describe(:triangle_type) do
    it("returns what type of triangle it is") do
      new_triangle = Triangle.new(3, 4, 5)
      expect(new_triangle.triangle_type()).to(eq("it's a scalene, you dick!"))
    end
  end


end
