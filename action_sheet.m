// Action sheet
// Create a typical action sheet
//
// IDECodeSnippetCompletionPrefix: Action
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 44D2093E-F8E7-4BBA-A9D4-3E97A1DDC59A
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
    UIActionSheet *sheet = [[UIActionSheet alloc] initWithTitle:NSLocalizedString(@"What image type",)
                                                       delegate:self
                                              cancelButtonTitle:NSLocalizedString(@"Cancel",) //2
                                         destructiveButtonTitle:nil
                                              otherButtonTitles:NSLocalizedString(@"Crop Image",), //0
                            NSLocalizedString(@"Original Image",), nil];
    [sheet setTag:1];
    [sheet showInView:self.view];
    [sheet setDelegate:self];