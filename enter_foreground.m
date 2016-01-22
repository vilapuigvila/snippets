// Enter Foreground
// 
//
// IDECodeSnippetCompletionPrefix: enfo
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 72109AA3-01FF-47A2-AA9C-5AC675207871
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
[[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(enterForeground:)
                                                 name:UIApplicationWillEnterForegroundNotification
                                               object:nil];
 
-(void)enterForeground:(NSNotification *)notification
{
    
}
 -(void)dealloc
{
    [[NSNotificationCenter defaultCenter]removeObserver:self];
    
}

