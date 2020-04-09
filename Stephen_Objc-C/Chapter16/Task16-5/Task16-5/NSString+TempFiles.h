//
//  NSString+TempFiles.h
//  Task16-5
//
//  Created by Eric Golovin on 12/30/19.
//  Copyright © 2019 Eric Golovin. All rights reserved.
//

#import <AppKit/AppKit.h>


#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (TempFiles)

-(NSString *) temporaryFileName;

@end

NS_ASSUME_NONNULL_END
