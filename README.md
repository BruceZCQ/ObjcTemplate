ObjcTemplate
============

ObjcTemplate => Get Classes Folder

```
.
|-- 3rdlibs
|   |-- Reachability      #Network Check 3rdlib
|   |   |-- AFNetworkReachabilityManager.h
|   |   `-- AFNetworkReachabilityManager.m
|   `-- UIViewExt       #UIViewExt 3rdlib, easy get width,height,x,y
|       |-- UIViewExt.h
|       `-- UIViewExt.m
|-- Categories	       # extends or Categories
|   |-- NSObject+OO.h   #  setting the UILabel backgroudColor = [UIColor clearColor]; setting the UIImageView 's cornerRadius equal 5;
|   `-- NSObject+OO.m
|-- Configs
|   |-- 3rdlibsHeader.h  # import all 3rdlibs
|   |-- Categories.h      #import all categories
|   |-- ColorsHeader.h  #color setting
|   |-- ConfigsHeader.h  #cnfigs
|   |-- Headers.h      #import all headers,3rdlibHeader,Categories.h.... this file must import in *.pch file;
|   |-- ModelsHeader.h  #import all model
|   |-- UtilsHeader.h   #import all utils
|   |-- VCsHeader.h  #import all vcs
|   `-- ViewsHeaders.h  #import all views
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
