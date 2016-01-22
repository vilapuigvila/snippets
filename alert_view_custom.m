// Alert View Custom
// Make a custom tipically alert view
//
// IDECodeSnippetCompletionPrefix: alert
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: CE35F94C-0FED-46D4-A654-87CC2FB61D44
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
UIAlertView *alert = [AVPUtils alertWithTitle:@"" msg:@"" okBtnTxt:@""];
UIAlertView *alert = [AVPUtils alertWithTitle:@"" msg:@"" okBtnTxt:@""//1
    noBtnTxt:@""];

[AVPUtils showAlertView:alert withCallback:^(NSInteger buttonIndex) {
    if (buttonIndex == 1)
    {
        
    }
}];