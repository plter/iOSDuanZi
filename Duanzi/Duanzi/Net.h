//
//  Net.h
//  Duanzi
//
//  Created by plter on 9/5/14.
//  Copyright (c) 2014 plter. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DuanziList.h"

#define API_KEY @"0fq2d96jh7zqxcbt7hztz2"
#define API_SECRET @"bb7aec125b1929997169f0v1axfaad00"
#define REG_URL @"http://duanzi.joyme.com/register.do"
#define GET_LIST_URL @"http://duanzi.joyme.com/article/list.do"
#define USER_ACTION_URL @"http://duanzi.joyme.com/action.do"


typedef enum : NSUInteger {
    USER_ACTION_AGREE,
    USER_ACTION_DISAGREE,
    USER_ACTION_SHARE,
} USER_ACTION;

@interface Net : NSObject

+(void)loadData:(NSString*)url args:(NSDictionary*)dict completeHandler:(void(^)(NSData * data))handler;

+(void)regWithIDFA:(NSString*)idfa completeHandler:(void(^)(NSDictionary * result))handler;

+(void)getUid:(void(^)(NSString * uid))callback;

+(void)loadList:(JOKE_TYPE)jt dataType:(JOKE_DATA_TYPE)dt uid:(NSString*)uid pid:(NSString*)pid perPage:(NSString*)perPage completeHandler:(void(^)(NSDictionary* result))handler;

+(void)userAction:(NSString*)uid action:(USER_ACTION)action jid:(NSString*)jid completeHandler:(void(^)(BOOL isOk))handler;

@end
