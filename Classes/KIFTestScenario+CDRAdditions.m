#import "KIFTestScenario+CDRAdditions.h"
#import "KIFTestStep.h"
#import "KIFTestStep+CDRAdditions.h"

@implementation KIFTestScenario (CDRAdditions)

+ (id)scenarioToLogIn;
{
    KIFTestScenario *scenario = [KIFTestScenario scenarioWithDescription:@"Test that a user can successfully log in."];
    [scenario addStep:[KIFTestStep stepToReset]];
    [scenario addStepsFromArray:[KIFTestStep stepsToGoToLoginPage]];
    [scenario addStep:[KIFTestStep stepToEnterText:@"user@example.com" intoViewWithAccessibilityLabel:@"Login User Name"]];
    [scenario addStep:[KIFTestStep stepToEnterText:@"thisismypassword" intoViewWithAccessibilityLabel:@"Login Password"]];
    [scenario addStep:[KIFTestStep stepToTapViewWithAccessibilityLabel:@"Log In"]];
    
    // Verify that the login succeeded
    [scenario addStep:[KIFTestStep stepToWaitForTappableViewWithAccessibilityLabel:@"Welcome"]];
    
    return scenario;
}

@end