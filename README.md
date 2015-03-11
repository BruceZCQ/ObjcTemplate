ObjcTemplate
============

ObjcTemplate => Get Classes Folder

```
.
|-- 3rdlibs
|	|-- AES
|   |-- Reachability      #Network Check 3rdlib
|   |   |-- AFNetworkReachabilityManager.h
|   |   `-- AFNetworkReachabilityManager.m
|   `-- UIViewExt       #UIViewExt 3rdlib, easy get width,height,x,y
|       |-- UIViewExt.h
|       `-- UIViewExt.m
|-- Categories	       # extends or Categories
|   |-- NSObject+OO.h   #  setting the UILabel backgroudColor = [UIColor clearColor]; setting the UIImageView 's cornerRadius equal 5;
|   |-- NSObject+OO.m
|	|-- NSDate+Utils.h/m
|	|-- NSObject+Convert.h/m
|	|-- NSString+Utils.h/m
|	|-- UButton+Utils.h/m
|	|-- UIImage+AssetLaunchImage.h/m
|	`-- UIImage+Color.h/m
|-- Configs
|   |-- 3rdlibsHeader.h  # import all 3rdlibs
|   |-- Categories.h      #import all categories
|   |-- ColorsHeader.h  #color setting
|   |-- ConfigsHeader.h  #cnfigs
|   |-- Headers.h      #import all headers,3rdlibHeader,Categories.h.... this file must import in *.pch file;
|   |-- ModelsHeader.h  #import all model
|   |-- UtilsHeader.h   #import all utils
|   |-- VCsHeader.h  #import all vcs
|   |-- ViewsHeaders.h  #import all views
|	|-- Apis.h #app apis
|	|-- Core.h	#import all core headers
|	|-- ColorsHeader.h #all color set
|	|-- ParamsHeader.h #params
|	|-- ImagesHeader.h #images set
|   `-- NotificationsHeader.h #notification
|-- Models #model folder
|-- Resources 
|-- Utils
|   |-- AnimationManager.h  #animation
|   |-- AnimationManager.m 
|   |-- Settings.h   # app all settings
|   |-- Settings.m
|   |-- UIManager.h #UIManger ,manage all ui [vc] create
|   |-- UIManager.m
|   |-- Utils.h 
|   `-- Utils.m
|-- VCs # Nav ,TabBarController and RootViewController with auto rate logic and ios6 ,ios 7 frame fix
|   |-- NavViewController.h
|   |-- NavViewController.m
|   |-- RootViewController.h
|   |-- RootViewController.m
|   |-- RootTabBarController.h
|   `-- RootTabBarController.m
`-- Views
    |-- OOUIImageView.h
    |-- OOUIImageView.m
    |-- OOUILabel.h
    `-- OOUILabel.m
