ObjcTemplate
============

#####HOW TO USE?
Copy the "Classes" Folder into your project, import the "Headers.h" file to the .pch(old xcode auto genreated, new xcode manual create it) file.

Old-Xcode-Version

```
#import <Availability.h>

#ifndef __IPHONE_3_0
#warning "This project uses features only available in iOS SDK 3.0 and later."
#endif

#ifdef __OBJC__
    #import <UIKit/UIKit.h>
    #import <Foundation/Foundation.h>
#endif

//debug mode
#ifndef __OPTIMIZE__
#define NSLog(...) NSLog(__VA_ARGS__)
#import "DebugConfigHeader.h"
//release mode
#else
#define NSLog(...) {}
#import "ReleaseConfigHeader.h"
#endif
#import "Headers.h"
```

New-Xcode-Version

```
#import <Foundation/Foundation.h>
#import "Headers.h"
//debug mode
#ifndef __OPTIMIZE__
#define NSLog(...) NSLog(__VA_ARGS__)
#import "AppConfigHeader.h"
//release mode
#else
#define NSLog(...) {}
#import "AppConfigHeader.h"
#endif
```

ObjcTemplate 's Classes Folder Structure

```
.
├── 3rdlibsHeader #3rd libs import
│   ├── AES
│   │   ├── AESCrypt.h
│   │   ├── AESCrypt.m
│   │   ├── NSData+Base64.h
│   │   ├── NSData+Base64.m
│   │   ├── NSData+CommonCrypto.h
│   │   ├── NSData+CommonCrypto.m
│   │   ├── NSString+Base64.h
│   │   └── NSString+Base64.m
│   ├── Reachability   				#Network Check 3rdlib
│   │   ├── AFNetworkReachabilityManager.h
│   │   └── AFNetworkReachabilityManager.m
│   └── UIViewExt      #UIViewExt 3rdlib, easy get width,height,x,y
│       ├── UIViewExt.h
│       └── UIViewExt.m
├── Categories 	# extends or Categories
│   ├── NSDate+Utils.h
│   ├── NSDate+Utils.m
│   ├── NSObject+Convert.h
│   ├── NSObject+Convert.m
│   ├── NSObject+OO.h #  setting the UILabel backgroudColor = [UIColor clearColor]; setting the UIImageView 's cornerRadius equal 5;
│   ├── NSObject+OO.m
│   ├── NSString+Utils.h
│   ├── NSString+Utils.m
│   ├── UIButton+Utils.h
│   ├── UIButton+Utils.m
│   ├── UIImage+AssetLaunchImage.h
│   ├── UIImage+AssetLaunchImage.m
│   ├── UIImage+Color.h
│   ├── UIImage+Color.m
│   ├── UINavigationBar+Addition.h
│   ├── UINavigationBar+Addition.m
│   ├── UINavigationController+Ext.h
│   └── UINavigationController+Ext.m
├── Configs 	#app configs
│   ├── 3rdlibsHeader.h #import all 3rdlibs
│   ├── Apis.h #app apis
│   ├── Categories.h 	#import all categories
│   ├── ColorsHeader.h #all color set
│   ├── ConfigsHeader.h #cnfigs
│   ├── Core.h #import all core headers
│   ├── DebugConfigHeader.h
│   ├── Headers.h #import all headers,3rdlibHeader,Categories.h.... this file must import in *.pch file;
│   ├── ImagesHeader.h #images set
│   ├── Macros.h #Macros set
│   ├── NotificationsHeader.h #notification set
│   ├── ParamsHeader.h #param set
│   ├── ReleaseConfigHeader.h #release diff config set
│   ├── UtilsHeader.h #utils set
│   └── VCsHeader.h #vc header
├── Root #root vc & views
│   ├── VCs
│   │   ├── NavViewController.h
│   │   ├── NavViewController.m
│   │   ├── RootTabBarController.h
│   │   ├── RootTabBarController.m
│   │   ├── RootViewController.h
│   │   └── RootViewController.m
│   └── Views
│       ├── OOUIImageView.h
│       ├── OOUIImageView.m
│       ├── OOUILabel.h
│       └── OOUILabel.m
├── Utils
│   ├── AnimationManager.h
│   ├── AnimationManager.m
│   ├── Settings.h #app all settings
│   ├── Settings.m
│   ├── UIManager.h  #UIManger ,manage all ui [vc] create
│   ├── UIManager.m
│   ├── Utils.h
│   └── Utils.m
└── VCs #module vc
    ├── Login&RegisterVc #login and register submodule
    │   ├── Models #submodule's model and views
    │   │   └── login_model
    │   ├── OOLoginViewController.h #submodule vc
    │   ├── OOLoginViewController.m
    │   └── Views
    │       └── login_view
    └── MainVc
        ├── Models
        │   └── main_model
        ├── OOMainViewController.h
        ├── OOMainViewController.m
        └── Views
            └── main_view
