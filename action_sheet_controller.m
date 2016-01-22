// Action Sheet Controller
// Default
//
// IDECodeSnippetCompletionPrefix: asc
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: AA4E9522-FA24-40D4-834D-F87182B1D328
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 0
    UIAlertAction *action  = [UIAlertController alertActionDefaultWithTitle:@"CANCEL" withHandler:^(UIAlertAction * _Nonnull action) {

    }];
    UIAlertAction *cancel  = [UIAlertController alertActionCancelWithTitle:@"CANCEL" withHandler:^(UIAlertAction * _Nonnull action) {
        [self.view endEditing:YES];
    }];
    UIAlertAction *delete = [UIAlertController alertActionDestructiveWithTitle:@"DELETE" withHandler:^(UIAlertAction * _Nonnull action) {

    }];
    
    [UIAlertController showActionSheewWithTitle:nil withMessage:nil withActions:@[action, delete,cancel]];