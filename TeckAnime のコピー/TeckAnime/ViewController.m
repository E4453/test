//
//  ViewController.m
//  TeckAnime
//
//  Created by 山本瑠衣 on 2014/11/03.
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
    imageview.center= CGPointMake(100, 100);//x座標が100y座標が100のところに表示する
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)back{
    imageview.center= CGPointMake(100, 100);//x座標が100y座標が100のところに表示する
    imageview.transform=CGAffineTransformMakeScale(1.0, 1.0);//横に２倍縦に0.5倍する

}
-(IBAction)start{
    imageview .alpha=0.1;
    [UIView beginAnimations:nil context:nil];//アニメーションのせっていかいし
    [UIView setAnimationDuration:1];//アニメーションは１秒間
    [UIView setAnimationDelay:2];//開始を２秒遅らせる
    [UIView setAnimationRepeatCount:3];//3回繰り替えす
    imageview.center=CGPointMake(200, 200);//x座標が200y座標が200のところに表示する
    imageview.transform=CGAffineTransformMakeRotation(180*M_PI/180);//180度かいてんする
    imageview.transform=CGAffineTransformMakeScale(2.0, 0.5);//横に２倍縦に0.5倍する
    imageview.alpha=0.9;
    [UIView commitAnimations];

}
-(IBAction)show{
    label=[[UILabel alloc]initWithFrame:CGRectMake(-10, -30, 50, 30)];//ラベルをつくって場所を決める
    label.backgroundColor=[UIColor blackColor];//背景を黒にする
    label.textColor=[UIColor whiteColor];//文字色を白にする
    label.alpha=0.0;//透明にする
    label.text=@"HEY!";
    [self.view addSubview:label];//表示する
    [self.view bringSubviewToFront:label];//ラベルを前に表示する
    [UIView animateWithDuration:2.0f//アニメーションは２秒間
     animations:^{
         label.center=CGPointMake(200, 200);//x座標が２００y座標が２００のところに表示
         label.alpha=1.0;//透明度を1.0にする
         label.transform=CGAffineTransformMakeScale(2.0, 2.0);//labelの大きさを４倍にする
     }completion:^(BOOL finished) {
         [label removeFromSuperview];
     }
     ];
}

@end
