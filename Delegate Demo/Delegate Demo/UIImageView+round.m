//
//  UIImageView+round.m
//  Delegate Demo
//
//  Created by Dhaval Kumar on 03/12/15.
//  Copyright © 2015 Endive Software. All rights reserved.
//

#import "UIImageView+round.h"

@implementation UIImageView (round)


-(void)roundImage
{
    self.layer.cornerRadius = 50.0f;
    self.clipsToBounds = YES;
}
@end
