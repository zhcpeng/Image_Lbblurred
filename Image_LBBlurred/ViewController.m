//
//  ViewController.m
//  Image_LBBlurred
//
//  Created by SKYA03  on 14-4-1.
//  Copyright (c) 2014年 SKYA03 . All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+LBBlurredImage.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self.resultImageView setImageToBlur:[UIImage imageNamed:@"temp.png"] blurRadius:kLBBlurredImageDefaultBlurRadius completionBlock:^(NSError *error){
        NSLog(@"图片处理成功！");
    }];
    
}
//-(void)viewDidAppear:(BOOL)animated{
//
//}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
