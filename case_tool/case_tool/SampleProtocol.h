//
//  SampleProtocol.h
//  case_tool
//
//  Created by better_yst on 2020/11/14.
//  Copyright © 2020 better_yst. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol SampleProtocol <NSObject>
@required
-(void) SampleProtocompleted;

@end

@interface SampleProClass : NSObject{
    //id <SampleProtocol> _delegate;
}
@property (nonatomic,strong) id delegate;
-(void) startProcess;
@end

NS_ASSUME_NONNULL_END
