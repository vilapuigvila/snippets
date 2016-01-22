// Dispatch Custom
// dispatch main queue
//
// IDECodeSnippetCompletionPrefix: dsp
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 0DF4E491-C356-4F09-9F45-96F3E49E2D92
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
dispatch_queue_t myQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0);
dispatch_async(myQueue, ^{
    
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        
    });
});