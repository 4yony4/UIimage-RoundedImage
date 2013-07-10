UIImage+RoundedImage
=================================

A category for UIImage which takes and UIImage and applies a circular path as a mask.

+ (UIImage *)roundedImageWithImage:(UIImage *)image;

EXAMPLE:

UIImage *originalImage = [UIImage imageNamed:@"myimage.png"];
UImage *myRoundedImage = [UIImage roundedImageWithImage:originalImage];