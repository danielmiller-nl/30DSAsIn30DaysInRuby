class MinHeap

  def initialize
    @mh = [nil]
  end

  def insert value
    @mh << value

    i_added = @mh.length-1
    i_parent = i_added/2

    until i_parent == 0 || @mh[i_parent] <= @mh[i_added]
      @mh[i_parent],@mh[i_added] = @mh[i_added],@mh[i_parent]
      i_added = i_parent
      i_parent = i_added/2
    end
  end

  def get
    @mh
  end

  def get_min
    @mh[1]
  end

  def delete_min
    last = @mh.pop
    return if @mh.length == 1

    @mh[1] = last

    i = 1

    while 2*i+1 < @mh.length && (@mh[i]>@mh[2*i]||@mh>@mh[2*i+1])
      i2r = @mh[2*i]<@mh[2*i+1] ? 2*i : 2*i + 1
      @mh[i],@mh[i2r] = @mh[i2r],@mh[i]
      i = i2r
    end
  end

end