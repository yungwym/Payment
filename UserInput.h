//
//  UserInput.h
//  Payments
//
//  Created by Alex Wymer  on 2017-06-30.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserInput : NSObject


@property (nonatomic) NSInteger price; 
@property (nonatomic) NSString *response;

-(void) getInput;

@end
