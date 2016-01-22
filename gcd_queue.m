// GCD Queue
// 
//
// IDECodeSnippetCompletionPrefix: dsq
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 99A1E364-F9B2-411B-AAD1-7ED7798C1B1F
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
dispatch_queue_t queue = dispatch_queue_create("com.pskmoons.queue", DISPATCH_QUEUE_CONCURRENT);
                
                dispatch_async(queue, ^{
                    NSLog(@"start one!\n");
                    sleep(4);
                    NSLog(@"end one!\n");
                });
                
                dispatch_async(queue, ^{
                    NSLog(@"start two!\n");
                    sleep(2);
                    NSLog(@"end two!\n");
                });
                
                dispatch_barrier_async(queue, ^{
                    NSLog(@"Hi, I'm the final block!\n");
                    
                });
            }];