// Go to some TabController
// 
//
// IDECodeSnippetCompletionPrefix: gts
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 49A282D2-54DF-4111-B3EC-ED9DF916339C
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
- (void)goToTabController {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:IS_IPAD ? @"iPadMain" : @"iPhoneMain" bundle: nil];
    TabBarCustomViewController *controller = (TabBarCustomViewController *)[storyboard instantiateViewControllerWithIdentifier: @"tabBarController"];
    controller.selectedIndex = 0;
    //controller.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:controller];
    [navigationController setNavigationBarHidden:YES];
    self.window.rootViewController = nil;
    
    [UIView transitionWithView:self.window
                      duration:0.5f
                       options:UIViewAnimationOptionTransitionCrossDissolve
                    animations:^{ self.window.rootViewController = navigationController; }
                    completion:nil];
}