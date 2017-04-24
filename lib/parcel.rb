class Parcel
  define_method(:initialize) do |length,width,height,weight,speed|
    @length = length
    @width  = width
    @height = height
    @weight = weight
    @speed = speed

  end

  define_method(:length)  do
  @length
  end

  define_method(:width) do
  @width
  end

  define_method(:height)  do
  @height
  end

  define_method(:weight)  do
  @weight
  end

  define_method(:volume) do
  (@length * @width * @height)
  end

  define_method(:speed) do
    @speed
  end

  define_method(:cost_to_ship)do
    cost = 0
    if volume > 100
      cost += 20
    else
      cost += 10
    end
    if @weight > 5
      cost += 1
    else
      cost+= 0
    end
    if @speed == 2
      cost += 50
    elsif @speed == 7
      cost += 30
    else
      cost += 10
    end
  cost
  end
end
