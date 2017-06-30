//
//  main.m
//  Payments
//
//  Created by Alex Wymer  on 2017-06-30.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserInput.h"
#import "PaymentGateway.h"
#import "PaypalService.h"
#import "StripeService.h"
#import "AmazonService.h"
#import "AppleService.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        PaymentGateway *payment = [[PaymentGateway alloc] init];
        UserInput *userInput = [[UserInput alloc] init];
        
        BOOL PAYON = YES;
        
        while (PAYON == YES) {
            
            [userInput getInput];
            
            
            id <PaymentDelegate> payDelegate;
            
            switch (userInput.response.intValue) {
                case 1:
                    payDelegate = [[PaypalService alloc] init];
                    break;
                    
                    
                case 2:
                    payDelegate = [[StripeService alloc] init];
                    break;
                    
                case 3:
                    payDelegate = [[AmazonService alloc] init];
                    break;
                    
                case 4:
                    payDelegate = [[AppleService alloc] init];
                    break;
                    
                default:
                    NSLog(@"You chose an unknown payment option, please try again later");
                    PAYON = NO;
                    break;
            }
            
            payment.delegate = payDelegate;
            [payDelegate processPaymentAmount:userInput.price];
            NSLog(@"Come back soon");
        }
        
        
    }
    return 0;
}
