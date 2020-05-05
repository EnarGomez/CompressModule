//
//  CompresUtil.h
//  ArandaCompressModule
//
//  Created by Enar GoMez on 23/04/20.
//  Copyright © 2020 Aranda. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import <mobileffmpeg/mobileffmpeg.h>
NS_ASSUME_NONNULL_BEGIN

typedef void (^Completion)(BOOL success, NSString *msg);

@interface CompresUtil : NSObject
-(void) executeCommand:(NSString *) command inCompletion:(Completion)onCompletion;
@end

NS_ASSUME_NONNULL_END
