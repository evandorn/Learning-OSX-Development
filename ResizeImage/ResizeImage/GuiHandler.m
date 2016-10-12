  //
//  GuiHandler.m
//  ResizeImage
//
//  Created by Evan Dorn on 10/10/16.
//  Copyright © 2016 evandorn. All rights reserved.
//

#import "GuiHandler.h"

@implementation GuiHandler

-(id)init {
    self = [super init];
    if(self){
        targetImage = [NSImage imageNamed:@"image.jpg"];
    }
    return self;
}

- (IBAction)changeWidth:(id)sender {
    
}

- (IBAction)changeHight:(id)sender {
    
}

- (NSImage*)resizeImage:(NSImage*) sourceImage newWidth:(int)targetWidth newHeight:(int)targetHeight {
    NSImage resizedImage = nil;
    return resizedImage;
}




@end
