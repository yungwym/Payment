//
//  PaymentGateway.h
//  Payments
//
//  Created by Alex Wymer  on 2017-06-30.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate <NSObject>

-(void)processPaymentAmount:(NSInteger)price;
-(BOOL)canProcessPayment; 

@end

@interface PaymentGateway : NSObject

@property (nonatomic, weak) id <PaymentDelegate> delegate;

@end
