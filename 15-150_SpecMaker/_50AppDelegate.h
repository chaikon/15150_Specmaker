//
//  _50AppDelegate.h
//  15-150_SpecMaker
//
//  Created by Alexander Chai on 6/1/15.
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface _50AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

@property (assign) IBOutlet NSTextField *fname;
@property (assign) IBOutlet NSTextField *ftype;

@property (assign) IBOutlet NSTextField *req;
@property (assign) IBOutlet NSTextField *ens;

@property (assign) IBOutlet NSTextField *output;

- (IBAction)makeHeader:(id)sender;
- (IBAction)clear:(id)sender;


@end
