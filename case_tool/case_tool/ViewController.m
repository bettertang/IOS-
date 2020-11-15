//
//  ViewController.m
//  case_tool
//
//  Created by better_yst on 2020/10/21.
//  Copyright © 2020 better_yst. All rights reserved.
//

#import "ViewController.h"
#import "TempViewController.h"

@interface ViewController ()
//@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *reusltField;
//- (IBAction)UpperCase;
//- (IBAction)lowerCase;
@property (weak, nonatomic) IBOutlet UILabel *label_1;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    //TODO 改变背景颜色
    [self.view setBackgroundColor:UIColor.blueColor];
    // Do any additional setup after loading the view.
    
    //TODO 1、大小写demo
//     NSLog(@"awake text %@ / resunt %@",_textField,_reusltField);
//    [_textField setPlaceholder:@"Enter text here"];
//    _reusltField.text = @"结果";
    
    //TODO 2、delegate协议demo
//    SampleProClass *sampleProto = [[SampleProClass alloc] init];
//    sampleProto.delegate = self;
//    [_reusltField setText:@"Processing ...."];
//    [sampleProto startProcess];
    
    //_label_1.text = @"demo";
    
    //TODO button label UI元素展示
    [self addDifferentTypeofbutton];
   // [self addLabel];
    
    //[self performSelector:@selector(hideStatusBar) withObject:nil afterDelay:3.0];
    
    
    
}

//-(id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
//    self =[super initWithNibName:nibNameOrNil bundle:nibNameOrNil];
//    if (self!=nil){
//        NSLog(@"init:text %@/result%@",_textField,_reusltField);
//    }
//    return self;
//}
//
//
//- (IBAction)UpperCase {
//    NSString *original = _textField.text;
//    NSString *uppercase = [original uppercaseString];
//    _reusltField.text=uppercase;
//
//}
//
//- (IBAction)lowerCase {
//    NSString *orignal = _textField.text;
//    NSString *lowerper = [orignal lowercaseString];
//    _reusltField.text=lowerper;
//}

//#pragma mart - Sample protocol delegate
//-(void) SampleProtocompleted{
//    [_reusltField setText:@"Process Completed!"];
//    NSLog(@"Process Completed!");
//}

-(void) addTextField{
    UILabel *prefixlabel = [[UILabel alloc] initWithFrame:CGRectZero];
    prefixlabel.text =@"## ";
    _label_1.text = @"键盘输入获取文字";
    [prefixlabel setFont:[UIFont boldSystemFontOfSize:20]];
    //[prefixlabel sizeToFit];
    
    UITextField * textfield = [[UITextField alloc] initWithFrame:CGRectMake(20, 50, 280, 100)];
    textfield.borderStyle = UITextBorderStyleRoundedRect;
    textfield.keyboardType=UIKeyboardTypePhonePad;
    textfield.contentVerticalAlignment= UIControlContentVerticalAlignmentCenter;
    [textfield setFont:[UIFont boldSystemFontOfSize:12]];
    
    textfield.placeholder =@"Simple Text field";
    
    textfield.leftView = prefixlabel;
    
    textfield.leftViewMode =UITextFieldViewModeWhileEditing; //left view展示的时机 #Todo
     
    [self.view addSubview:textfield];  //将textfield 加入view 
    
    //进行委托
    textfield.delegate =self;
   
    
}



