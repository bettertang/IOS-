//
//  SampleProtocol.m
//  case_tool
//
//  Created by better_yst on 2020/11/14.
//  Copyright © 2020 better_yst. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SampleProtocol.h"

@implementation SampleProClass

-(void) startProcess{
    [NSTimer scheduledTimerWithTimeInterval:5.0 target:self.delegate selector:@selector(SampleProtocompleted) userInfo:nil repeats:NO];
    NSLog(@"start Process!");
}

@end
