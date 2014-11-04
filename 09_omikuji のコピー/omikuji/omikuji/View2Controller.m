//
//  View2Controller.m
//  omikuji
//
//  Created by 山本瑠衣 on 2014/09/23.
//  Copyright (c) 2014年 山本瑠衣. All rights reserved.
//

#import "View2Controller.h"
#import "ViewController.h"



@interface View2Controller ()

@end

@implementation View2Controller

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
    // Do any additional setup after loading the view.
    if (number>7){
        textview.text=@"大吉！おめでとうございます！\n恋愛運　★★★★★\n勉強運　★★★★☆\n健康運　★★★★★";
    }else if(number<=7 && number>2){
        textview.text=@"中吉まあまあ普通です\n恋愛運　★★☆☆☆\n勉強運　★★★☆☆\n健康運　★★★★☆";
    }else{
        textview.text=@"凶・・・まあ頑張れ\n恋愛運　★☆☆☆☆\n勉強運　★★★☆☆\n健康運　★★☆☆☆";
    }
    
    
    
    
    
    
    
}
    
    
    
    


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(IBAction)back{
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
