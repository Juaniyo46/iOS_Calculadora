//
//  main.m
//  Calculadora
//
//  Created by Juan Antonio Alvarez Fernandez on 27/10/2019.
//  Copyright © 2019 Juan Antonio Alvarez Fernandez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
