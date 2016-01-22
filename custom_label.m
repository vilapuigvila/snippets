// Custom Label
// Create a tipic custom UILabel
//
// IDECodeSnippetCompletionPrefix: lal
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: F8348C69-DD49-4D00-BF7C-DB4668F69DC0
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 100, 50)];
        label.center = self.imageGallery.center;
        label.font = [UIFont fontWithName:@"New Times Roman" size:18];
        label.textColor = [UIColor blackColor];
        label.backgroundColor = [UIColor clearColor];
        label.text = NSLocalizedString(@"No hay fotos para mostrar", @"");
        label.textAlignment = NSTextAlignmentCenter;
        [self.imageGallery addSubview:label];