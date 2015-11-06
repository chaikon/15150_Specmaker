//
//  _50AppDelegate.m
//  15-150_SpecMaker
//
//  Created by Alexander Chai on 6/1/15.
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "_50AppDelegate.h"

@implementation _50AppDelegate

@synthesize window = _window;
@synthesize fname = _fname;
@synthesize ftype = _ftype;
@synthesize req = _req;
@synthesize ens = _ens;
@synthesize output = _output;

- (void)dealloc
{
    [super dealloc];
}
	
- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
}

- (NSString *)reduce:(NSString *)input {
    if(input.length<=70)
    {
        return input;
    }
    
    else
    {
        return [NSString stringWithFormat:(@"%@ \r * %@",[input substringToIndex:70],[input substringFromIndex:70])];
    }
}

- (IBAction)makeHeader:(id)sender {
    NSString *fnameS = self.fname.stringValue;
    NSString *ftypeS = self.ftype.stringValue;
    NSString *reqS = self.req.stringValue;
    NSString *ensS = self.ens.stringValue;
    
    
//    reqS = [self reduce:reqS];
//    ensS = [self reduce:ensS];
    NSLog([self reduce:@"CHEESECHEESECHEESECHEESECHEESECHEESECHEESECHEESECHEESECHEESECHEESECHEESECHEESECHEESECHEESECHEESECHEESECHEESECHEESE"]);
    
    ftypeS = [ftypeS stringByReplacingOccurrencesOfString:@" "withString:@" -> "];
        
    NSString *output  = [NSString stringWithFormat:@"(* %@ : %@ \r * REQUIRES: %@\r * ENSURES: %@ *)",fnameS,ftypeS,reqS,ensS];
    if ([fnameS isEqualToString:@""]&&
        [ftypeS isEqualToString:@""]&&
        [reqS isEqualToString:@""]&&
        [ensS isEqualToString:@""]) 
    {
        NSAlert *al = [[NSAlert alloc] init];
        [al addButtonWithTitle:@"I understand, my Master"];
        [al setMessageText:@"You haven't entered anything yet"];
        [al setInformativeText:@"You devious child. I'm watching you (O_O )"];
        [al setAlertStyle:NSWarningAlertStyle];
        NSInteger *run = [al runModal];

    }
    else {
        self.output.stringValue = output;
    }
}

- (IBAction)clear:(id)sender {
    self.fname.stringValue = @"";
    self.ftype.stringValue = @"";
    self.req.stringValue = @"";
    self.ens.stringValue = @"";
    self.output.stringValue = @"";
}
@end
