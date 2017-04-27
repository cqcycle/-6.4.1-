//
//  ViewController.m
//  umsharedemo
//
//  Created by dihuijun on 17/3/23.
//  Copyright © 2017年 Cycle. All rights reserved.
//

#import "ViewController.h"
#import <UShareUI/UShareUI.h>

@interface ViewController ()<UMSocialShareMenuViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //设置用户自定义的平台
    [UMSocialUIManager setPreDefinePlatforms:@[
                                               @(UMSocialPlatformType_Sina),
                                               @(UMSocialPlatformType_WechatTimeLine),
                                               @(UMSocialPlatformType_WechatSession),
                                               @(UMSocialPlatformType_QQ),
                                               @(UMSocialPlatformType_Qzone)
                                               ]];

    
    //设置分享面板的显示和隐藏的代理回调
    [UMSocialUIManager setShareMenuViewDelegate:self];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)clickShare:(id)sender {
    
    [CycleUMShareTool CycleUMShareWithTitle:@"快乐齐分享" description:@"有快乐就一起分享呗" ShareUrl:@"http://www.baidu.com" imgURL:@"https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=916243670,2722148256&fm=117&gp=0.jpg" showInViewController:self];
//    //[UMSocialManager setPreDefinePlatforms:@[@(UMSocialPlatformType_Sina)]];
//    
//    [UMSocialUIManager showShareMenuViewInWindowWithPlatformSelectionBlock:^(UMSocialPlatformType platformType, NSDictionary *userInfo) {
//        
//        NSLog(@"userInfo:%@",userInfo);
//        //创建分享消息对象
//        UMSocialMessageObject *messageObject = [UMSocialMessageObject messageObject];
//        //创建网页内容对象
//        NSString* thumbURL = @"https://mobile.umeng.com/images/pic/home/social/img-1.png";
//        UMShareWebpageObject *shareObject = [UMShareWebpageObject shareObjectWithTitle:@"呵呵" descr:@"恩恩" thumImage:thumbURL];
//        //设置网页地址
//        shareObject.webpageUrl = @"http://www.baidu.com";
//        
//        //分享消息对象设置分享内容对象
//        messageObject.shareObject = shareObject;
//        
//#ifdef UM_Swift
//        [UMSocialSwiftInterface shareWithPlattype:platformType messageObject:messageObject viewController:self completion:^(UMSocialShareResponse * data, NSError * error) {
//#else
//            //调用分享接口
//            [[UMSocialManager defaultManager] shareToPlatform:platformType messageObject:messageObject currentViewController:self completion:^(id data, NSError *error) {
//#endif
//                if (error) {
//                    UMSocialLogInfo(@"************Share fail with error %@*********",error);
//                }else{
//                    
//                    UMSocialShareResponse *response = nil;
//                    
//                    if ([data isKindOfClass:[UMSocialShareResponse class]]) {
//                        
//                        UMSocialShareResponse *resp = data;
//                        response = resp;
//                        //分享结果消息
//                        UMSocialLogInfo(@"response message is %@",resp.message);
//                        //第三方原始返回的数据
//                        UMSocialLogInfo(@"response originalResponse data is %@",resp.originalResponse);
//                        
//                    }else{
//                        response = [[UMSocialShareResponse alloc]init];
//                        response.message = @"分享成功";
//                        UMSocialLogInfo(@"response data is %@",data);
//                    }
//                    
//                }
//                //            [self alertWithError:error];
//            }];
//            
//            
//        }];
//    
//   
//    [self CycleUMShareWithTitle:@"pdd" description:@"分享pdd" ShareUrl:@"http://pddzn.com" showInViewController:self];
//    
//    
}
//
///** UM分享（QQ,QQ空间,微信,微信朋友圈,新浪微博）*/
//- (void)CycleUMShareWithTitle:(NSString *)title description:(NSString *)description ShareUrl:(NSString *)url showInViewController:(UIViewController *)showinVC{
//
//}
#pragma mark - UMSocialShareMenuViewDelegate
- (void)UMSocialShareMenuViewDidAppear
{
        NSLog(@"UMSocialShareMenuViewDidAppear");
}
- (void)UMSocialShareMenuViewDidDisappear
{
        NSLog(@"UMSocialShareMenuViewDidDisappear");
}
     
     //不需要改变父窗口则不需要重写此协议
- (UIView*)UMSocialParentView:(UIView*)defaultSuperView
{
    return defaultSuperView;
}

@end
