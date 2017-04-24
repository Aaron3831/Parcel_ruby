require('rspec')
require('parcel')

describe("parcel")  do
  it("will calculate the volume of the package based on length, width and height")  do
    new_parcel = Parcel.new(5,5,5,4,2)
    expect(new_parcel.volume()).to(eq(125))
  end
  it("will calculate the total price based on shipping options")  do
    new_parcel = Parcel.new(5,5,5,4,2)
    expect(new_parcel.cost_to_ship()).to(eq(70))
  end

end
