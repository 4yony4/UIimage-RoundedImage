//
//  UIImage+RoundedImage.m
//  GreenPaw
//
//  Created by Nikolay Dyankov on 7/10/13.
//  Copyright (c) 2013 Nikolay Dyankov. All rights reserved.
//

#import "UIImage+RoundedImage.h"

@implementation UIImage (RoundedImage)

+ (UIImage *)roundedImageWithImage:(UIImage *)image {
    if (image) {
        CGMutablePathRef circularPath = CGPathCreateMutable();
        CGRect pathRect = CGRectMake(0, 0, image.size.width, image.size.height);
        CGPathAddEllipseInRect(circularPath, NULL, pathRect);
        
        UIGraphicsBeginImageContextWithOptions(image.size, NO, 0);
        
        UIBezierPath *path = [UIBezierPath bezierPathWithCGPath:circularPath];
        [path addClip];
        [image drawAtPoint:CGPointZero];
        UIImage *roundedImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        return roundedImage;
    }
    
    return nil;
}

@end
