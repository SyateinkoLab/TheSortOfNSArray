//
//  NSArray+FujiCategory.m
//  FujiFunction
//
//  Created by MATSUFUJI_Nao on 12/11/05.
//  Copyright (c) 2012年 松藤 なお. All rights reserved.
//

#import "NSArray+FujiCategory.h"

@implementation NSArray (FujiCategory)

- (void)sortArray:(NSArray *)array
{
    array = [array sortedArrayUsingComparator:
                         ^NSComparisonResult(UIView* view1, UIView* view2){
                             NSComparisonResult result;
                             
                             int x1 = (int)view1.frame.origin.x;
                             int x2 = (int)view2.frame.origin.x;
                             int y1 = (int)view1.frame.origin.y;
                             int y2 = (int)view2.frame.origin.y;
                             
                             if (y1==y2){
                                 result = NSOrderedSame;
                                 if (x1==x2) {
                                     result = NSOrderedSame;
                                 }else{
                                     result = (x1<x2 ? NSOrderedAscending : NSOrderedDescending);
                                 }
                             }else{
                                 result = (y1<y2 ? NSOrderedAscending : NSOrderedDescending);
                             }
                             return result;
                         }];
}

@end
