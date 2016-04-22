//
//  SecondViewController.h
//  CustomeDelegate
//
//  Created by Vinod Kumar on 03/12/15.
//  Copyright © 2015 Vinod Kumar. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol mydelegate1 <NSObject>

-(void)setColorViewController:(UIColor *)color;
@end

@interface SecondViewController : UIViewController

@property(nonatomic ,weak)id<mydelegate1>delegate;
- (IBAction)btnCallAttend:(id)sender;
- (IBAction)btnBack:(id)sender;
-(void)setColor;
@end
