class ImageGenerator

  attr_reader :max_image_size
  def initialize(max)
    @max_image_size = max
  end
  ## code I added from Tim's example ----
  def some_random_num
    rand(@max_image_size)
  end
  #-------
  def generate_images
    images = []
    some_random_num.times do |num|
      images << "image#{num}"
    end
    # rand(@max_image_size).times do |num|
    #   images << "image#{num}"
    # end
    images
  end

  def change_max_size(num)
    @max_image_size = (num * rand(@max_image_size))
  end
end
