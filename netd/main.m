//
//  main.m
//  netd
//
//  Created by Ed D on 17.05.2020.
//  Copyright © 2020 Alexey Dyumin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <NetworkExtension/NetworkExtension.h>

int main(int argc, char *argv[])
{
    @autoreleasepool {
        [NEProvider startSystemExtensionMode];
    }
    
    dispatch_main();
}
