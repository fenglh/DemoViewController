
- (void)obfuscateXMLFile:(NSString *)file {
    NSData *xmlData = [NSData dataWithContentsOfFile:file];
    if (xmlData == nil) {
        return ;
    }
    

    
    NSError *error = nil;
    NSXMLDocument *document = [[NSXMLDocument alloc] initWithData:xmlData options:NSXMLNodePreserveWhitespace error:&error];
    if (!error) {

        [self obfuscateXMLNode:document.rootElement isStoryboard:[file.pathExtension isEqualToString:@"storyboard"]];
        [document.XMLData writeToFile:file atomically:YES];
    }
}

- (void)obfuscateXMLNode:(NSXMLNode *)node isStoryboard:(BOOL)isStoryboard{
    if (!node || node.kind == NSXMLCommentKind) { //忽略备注
        return;
    }
    
    if ([node isKindOfClass:[NSXMLElement class]]) {
        NSXMLElement *element =(NSXMLElement *) node;
        //识别自定义类型和文件拥有者
        if (!isStoryboard &&
            [element attributeForName:@"placeholderIdentifier"] &&
            [[element attributeForName:@"placeholderIdentifier"].stringValue isEqualToString:@"IBFilesOwner"] &&
            [element attributeForName:@"customClass"]) {
            NSLog(@"xib文件拥有者:%@", [element attributeForName:@"customClass"].stringValue);
        }else if(isStoryboard &&
                 element.attributes.count > 0 &&
                 [element attributeForName:@"sceneMemberID"] &&
                 [[element attributeForName:@"sceneMemberID"].stringValue isEqualToString:@"viewController"] &&
                 [element attributeForName:@"customClass"]){
            NSLog(@"storyboard文件拥有者:%@", [element attributeForName:@"customClass"].stringValue);
        }else if([element attributeForName:@"customClass"]){
  
            NSLog(@"定制类:%@",[element attributeForName:@"customClass"].stringValue);
        }else if ([element.name isEqualToString:@"outlet"]) {
            NSLog(@"输出:%@",[element attributeForName:@"property"].stringValue);
        }else if ([element.name isEqualToString:@"action"]) {
            
            NSLog(@"操作:%@",[element attributeForName:@"selector"].stringValue);
        }
        
        //处理子节点
        for (NSXMLNode *subNode in element.children) {
            [self obfuscateXMLNode:subNode isStoryboard:isStoryboard];
        }
    }
}