//  Delegate Init
// - (id)initWithDelegate:(id)aDelegate aFrame:
//
// IDECodeSnippetCompletionPrefix: mdin
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: DCE277F1-9316-4459-84F8-365B4682C84C
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
//-- .h
- (id)initWithDelegate:(id)aDelegate aFrame:(CGRect)aFrame;
//--.m
- (id)initWithDelegate:(id)aDelegate aFrame:(CGRect)aFrame
{
    self = [self initWithFrame:aFrame];
    if (self)
    {
        self.delegate = aDelegate;
    }
    return self;
    
}