-(IBAction)addDifferentTypeofbutton{
    UIButton * roundButton =[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [roundButton setFrame:CGRectMake(60, 50, 200, 40)];
    [roundButton setTitle:@"Rouded类型按钮" forState:UIControlStateNormal];
    [self.view addSubview:roundButton];
  
    [roundButton addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
//
//    UIButton * customButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    [customButton setBackgroundColor:[UIColor lightGrayColor]];
//    [customButton setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
//    [customButton setBackgroundImage:[UIImage imageNamed:@"button_default.png"] forState:UIControlStateNormal];
//    [customButton setBackgroundImage:[UIImage imageNamed:@"Button_Highlight.png"] forState:UIControlStateHighlighted];
//    [customButton setFrame:CGRectMake(60, 100, 200, 40)];
//    [customButton setTitle:@"custom类型按钮" forState:UIControlStateNormal];
//    [self.view addSubview:customButton];
//
//    UIButton * detailDisclosureButton =[UIButton buttonWithType:UIButtonTypeDetailDisclosure];
//    [detailDisclosureButton setFrame:CGRectMake(60, 150, 200, 40)];
//    [detailDisclosureButton setTitle:@"detailDiscou类型button" forState:UIControlStateNormal];
//    [self.view addSubview:detailDisclosureButton];
//
//    UIButton *contactButton = [UIButton buttonWithType:UIButtonTypeContactAdd];
//    [contactButton setFrame:CGRectMake(60, 200, 200, 40)];
//    [contactButton setTitle:@"Contact类型button" forState:UIControlStateNormal];
//    [self.view addSubview:contactButton];
//
//    UIButton *infoDarkButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
//    [infoDarkButton setFrame:CGRectMake(60, 250, 200, 40)];
//    //[infoDarkButton setTitle:@"INfoDark按钮类型" forState:UIControlStateNormal];
//    [self.view addSubview:infoDarkButton];
//
//
//    UIButton *infoLightButton = [UIButton buttonWithType:UIButtonTypeInfoLight];
//    [infoLightButton setFrame:CGRectMake(60, 300, 200, 40)];
//    //[infoLightButton setTitle:@"infoLight按钮" forState:UIControlStateNormal];
//    [self.view addSubview:infoLightButton];
//
//
    
}
//TODO:业务逻辑
-(IBAction)clickButton:(id)sender{
    NSLog(@"Touch me!");
    //[self.view setBackgroundColor:UIColor.blackColor];
    [self addLabel];
    
    
    
    
    
    
}

#pragma mark addLabel
-(void) addLabel{
    UILabel *mylabel =[[UILabel alloc] initWithFrame:CGRectMake(20, 200, 280, 80)];
    mylabel.numberOfLines=0;
    mylabel.textColor =[UIColor redColor];
    mylabel.backgroundColor = [UIColor blackColor];
    mylabel.textAlignment = UITextAlignmentCenter;
    mylabel.text =@"这是一个demo lable \n of mutiple lines.";
    [self.view addSubview:mylabel];
}

-(void) addToolbar{
    UIBarButtonItem *spaceItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    UIBarButtonItem *customItem1 =[[UIBarButtonItem alloc] initWithTitle:@"Tool1" style:UIBarButtonItemStyleBordered target:self action:@selector(toolBarItem1:)];
    
    UIBarButtonItem *customItem2 =[[UIBarButtonItem alloc] initWithTitle:@"Tool2" style:UIBarButtonItemStyleBordered target:self action:@selector(toolBarItem2:)];
    
    NSArray * toolbarItems =[NSArray arrayWithObjects:customItem1,spaceItem,customItem2,nil];
    
    UIToolbar *toolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 366+54, 320, 50)];
    
    [toolbar setBarStyle:UIBarStyleBlack];
    [self.view addSubview:toolbar];
    [toolbar setItems:toolbarItems];
    
}


-(IBAction)toolBarItem1:(id)sender{
    [_label_1 setText:@"Tool 1 selected"];
}

-(IBAction)toolBarItem2:(id)sender{
    [_label_1 setText:@"Tool 2 selected"];
}

#pragma mark SattusBar

-(void) hideStatusBar{
    [[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:UIStatusBarAnimationFade];
    [UIView beginAnimations:@"Statusbar hide" context:nil];
    [UIView setAnimationDuration:0.5];
    [self.view setFrame:CGRectMake(0, 0, 1334, 750)];
    [UIView commitAnimations];
}


//#pragma mark navViewControler

-(IBAction)pushNewView:(id)sender{
    TempViewController *tempVC =[[TempViewController alloc] initWithNibName:@"TempViewControler" bundle:nil];
    [self.navigationController pushViewController:tempVC animated:YES];
}


-(IBAction)myButtonClicked :(id)sender{
    [navButton setHidden:!navButton.hidden]; //
}

-(void) addNavigationBarButton{
    UIBarButtonItem *myNavButton = [[UIBarButtonItem alloc] initWithTitle:@"Mybutton" style:UIBarButtonItemStylePlain target:self action:@selector(myButtonClicked:)];

    [self.navigationController.navigationBar setBarStyle:UIBarStyleBlack];
    [self.navigationItem setRightBarButtonItem:myNavButton];

    navButton =[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [navButton setFrame:CGRectMake(60, 50, 200, 40)];
    [navButton setTitle:@"Push Navigation" forState:UIControlStateNormal];
    [navButton addTarget:self action:@selector(pushNewView:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:navButton];
    [navButton setHidden:YES];
}






//#pragma mark - TextField Delegates
//
////textFieldDidBeginEditing 和 textFieldDidEndEditing  是delegate协议的函数
//
//-(void) textFieldDidBeginEditing:(UITextField *) textField{
//    NSLog(@"文字开始编辑...");
//}
//
//-(void) textFieldDidEndEditing:(UITextField *) textField{
//    NSLog(@"结束展示 %@",textField.text);
//    textField.text = @"change string";
//    NSLog(@"文字编辑结束!");
//}
//
//-(BOOL) textFieldShouldReturn:(UITextField *) textField{
//    [textField resignFirstResponder];
//    return NO;
//}

@end
