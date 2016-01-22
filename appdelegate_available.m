// AppDelegate Available
// AppDelegate Available in All Project
//
// IDECodeSnippetCompletionPrefix: apde
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 450B991A-06A7-409E-AB39-73C9D5EFDB72
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//.h
+(AppDelegate*)mainAppDelegate;
//.m
+(AppDelegate *)mainAppDelegate
{
    return (AppDelegate*)[[UIApplication sharedApplication]delegate];
}
// .h some view
@class AppDelegate;
@property (nonatomic, strong) AppDelegate *mainAppDel;

// Instantiate appDelegate in some view .m
[AppDelegate mainAppDelegate].delegate = self;


// add to pch
//#import "AppDelegate.h"