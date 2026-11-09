#import <UIKit/UIKit.h>

%hook UIApplication
- (void)finishedLaunching {
    %orig;
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Roblox Executor"
                                                                   message:@"Моё меню успешно загружено!"
                                                            preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:okAction];
    
    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alert animated:YES completion:nil];
}
%end
