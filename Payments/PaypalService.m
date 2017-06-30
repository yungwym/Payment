//
//  PaypalService.m
//  Payments
//
//  Created by Alex Wymer  on 2017-06-30.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import "PaypalService.h"

@implementation PaypalService

-(void)processPaymentAmount:(NSInteger)price {
    
    if (self.canProcessPayment == YES) {
        NSLog(@"Paypal has successfully processed your purchase of $%ld", price);
    } else {
        NSLog(@"Paypal was unable to process your payment, please try again later");
    }
}

-(BOOL)canProcessPayment {
    
    NSInteger chance = arc4random_uniform(2) ;
    
    BOOL CANPAY;
    
    if (chance == 1) {
        CANPAY = YES;
    } else {
        CANPAY = NO;
    }
    return CANPAY;
}
@end
