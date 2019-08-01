//
//  OrderWuLiuDetailViewController.m
//  QingKu
//
//  Created by mdb-losaic on 2019/8/1.
//  Copyright © 2019 mcxzfa. All rights reserved.
//

#import "OrderWuLiuDetailViewController.h"

#import "OrderWuLiuDetailView.h"

@interface OrderWuLiuDetailViewController ()

@end

@implementation OrderWuLiuDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"查看物流";
    [self drawUI];
}

-(void)drawUI
{
    OrderWuLiuDetailView *mview = [[OrderWuLiuDetailView alloc] init];
    [self.view addSubview:mview];
    
    [mview mas_makeConstraints:^(MASConstraintMaker *make) {
        if (@available(iOS 11.0, *)) {
            make.top.equalTo(self.view.mas_safeAreaLayoutGuideTop);
            make.left.equalTo(self.view.mas_safeAreaLayoutGuideLeft);
            make.right.equalTo(self.view.mas_safeAreaLayoutGuideRight);
            make.bottom.equalTo(self.view.mas_safeAreaLayoutGuideBottom);
        }else{
            make.edges.equalTo(self.view);
        }
    }];
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
