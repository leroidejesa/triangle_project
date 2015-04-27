require('rspec')
require('triangle')

describe(Triangle) do
  describe(:triangle?) do
    it("returns 'yes' text if three numbers entered are a triangle") do
      new_triangle = Triangle.new(3, 4, 5)
      expect(new_triangle.triangle?()).to(eq("it's a triangle"))
    end
  end



end
