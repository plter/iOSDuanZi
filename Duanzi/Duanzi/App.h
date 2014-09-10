//
//  App.h
//  Duanzi
//
//  Created by plter on 9/9/14.
//  Copyright (c) 2014 plter. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <UIKit/UIKit.h>

#define UMENG_APP_KEY @"541022f8fd98c5305302ca00"


@interface App : NSObject{
    
    UIAlertView * _alertView;
}


-(void)showLoading:(NSString*)msg;
-(void)hideLoading;

+(App*)getInstance;

@end
