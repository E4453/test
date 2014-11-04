//
//  ViewController.m
//  omikuji
//
//  Created by 山本瑠衣 on 2014/09/23.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{                
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)pushbutton {
    number=arc4random_uniform(10);
    if(number >7){
        omikujilabel.text=@"大吉！";
        omikujilabel.textColor = [UIColor redColor];
    }else if(number<=7 && number>2){
        omikujilabel.text=@"中吉";
        omikujilabel.textColor = [UIColor blackColor];
    }else{
        omikujilabel.text=@"凶・・・";
        omikujilabel.textColor = [UIColor blueColor];
    }
}


@end
