//
//  ViewController.h
//  TeckAnime
//
//  Created by 山本瑠衣 on 2014/11/03.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UIImageView*imageview;//画像を表示するView
    UILabel*label;
    
}
-(IBAction)start;
-(IBAction)back;
-(IBAction)show;
@end
