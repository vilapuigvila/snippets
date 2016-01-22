// My Custom Table View
// 
//
// IDECodeSnippetCompletionPrefix: tav
// IDECodeSnippetCompletionScopes: [ClassImplementation]
// IDECodeSnippetIdentifier: 88604DB4-3881-4381-839A-7C6B5CE8EE79
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Objective-C
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
#pragma mark - Delegate Actions TABLE_VIEW
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (_data.count == 0)
        return 1;
    return _data.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellFirst = @"my_custom_cell";
    Custom_Cell *Cell = [tableView dequeueReusableCellWithIdentifier:CellFirst forIndexPath:indexPath];
    if (Cell == nil)
        Cell = [[Custom_Cell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellFirst];
    
    if (_data.count == 0) {
    
        //return [self.mainAppDelegate createNoRecordsFoundCellForTableView:tableView andTitle:NSLocalizedString(@"data_not_found", nil)];
        Cell.lblTittle.text = NSLocalizedString(@"Press reload button", nil);
        Cell.lblDesc.text   = NSLocalizedString(@"to get data", nil);
        return Cell;
    }

    MyClass *obj;
    obj = [self.data objectAtIndex:indexPath.row];
    Cell.lblTittle.text = obj.title;
    Cell.lblDesc.text   = obj.description;

    return Cell;
    
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (_data.count != 0) {
        MyClass *mClass = [self.data objectAtIndex:indexPath.row];
        mClass.index = indexPath.row;
        [self performSegueWithIdentifier:kFromTableVToDetail sender:mClass];
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    //cell.backgroundColor = [UIColor blackColor];
}