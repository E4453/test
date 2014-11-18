//
//  ViewController.m
//  Table view
//
//  Created by 山本瑠衣 on 2014/11/18.
//  Copyright (c) 2014年 山本瑠衣. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    table.delegate=self;
    table.dataSource=self;
    nameArray=[[NSMutableArray alloc]initWithObjects:
               @"ぐんまちゃん"
               @"ふっかちゃん"
               @"みきゃん"
               @"しんじょうくん"
               @"チャチャ王国のおうじちゃま"
               @"与一くん"
               @"しまねっこ"
               @"とち介"
               @"あゆコロちゃん"
               @"しっぺい", nil];
    syozokuArray=[[NSMutableArray alloc]initWithObjects:
              @"群馬県"
              @"埼玉県"
              @"愛媛県"
              @"高知県"
              @"京都府"
              @"栃木県"
              @"島根県"
              @"栃木県"
              @"神奈川県"
              @"静岡県", nil];
    profileArray=[[NSMutableArray alloc]initWithObjects:
                  @"２０１４年ゆるキャラグランプリ第１位"
                  @"２０１４年ゆるキャラグランプリ第２位"
                  @"２０１４年ゆるキャラグランプリ第３位"
                  @"２０１４年ゆるキャラグランプリ第４位"
                  @"２０１４年ゆるキャラグランプリ第５位"
                  @"２０１４年ゆるキャラグランプリ第６位"
                  @"２０１４年ゆるキャラグランプリ第７位"
                  @"２０１４年ゆるキャラグランプリ第８位"
                  @"２０１４年ゆるキャラグランプリ第９位"
                  @"２０１４年ゆるキャラグランプリ第１０位"
                  , nil];
    imageArray=[[NSMutableArray alloc]initWithObjects:
                [UIImage imageNamed:@"gunma.jpg"],
                [UIImage imageNamed:@"hukka.jpg"],
                [UIImage imageNamed:@"mikyann.jpg"],
                [UIImage imageNamed:@"sinjyou.jpg"],
                [UIImage imageNamed:@"tyatya.jpg"],
                [UIImage imageNamed:@"yoiti.jpg"],
                [UIImage imageNamed:@"simanekko.jpg"],
                [UIImage imageNamed:@"totisuke.jpg"],
                [UIImage imageNamed:@"ayukoro.jpg"],
                [UIImage imageNamed:@"sippei.jpg"]
                , nil];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [nameArray count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *cellIdentifier=@"Cell";
    UITableViewCell*cell=[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if(!cell){
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    //セルにテキスト設定
    cell.textLabel.text=[nameArray objectAtIndex:indexPath.row];
    //セルに画像表示
    cell.imageView.image=[imageArray objectAtIndex:indexPath.row];
    //セルの小ラベルに職業を表示
    cell.detailTextLabel.text=[syozokuArray objectAtIndex:indexPath.row];
    return cell;

 }
-(void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath{
    //namearrayからタレント名を取得
    NSString *talentname=[nameArray objectAtIndex:indexPath.row];
    //profilearrayからプロフィールを取得
     NSString *profile=[profileArray objectAtIndex:indexPath.row];
    //アラートに表示
    UIAlertView *alertView=[[UIAlertView alloc]initWithTitle:talentname message:profile delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alertView show];
    
}


@end

