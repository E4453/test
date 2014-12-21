//
//  ViewController.m
//  okusurijikann
//
//  Created by 山本瑠衣 on 2014/12/21.
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
               @"kusuri", nil];
    jikannArray=[[NSMutableArray alloc]initWithObjects:
                 @"toki", nil];

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
      //セルの小ラベルに職業を表示
    cell.detailTextLabel.text=[jikannArray objectAtIndex:indexPath.row];
    return cell;
    
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
   
    
   }




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
