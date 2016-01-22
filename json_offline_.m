// json offline 
// read a json offline
//
// IDECodeSnippetCompletionPrefix: jsn
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 81FA6B16-0232-4407-8899-D254C6751053
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
    NSData *theData = [NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"" ofType:@"json"]];
    NSDictionary *parsedData = [NSJSONSerialization JSONObjectWithData:theData options:NSJSONReadingMutableContainers error:nil];