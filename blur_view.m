// Blur View
// 
//
// IDECodeSnippetCompletionPrefix: blr
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: 6784426C-FC64-4DF2-A89F-6A52BE1C396B
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
    // Add the background image and UIEffectView for the blur
    UIVisualEffectView *effectView = [[UIVisualEffectView alloc] initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleDark]];
    [effectView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view insertSubview:effectView aboveSubview:self.backgroundImageView];