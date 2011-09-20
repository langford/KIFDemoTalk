#import "KIFTestScenario+CDRAdditions.h"
#import "KIFTestStep.h"
#import "KIFTestStep+CDRAdditions.h"

@implementation KIFTestScenario (CDRAdditions)

+ (id)testTabs;
{
    KIFTestScenario *scenario = [KIFTestScenario scenarioWithDescription:@"Test that the tabs toggle the views"];
    [scenario addStep:[KIFTestStep stepToReset]];
    [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"Recipes"]];
    [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"Unit Conversion"]];
    [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"Recipes"]];
    [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"Unit Conversion"]];    
    [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"Recipes"]];
    [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"Unit Conversion"]];
    [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"Recipes"]];
    [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"Unit Conversion"]];
    
    return scenario;
}

+ (id)verifyRecipeTabHasEdit{
    KIFTestScenario *scenario = [KIFTestScenario scenarioWithDescription:@"Test recipe tab for existance of edit button"];
    [scenario addStep:[KIFTestStep stepToReset]];
    [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"Recipes"]];
    [scenario addStep:[KIFTestStep stepToWaitForTappableViewWithAccessibilityLabel:@"Edit"]];
    return scenario;
}

+ (id)addRecipe{
    KIFTestScenario *scenario = [KIFTestScenario scenarioWithDescription:@"Create a recipe"];
    [scenario addStep:[KIFTestStep stepToReset]];
    [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"Recipes"]];
    [scenario addStep:[KIFTestStep stepToWaitForTappableViewWithAccessibilityLabel:@"+"]];
    [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"+"]];
    [scenario addStep:[KIFTestStep stepToEnterText:@"Fried Butter on a Stick" intoViewWithAccessibilityLabel:@"Recipe Name"]];
    [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"Save"]];
    
    return scenario;
}

@end