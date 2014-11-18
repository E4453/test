//
//  ViewController.h
//  Table view
//
//  Created by 山本瑠衣 on 2014/11/18.
//  Copyright (c) 2014年 山本瑠衣. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
//データソース宣言、テーブルビュー用デリゲート宣言
<UITableViewDataSource,UITableViewDelegate>
{
    IBOutlet UITableView *table;//ストーリーボード上のテーブルビュー
    NSMutableArray *nameArray;//タレント名の配列
    NSMutableArray *syozokuArray;//所属の配列
    NSMutableArray *profileArray;//プローフィール用の配列
    NSMutableArray *imageArray;//写真用の配列
    
}


@end

