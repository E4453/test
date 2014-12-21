//
//  ViewController.h
//  okusurijikann
//
//  Created by 山本瑠衣 on 2014/12/21.
//  Copyright (c) 2014年 山本瑠衣. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<UITableViewDataSource,UITableViewDelegate>
{
    IBOutlet UITableView *table;//ストーリーボード上のテーブルビュー
    NSMutableArray *nameArray;//薬の名前の配列
    NSMutableArray *jikannArray;//時間の配列
}


@end

