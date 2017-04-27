//
//  header.h
//  三方登录UM
//
//  Created by Cycle on 16/8/3.
//  Copyright © 2016年 Cycle. All rights reserved.
//

#ifndef header_h
#define header_h

#ifdef __OBJC__

#import <UShareUI/UShareUI.h>
#import <UMSocialCore/UMSocialCore.h>
/**********   帐号    *************/

//友盟账号中应用的appkey   5878905d99f0c77eb9001a95
///文莱花香的app应用
//#define MyUmengAppkey @"5699978767e58e2592001127"
///友盟账号中应用的appkey  胖嘟嘟商城
#define MyUmengAppkey @"5878905d99f0c77eb9001a95"


//QQ 测试appId  和appkey
#define MyQQAPPID @"1105514635"
#define MyQQAPPKEY @"Oy7xK6eliQ8DiXWM"

//新浪微博4086149727(新浪微博上绑定了哪一个bundleID，我们的app的bundleID也要一致)
//这个kep是com.cycle.GoHappyWithUS的
//#define MySinaAppKey @"4086149727"
//#define MySinaAppSecret @"86917127e168925c4addb95053567018"
//这个kep是com.pddzn.CDSBZX的
#define MySinaAppKey @"1689352969"
#define MySinaAppSecret @"175d27814963d75bfa7ddda0ca6d5020"
#define MySinaRediulURL @"http://pddzn.com"

//微信(别人的，已经过期了)
//#define MyWXAPPID @"wx7bae942a7b898c63"
//#define MyWXAPPsecret @"e001c1cbddba6b6c6ec923d9d4b97556"
//#define MyWXUrl @"www.app660.com"

#define MyWXAPPID @"wx02340148c48f376e"
#define MyWXAPPsecret @"e001c1cbddba6b6c6ec923d9d4b97556"
#define MyWXUrl @"www.app660.com"


#import "CycleUMShareTool.h"


//代码块self的弱应用
#define WS(weakSelf) __weak __typeof(&*self)weakSelf = self;

///判断字符串是否为空
#define kisNilString(__String) (__String==nil || __String == (id)[NSNull null] || ![__String isKindOfClass:[NSString class]] || [__String isEqualToString:@""] || [[__String stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] isEqualToString:@""])

#define UMSYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)



#define RGBACOLOR(r,g,b,a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]

#define KNOTIFICATION_LOGINCHANGE @"loginStateChange"

#define CHATVIEWBACKGROUNDCOLOR [UIColor colorWithRed:0.936 green:0.932 blue:0.907 alpha:1]





/**字体*/
#define kFont(selfFont) [UIFont systemFontOfSize:selfFont]
/**颜色**/
#define kColor(color)  [UIColor color]
/**三原色*/
#define KRGBACOLOR(r,g,b,a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]

#define KUIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
#define KRandomColor KRGBACOLOR(arc4random_uniform(256),arc4random_uniform(256),arc4random_uniform(256),1.0)
/**设置图片*/
#define kImageNamed(s)  [UIImage imageNamed:s]
/**传入字符串的颜色*/
#define kColorWithHexString(s)   [UIColor colorWithHexString:s]
/**设置加粗的字体*/
#define kBoldFont(f)  [UIFont boldSystemFontOfSize:f]
/**屏幕宽度和高度*/
#define screenW [UIScreen mainScreen].bounds.size.width
#define screenH [UIScreen mainScreen].bounds.size.height
/**keywindow*/
#define CDKeyWindow [UIApplication sharedApplication].keyWindow

#endif




#endif /* header_h */
