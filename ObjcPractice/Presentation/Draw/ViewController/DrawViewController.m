//
//  DrawViewController.m
//  ObjcPractice
//
//  Created by JeongHwiJin on 9/27/24.
//

#import "DrawViewController.h"
#import "ObjcPractice-Swift.h" // Swift 파일과 연동하기 위해 생성된 헤더 파일을 import. 이때, Swift.h는 Swift 파일을 만들면 Xcode가 자동 생성해준다.

@interface DrawViewController ()

@property (nonatomic, strong) UIButton *drawButton; // 여러 메서드에서 접근하거나 속성을 변경해야 할 경우에 property로 선언. 그런 경우가 아니라면 configView의 지역 변수로 선언하는 것이 메모리 측면에서 효율적.

@end

@implementation DrawViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self configView];
    [self configLayout];
}

- (void)configView {
    self.drawButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.drawButton setTitle:@"뽑기 참여하기" forState:UIControlStateNormal];
    [self.drawButton addTarget:self action:@selector(checkDraw) forControlEvents:UIControlEventTouchUpInside];
}

- (void)configLayout {
    // Auto Layout 사용을 위해
    self.drawButton.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.view addSubview:self.drawButton];
    
    [NSLayoutConstraint activateConstraints:@[
        [self.drawButton.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
        [self.drawButton.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor],
        [self.drawButton.widthAnchor constraintEqualToConstant:200],
        [self.drawButton.heightAnchor constraintEqualToConstant:50]
    ]];
}

- (void)checkDraw {
    // 현재 시간 가져오기
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"HHmmss"];
    NSString *currentTime = [formatter stringFromDate:[NSDate date]];
    
    // "7"이 포함되어 있는지 확인
    NSLog(@"%@", currentTime);
    if ([currentTime containsString:@"7"]) {
        [self goToResultWithMessage:@"당첨을 축하합니다!"];
    } else {
        [self goToResultWithMessage:@"꽝 ㅋㅋ"];
    }
}
- (void)goToResultWithMessage:(NSString *)message {
}
@end
