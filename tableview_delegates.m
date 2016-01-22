// TableView Delegates
// Nedeed delegates methods for Table View
//
// IDECodeSnippetCompletionPrefix: td
// IDECodeSnippetCompletionScopes: [All]
// IDECodeSnippetIdentifier: C241B041-E5C6-48FC-A0E1-292E36DF3625
// IDECodeSnippetLanguage: Xcode.SourceCodeLanguage.Swift
// IDECodeSnippetUserSnippet: 1
// IDECodeSnippetVersion: 2
    func numberOfSectionsInTableView(tableView: UITableView) -> Int  {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int  {
        return 1
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        if indexPath.row % 2 == 0 {
            return 368 
            
        } else {
            
            return 189
        }
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell  {
        
        if indexPath.row % 2 == 0 {
            
            let cell: CustomCellTableViewCell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as CustomCellTableViewCell

            
            return cell
            
        } else {
            
            let cell: CellTwo = tableView.dequeueReusableCellWithIdentifier("CellTwo", forIndexPath: indexPath) as CellTwo
            
           
            return cell
        }
        
    }