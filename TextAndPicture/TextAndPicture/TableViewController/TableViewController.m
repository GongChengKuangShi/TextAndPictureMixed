//
//  TableViewController.m
//  TextAndPicture
//
//  Created by xiangronghua on 2017/4/21.
//  Copyright © 2017年 xiangronghua. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewCell.h"
#import "YYFPSLabel.h"

@interface TableViewController ()

@property (strong, nonatomic) YYFPSLabel *label;
@property (assign, nonatomic) NSInteger index;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[TableViewCell class] forCellReuseIdentifier:@"cell"];
    [self setYYFPLabel];
}
- (void)setYYFPLabel {
    
    YYFPSLabel *label = [[YYFPSLabel alloc] initWithFrame:CGRectMake(self.view.frame.size.width - 100, 6, 60, 30)];
    self.label = label;
    [self.view insertSubview:self.label aboveSubview:self.tableView];
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.text =  @"http://www.baidu.com圆圈勾勒成指纹 圆圈勾勒成指纹 16357383638638 圆圈勾勒成指纹 圆圈勾勒成指纹 1358391345@qq.com 印在我的嘴唇 回忆苦涩的吻痕 是树根 1647738362882 春去秋来的茂盛 却遮住了黄昏 寒夜剩我一个人 等清晨 世间最毒的仇恨 是有缘却无分 可惜你从未心疼 我的笨 荒草丛生的青春 倒也过的安稳 圆圈勾勒成指纹 代替你陪着我的 是年轮 数着一圈圈年轮 我认真 将心事都封存 密密麻麻是我的自尊 修改一次次离分 我承认 曾幻想过永恒 可惜从没人陪我演这剧本  \r\n 圆圈勾勒成指纹 印在我的嘴唇 回忆苦涩的吻痕 是树根 春去秋来的茂盛13634679713 却遮住了黄昏 寒夜剩我一个人 等清晨 世间最毒的仇恨 是有缘却无分 可惜你从未心疼 我的笨 荒草丛生的青春 倒也过的安稳 代替你陪着我的 是年轮 数着一圈圈年轮 我认真 将心事都封存 密密麻麻是我的自尊 修改一次次离分 我承认 曾幻想过永恒 可惜从没人陪我演这剧本 \n 一圈圈年轮 圆圈勾勒成指纹 我认真 将心事都封存 圆圈勾勒成指纹 密密麻麻是我的自尊 圆圈勾勒成指纹 修改一次次离分 我承认 曾幻想过永恒 可惜从没人陪我演这剧本 78293467@qq.com  可惜从没人陪我演这剧本http://www.weibo.com http://www.QQ.com";
    
    return cell;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 430;
}

@end
