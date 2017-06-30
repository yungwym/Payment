//
//  UserInput.m
//  Payments
//
//  Created by Alex Wymer  on 2017-06-30.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import "UserInput.h"

@implementation UserInput

-(void) getInput {
    
    self.price = arc4random_uniform(900) +100;
    
    char userCQuestion[255];
    
    NSLog(@"Thank you for shopping at Acme.com Your total today is $%ld Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon, 4. Apple", self.price);
    
    fgets(userCQuestion, 255, stdin);
    
    NSLog(@"You Entered: %s", userCQuestion);
    
    _response = [NSString stringWithCString:userCQuestion encoding: NSUTF8StringEncoding];
    
    [_response stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet];
    
    
    
    
    
}

@end
