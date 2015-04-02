//
//  ViewController.m
//  test
//
//  Created by Pavel Tretyakov on 11/18/14.
//  Copyright (c) 2014 Pavel Tretyakov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end


@implementation ViewController

- (void) stringTest
{
	NSObject* obj1 = [[NSObject new] autorelease];
	NSObject* obj2 = [[NSObject new] autorelease];
	NSObject* obj3 = [[NSObject new] autorelease];
	NSObject* obj4 = [[NSObject new] autorelease];
	NSString* str = @"/Users/zaryanov/Movies/rootfolder/시티 오브 히어로 (City of Heroes)/로니 리 가드너 (1961년부터 2010년까지)는 1985 년에 살인죄로 사형을받은 유타 주에서 총살형 된 미국의 악당이었다. 1984 년에 그는 솔트 레이크 시티에서 강도 동안 바텐더를 살해.m4v";
	NSLog(@"%s str %@", __func__, str);
	NSCharacterSet* charSet = [NSCharacterSet URLPathAllowedCharacterSet];
	str = [str stringByAddingPercentEncodingWithAllowedCharacters:charSet];
	NSLog(@"%s str %@", __func__, str);
	NSLog(@"%s obj1 %@ obj2 %@ obj3 %@ obj4 %@", __func__, obj1, obj2, obj3, obj4);
}

// from https://gist.github.com/clowwindy/0d800f07a5e95e5c4dd0
- (void) stringTest2
{
	NSString *s1 = @"对于Launcher这类产品来说，它很容易让人们陷入这是工具还是平台的争执中。不过在李涛看来，这种争执完全是一个伪命题，因为一款产品用的人多了它自然就是平台，用的人少了它什么都不是。基于此，李涛其实并没有过多的去考虑APUS Launcher要做平台还是工具，他想的更多的是如何解决用户的问题。作为一个即用iOS又用Android的用户，我本人的一个体会就是iPhone会给人一种你越用越觉得它好用的感觉，但Android就不会。所以APUS Launcher现在就要解决这个难题，让Android变得好用。这也是为何李涛会说自己做的不是一个Launcher而是一套“用户系统”。";
	
	NSString *s2 = [s1 stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
	
	// crash with iOS 8.1 SDK!
	NSString *s3 = [s1 stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLFragmentAllowedCharacterSet]];
	
	NSLog(@"%@", s2);
	NSLog(@"%@", s3);
}

- (void)viewDidLoad {
	[super viewDidLoad];
	
	[self stringTest];
}

@end
