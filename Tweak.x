//iOS 11

%hook SBUICallToActionLabel


- (void)setText:(id)arg1 forLanguage:(id)arg2 animated:(bool)arg3 {
      int battery = [[UIDevice currentDevice] batteryLevel] * 100;
      arg1 = [NSString stringWithFormat:@"%i%%", battery];
      %orig;
}

%end

//iOS 12
%hook SBDashBoardTeachableMomentsContainerViewController
-(void)_updateText:(id)arg1 {
  int battery = [[UIDevice currentDevice] batteryLevel] * 100;
  arg1 = [NSString stringWithFormat:@"%i%%", battery];
  %orig;
}
%end
