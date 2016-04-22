//
//  ViewController.h
//  Delegate Demo
//
//  Created by Dhaval Kumar on 03/12/15.
//  Copyright © 2015 Endive Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


- (IBAction)go:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIView *view1;
@property (weak, nonatomic) IBOutlet UIView *view2;

@end

