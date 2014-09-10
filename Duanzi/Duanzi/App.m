//
//  App.m
//  Duanzi
//
//  Created by plter on 9/9/14.
//  Copyright (c) 2014 plter. All rights reserved.
//

#import "App.h"

@implementation App


+(App*)getInstance{
    
    static App * __ins = nil;
    
    if (!__ins) {
        __ins = [[App alloc] init];
    }
    return __ins;
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        _alertView = nil;
    }
    return self;
}


-(void)showLoading:(NSString *)msg{
    
    if (!_alertView) {
        _alertView = [[UIAlertView alloc] initWithTitle:nil message:msg delegate:nil cancelButtonTitle:nil otherButtonTitles:nil, nil];
    }else{
        _alertView.message = msg;
    }
    
    [_alertView show];
}

-(void)hideLoading{
    if (_alertView) {
        [_alertView dismissWithClickedButtonIndex:0 animated:YES];
    }
}

@end
