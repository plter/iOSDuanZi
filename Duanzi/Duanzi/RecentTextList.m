//
//  RecentTextList.m
//  Duanzi
//
//  Created by plter on 9/4/14.
//  Copyright (c) 2014 plter. All rights reserved.
//

#import "RecentTextList.h"

@interface RecentTextList ()

@end

@implementation RecentTextList


- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        self.jokeType = JOKE_TEXT;
        self.dataType = JOKE_DATA_RECENT;
    }
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"随机段子>" style:UIBarButtonItemStylePlain target:self action:@selector(rightBarButtonClicked)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(void)rightBarButtonClicked{
    
    DuanziList * dl = [self.storyboard instantiateViewControllerWithIdentifier:@"DuanziList"];
    
    dl.jokeType = JOKE_TEXT;
    dl.dataType = JOKE_DATA_RANDOM;
    dl.title = @"随机段子";
    
    [self.navigationController pushViewController:dl animated:YES];
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
