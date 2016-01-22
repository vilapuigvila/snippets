// -(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint pTouch = [touch locationInView:self.view];
    NSLog(@"Test %@",NSStringFromCGPoint(pTouch));
}
// Get CGPoint when user touch in Screen
//
// IDECodeSnippetCompletionPrefix: tp
// IDECodeSnippetCompletionScopes: [CodeBlock]
// IDECodeSnippetIdentifier: C3B8251F-1B40-40CA-8DE9-E0E1CB65399C
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint pTouch = [touch locationInView:self.view];
    NSLog(@"Test %@",NSStringFromCGPoint(pTouch));
}