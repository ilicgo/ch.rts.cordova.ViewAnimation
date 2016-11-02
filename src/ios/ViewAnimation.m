/********* ViewAnimation.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface ViewAnimation : CDVPlugin {
  // Member variables go here.
}

- (void)ViewAnimationEnable:(CDVInvokedUrlCommand*)command;
@end

@implementation ViewAnimation

- (void)ViewAnimationEnable:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    [UIView setAnimationsEnabled:true];
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
