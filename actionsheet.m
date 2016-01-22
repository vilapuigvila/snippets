// actionSheet
// 
//
// IDECodeSnippetCompletionPrefix: alc
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: 82792D22-7B4B-468B-B668-5194DEC6EC01
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2

- (IBAction)actImgQ:(id)sender {

    UIAlertController *actionSheet = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"CHOOSE_ACTION", nil) message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    
    [actionSheet addAction:[UIAlertAction actionWithTitle:NSLocalizedString(@"CANCEL", nil) style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
        
    }]];
    
    [actionSheet addAction:[UIAlertAction actionWithTitle:kImageQuality_1 style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [AVPUtils setUserDefaultString:kImageQuality_1 forKey:DEFAULTS_IMAGE_QUALITY];
    }]];
    
    [actionSheet addAction:[UIAlertAction actionWithTitle:kImageQuality_2 style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [AVPUtils setUserDefaultString:kImageQuality_2 forKey:DEFAULTS_IMAGE_QUALITY];
    }]];
    
    [actionSheet addAction:[UIAlertAction actionWithTitle:kImageQuality_3 style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [AVPUtils setUserDefaultString:kImageQuality_3 forKey:DEFAULTS_IMAGE_QUALITY];

    }]];
    
    [self presentViewController:actionSheet animated:YES completion:^{
        
    }];
}