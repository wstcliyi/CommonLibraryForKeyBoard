# CommonLibraryForKeyBoard 1.0.0
Automatically Show and Hide a Keyboard in a textField
When the textField is selected, it will adjust the screen and scroll up
When the user touches outside the textField, the keyboard will hide ,and the screen will scroll down

#NEEDED 
the textField (UI) should be placed in a scrollView(UIScrollView), and tell the Keyboard the bottom Item and its constrain to bottom.
call the class Function [Keyboard setTextField:(UITextField*)] to tell the controller which textField is active for user.
