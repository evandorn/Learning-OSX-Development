//
//  GuiHandler.h
//  ResizeImage
//
//  Created by Evan Dorn on 10/10/16.
//  Copyright © 2016 evandorn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

@interface GuiHandler : NSObject {
    
    int width;
    int height;
    NSImage *targetImage;
    
    __weak IBOutlet NSSlider *horizontalSlider;
    __weak IBOutlet NSSlider *verticalSlider;
    __weak IBOutlet NSScrollView *imageScrollView;
}

- (IBAction)changeWidth:(id)sender;
- (IBAction)changeHeight:(id)sender;
- (NSImage*)resizeImage:(NSImage*) sourceImage newWidth:(int)targetWidth newHeight:(int)targetHeight;

@end
