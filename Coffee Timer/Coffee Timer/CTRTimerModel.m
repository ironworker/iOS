//
//  CTRTimerModel.m
//  Coffee Timer
//
//  Created by Matthew John on 10/20/13.
//  Copyright (c) 2013 Matthew John. All rights reserved.
//

#import "CTRTimerModel.h"

@implementation CTRTimerModel
-(id)initWithCoffeeName:(NSString *)coffeeName duration:(NSInteger)duration{
    
    self = [super init];
    if (self == nil) return nil;
    self.coffeeName = coffeeName;
    self.duration = duration;
    return self;
}

@end
