#import <objc/Object.h>
#import <stdio.h>
#import <Foundation/NSObject.h>
@protocol MyProtocol
-(void) hello;
@end

@interface HelloWorld:NSObject<MyProtocol>
@end
