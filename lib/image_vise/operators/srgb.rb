# Applies the sRGB profile to the image.
# For this to work, your ImageMagick must be built
# witl LCMS support. On OSX, you need to use the brew install
# command with the following options:
#
#    $brew install imagemagick --with-little-cms --with-little-cms2
#
# You can verify if you do have LittleCMS support by checking the
# delegates list that `$convert --version` outputs:
#
# For instance, if you do not have it, the list will look like this:
#
#    $ convert --version
#    ...
#    Delegates (built-in): bzlib freetype jng jpeg ltdl lzma png tiff xml zlib
#
# whereas if you do, the list will include the "lcms" delegate:
#
#    $ convert --version
#    ...
#    Delegates (built-in): bzlib freetype jng jpeg lcms ltdl lzma png tiff xml zlib
#
# The corresponding Pipeline method is `srgb`.
class ImageVise::SRGB
  PROFILE_PATH = File.expand_path(__dir__ + '/sRGB_v4_ICC_preference_displayclass.icc')
  def apply!(magick_image)
    magick_image.add_profile(PROFILE_PATH)
  end
  ImageVise.add_operator 'srgb', self
end
