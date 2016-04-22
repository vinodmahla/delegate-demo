//
//  SecondViewController.h
//  Delegate Demo
//
//  Created by Dhaval Kumar on 03/12/15.
//  Copyright © 2015 Endive Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol myDelegates <NSObject>

-(void)setColorForViewController:(UIColor *)color;

@end

@interface SecondViewController : UIViewController

@property(nonatomic,strong)id<myDelegates> delegate;


-(void)setColor;
- (IBAction)back:(id)sender;
- (IBAction)callAttand:(id)sender;

@end
