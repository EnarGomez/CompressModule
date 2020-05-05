//
//  CompresUtil.m
//  ArandaCompressModule
//
//  Created by Enar GoMez on 23/04/20.
//  Copyright © 2020 Aranda. All rights reserved.
//

#import "CompresUtil.h"
#import <mobileffmpeg/MobileFFmpeg.h>
@implementation CompresUtil

-(void)executeCommand:(NSString *)command inCompletion:(Completion)onCompletion
{
    //onCompletion(true, @"");
    int rc = [MobileFFmpeg execute: command];
    
    if (rc == RETURN_CODE_SUCCESS) {
        onCompletion(true, @"");
    } else if (rc == RETURN_CODE_CANCEL) {
        onCompletion(false, @"Cancel");
    } else {
        onCompletion(false, @"error");
    }
    
}
@end
