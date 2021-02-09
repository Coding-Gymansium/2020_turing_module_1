require 'minitest/autorun'
require 'minitest/pride'
require 'mocha/minitest'
require './lib/image_generator'

class ImageGeneratorTest < Minitest::Test

  def test_it_exists
    image_generator = ImageGenerator.new(2500)
    assert_instance_of ImageGenerator, image_generator
  end

  def test_attributes
    image_generator = ImageGenerator.new(2500)
    assert_equal 2500, image_generator.max_image_size
  end

  # Using stubs write the tests to confirm the functionality
  # that exists in ./lib/image_generator.rb

  def test_generate_images
    image_generator = ImageGenerator.new(2500)
    
    # mock_image_generator = mock("image_generator")
    
    image_generator.stubs(:some_random_num).returns(2)
    
    assert_equal ["image0", "image1"] , image_generator.generate_images
  end

  def test_change_max_size

  end

end
