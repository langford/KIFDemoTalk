//
//  CDRTestController.m
//  Recipes
//
//  Created by Michael Langford on 9/20/11.
//  Copyright 2011 Rowdy Labs LLC. All rights reserved.
//

#import "CDRTestController.h"
#import "KIFTestScenario+CDRAdditions.h"

@implementation CDRTestController

- (void)initializeScenarios;
{
    [self addScenario:[KIFTestScenario testTabs]];
    [self addScenario:[KIFTestScenario verifyRecipeTabHasEdit]];
        [self addScenario:[KIFTestScenario addRecipe]];
    // Add additional scenarios you want to test here
}

@end
