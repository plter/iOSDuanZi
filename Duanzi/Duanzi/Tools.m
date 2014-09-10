//
//  Tools.m
//  Duanzi
//
//  Created by plter on 9/5/14.
//  Copyright (c) 2014 plter. All rights reserved.
//

#import "Tools.h"
#import <CommonCrypto/CommonCrypto.h>
#import <AdSupport/AdSupport.h>

@implementation Tools

+(NSString*)md5:(NSString *)str{
    
    const char * cstr = [str UTF8String];
    
    unsigned char dist[CC_MD5_DIGEST_LENGTH];
    
    CC_MD5(cstr, (CC_LONG)strlen(cstr), dist);
    
    NSMutableString * result = [[NSMutableString alloc] init];
    
    for (int i=0; i<CC_MD5_DIGEST_LENGTH; i++) {
        [result appendFormat:@"%02x",dist[i]];
    }
    
    return result;
}


+(NSString*)getIDFA{
    return [[ASIdentifierManager sharedManager] advertisingIdentifier].UUIDString;
}

@end
