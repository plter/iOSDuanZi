//
//  UserActionButton.m
//  Duanzi
//
//  Created by plter on 9/10/14.
//  Copyright (c) 2014 plter. All rights reserved.
//

#import "UserActionButton.h"
#import "App.h"

@implementation UserActionButton


- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        self.jid = @"";
        self.uid = @"";
        self.userAction = USER_ACTION_AGREE;
    }
    return self;
}


-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    [super touchesEnded:touches withEvent:event];
    
    [Net userAction:self.uid action:self.userAction jid:self.jid completeHandler:^(BOOL isOk) {
        
        if (!isOk) {
            [[[UIAlertView alloc] initWithTitle:@"提醒" message:@"通信失败，请稍候重试" delegate:nil cancelButtonTitle:@"关闭" otherButtonTitles:nil, nil] show];
        }
    }];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
