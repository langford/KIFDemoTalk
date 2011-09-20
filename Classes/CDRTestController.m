//
//  CDRTestController.m
//  Recipes
//
//  Created by Michael Langford on 9/20/11.
//  Copyright 2011 Rowdy Labs LLC. All rights reserved.
//

#import "CDRTestController.h"

@implementation CDRTestController

- (void)initializeScenarios;
{
    [self addScenario:[KIFTestScenario scenarioToLogIn]];
    // Add additional scenarios you want to test here
}

@end
