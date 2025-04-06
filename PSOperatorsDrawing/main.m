//
//  main.m
//  PSOperatorsDrawing
//
//  Created by Gregory John Casamento on 4/6/25.
//

/* File: main.m */
#import <Cocoa/Cocoa.h>
#import "PSOperators.h"
#import "PolyhedraViewWraps.h"

void drawShapesExample(void) {
    // Triangle example
    colourTriangle(50, 50, 150, 50, 100, 150, 1.0, 0.0, 0.0);
    outlineTriangle(50, 50, 150, 50, 100, 150);

    // Square example
    colourSquare(200, 50, 300, 50, 300, 150, 200, 150, 0.0, 1.0, 0.0);
    outlineSquare(200, 50, 300, 50, 300, 150, 200, 150);

    // Pentagon example
    colourPentagon(400, 100, 450, 150, 425, 200, 375, 200, 350, 150, 0.0, 0.0, 1.0);
    outlinePentagon(400, 100, 450, 150, 425, 200, 375, 200, 350, 150);
}

@interface DrawingView : NSView
@end

@implementation DrawingView
- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    drawShapesExample();
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSApplication *app = [NSApplication sharedApplication];

        NSRect frame = NSMakeRect(0, 0, 600, 300);
        NSUInteger style = NSWindowStyleMaskTitled | NSWindowStyleMaskClosable | NSWindowStyleMaskResizable;
        NSWindow *window = [[NSWindow alloc] initWithContentRect:frame
                                                       styleMask:style
                                                         backing:NSBackingStoreBuffered
                                                           defer:NO];
        [window setTitle:@"PSOperators Drawing Example"];

        DrawingView *view = [[DrawingView alloc] initWithFrame:frame];
        [window setContentView:view];
        [window makeKeyAndOrderFront:nil];

        [app run];
    }
    return 0;
}
