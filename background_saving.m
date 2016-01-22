// Background Saving
// 
//
// IDECodeSnippetCompletionPrefix: bac
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 4523404E-37FE-45A2-951D-2335D0A71416
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
-(void)isWillResignActice:(BOOL)succes
{
    if (succes)
        [self backgroundWrite];
}
- (void)backgroundWrite
{
    // -- Check MultiTask is available
    if([[UIDevice currentDevice] respondsToSelector:@selector(isMultitaskingSupported)])
    {
        NSLog(@"Multitasking Supported");
        
        UIApplication *application = [UIApplication sharedApplication];
        __block UIBackgroundTaskIdentifier bgTask = [application beginBackgroundTaskWithExpirationHandler:^{
            
            [application endBackgroundTask:bgTask];
            bgTask = UIBackgroundTaskInvalid;
            
        }];
        dispatch_queue_t myQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
        dispatch_async(myQueue, ^{
            
            NSLog(@"Proceding Background Task");
            [self back:nil];

            [application endBackgroundTask:bgTask];
            bgTask = UIBackgroundTaskInvalid;
        });
    }
    else
    {
        NSLog(@"Multitasking Not Supported");
    }
}