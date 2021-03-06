//
//  CommonLoadingItem.m
//  UPDIS
//
//  Created by Melvin on 13-8-13.
//  Copyright (c) 2013年 tianv. All rights reserved.
//

#import "CommonLoadingItem.h"

@implementation CommonLoadingItem
///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)dealloc {
    TT_RELEASE_SAFELY(_title);
    [super dealloc];
}


///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
#pragma mark -
#pragma mark Class public


///////////////////////////////////////////////////////////////////////////////////////////////////
+ (id)itemWithTitle:(NSString*)title {
    CommonLoadingItem* item = [[[self alloc] init] autorelease];
    item.title = title;
    return item;
}

///////////////////////////////////////////////////////////////////////////////////////////////////
- (void)encodeWithCoder:(NSCoder*)encoder {
    [super encodeWithCoder:encoder];
    if (self.title) {
        [encoder encodeObject:self.title forKey:@"title"];
    }
}
@end
