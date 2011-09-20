#import "KIFTestScenario+CDRAdditions.h"
#import "KIFTestStep.h"
#import "KIFTestStep+CDRAdditions.h"

@implementation KIFTestScenario (CDRAdditions)

+ (id)testTabs;
{
    KIFTestScenario *scenario = [KIFTestScenario scenarioWithDescription:@"Test that the recipe view can be brought up"];
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

@end