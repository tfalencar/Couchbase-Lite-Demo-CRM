//
//  Customer.m
//  CBLiteCRM
//
//  Created by Danil on 26/11/13.
//  Copyright (c) 2013 Danil. All rights reserved.
//

#import "Customer.h"

@implementation Customer
@dynamic companyName, industry, phone, email, websiteUrl, address;

+ (NSString*) docType{
    return kCustomerDocType;
}


- (instancetype) initInDatabase: (CBLDatabase*)database
               withCustomerName: (NSString*)name
{
    NSParameterAssert(name);
    self = [super initInDatabase:database];
    if(self){
        [self setValue:name ofProperty: @"companyName"];
    }

    NSError* error;
    if (![self save: &error])
        return nil;
    return self;
}

@end
