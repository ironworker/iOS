//
//  CTRTimerModel.h
//  Coffee Timer
//
//  Created by Matthew John on 10/20/13.
//  Copyright (c) 2013 Matthew John. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CTRTimerModel : NSObject
@property (nonatomic, strong) NSString *coffeeName;
@property (nonatomic, assign) NSInteger duration;
-(id)initWithCoffeeName:(NSString *) coffeeName duration:(NSInteger) duration;
@end
