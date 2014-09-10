//
//  DuanziList.h
//  Duanzi
//
//  Created by plter on 9/4/14.
//  Copyright (c) 2014 plter. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef enum : NSUInteger {
    JOKE_TEXT,
    JOKE_IMAGE_OR_VIDEO
} JOKE_TYPE;

typedef enum : NSUInteger {
    JOKE_DATA_RECENT,
    JOKE_DATA_RANDOM
} JOKE_DATA_TYPE;


@interface DuanziList : UITableViewController{
    NSDictionary * dataSource;
    NSArray * dataList;
    NSString * _uid;
}

@property JOKE_DATA_TYPE dataType;
@property JOKE_TYPE jokeType;

@end
