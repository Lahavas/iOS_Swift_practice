예제 프로젝트 3. Homepnwer
==================

Homepnwer는 물품 보관을 위한 프로젝트입니다.  

#### 도전 과제

* [ ] Sections
* [ ] Constant Rows
* [ ] Customizing the Table
* [ ] Renaming the Delete Button
* [ ] Prevending Reordering
* [ ] Really Preventing Reordering
* [ ] Cell Colors
* [ ] More Stack Views
* [ ] Displaying a Number Pad
* [ ] A Custom UITextField
* [ ] Pushing More View Controllers
* [ ] Editing an Image
* [ ] Removing an Image
* [ ] Camera Overlay
* [ ] PNG

----------------------------------------------------------------------------

### Ch10 UITableView and UITableViewController

* Beginning the Homepwner Application
* UITableViewController
    * Subclassing UITableViewController
* Creating the Item Class
    * Custom initializers
* UITableView's Data Source
    * Giving the controller access to the store
    * Implementing data source methods
* UITableViewCells
    * Creating and retrieving UITableViewCells
    * Reusing UITableViewCells
* Content Insets

#### 주요 개념

* **UITableView**
    * **UITableViewController**
        * To handle its appearance (preparation and presentation) on the screen
        * UITableViewController's view is always an instance of UITableView
    * **UITableViewDataSource** protocol
        * A UITableView asks its *data source* for 
            * the number of *rows* to display
            * the *data* to be shown in those rows
            * others that make a UITableView a useful UI
        * Required Methods
            * **tableView(_:numberOfRowsInSection:)**
                * *section*
                    * each section having its own set of rows
            * **tableView(_:cellForRowAt:)
                * **IndexPath**
                    * section property
                    * row property
    * **UITableViewDelegate** protocol
        * To inform other objects of *events* involving the UITableView
  
* **UITableViewCell**
    * A cell itself has subviews
        * contentView
        * Accessory view
            * action-oriented icon
    * UITableViewCellStyle
    * **Reuse** Table View Cell
        * every cell has a *reuseIdentifier* property of type String
            * The reuse identifier is typically the name of the *cell class*
        * **dequeueReusableCell(withIdentifier:for:)**
            * Checking the pool, or queue, of cells to see
                * If the correct reuse identifier already exists
                    * it will "dequeue" that cell
                * else
                    * A new cell will be created and returned
  
* *Convenience Initializer*
    * As helpers
    * Always calls another initializer on the same class
  
* **AppDelegate**
    * For handling the changes in state that the application goes through
    * *Dependency Inversion Principle*
        * To decouple objects in an application by inverting certain dependencies between them
            1. High-level objects should not depend on low-level objects. Both should depend on abstractions.
                * A store is a lower-level object
                * ItemTableViewController is a higher-level object
            2. Abstractions should not depend on details. Details should depend on abstractions.
  
* contentInset
    * As padding for all four sides of the scroll view
  
#### 참고 자료

> [UITableView 관련 자료](https://developer.apple.com/documentation/uikit/uitableview)  
> [UITableView Guide 관련 자료](https://developer.apple.com/library/content/documentation/UserExperience/Conceptual/TableView_iPhone/AboutTableViewsiPhone/AboutTableViewsiPhone.html#//apple_ref/doc/uid/TP40007451)  
> [UITableViewController 관련 자료](https://developer.apple.com/documentation/uikit/uitableviewdatasource)  
> [arc4random 관련 자료](https://developer.apple.com/legacy/library/documentation/Darwin/Reference/ManPages/man3/arc4random.3.html)  
> [AppDelegate 관련 자료](https://developer.apple.com/library/content/documentation/iPhone/Conceptual/iPhoneOSProgrammingGuide/TheAppLifeCycle/TheAppLifeCycle.html#//apple_ref/doc/uid/TP40007072-CH2-SW2)  
> [SOLID 원칙 관련 자료](https://en.wikipedia.org/wiki/SOLID_(object-oriented_design))  
> [UITableViewCell 관련 자료](https://developer.apple.com/documentation/uikit/uitableviewcell)  
> [contentInset 관련 자료](https://developer.apple.com/documentation/uikit/uiscrollview/1619406-contentinset)  

----------------------------------------------------------------------------

### Ch11 Editing UITableView

* Editing Mode
* Adding Rows
* Deleting Rows
* Moving Rows
* Displaying User Alerts
* Design Patterns

#### 주요 개념

* Header and Footer
    * **UIView** instance
    * Table Header / Section Header
    * Table Footer / Section Footer
  
* **tableView(_:commit:forRowAt:)**
    * **UITableViewCellEditingStyle**
    * **IndexPath**
  
* **tableView(_:moveRowAt:to:)**

* **UIAlertController**
    * **UIAlertControllerStyle**
        * .actionSheet
            * To present the user with a list of actions
        * .alert
            * To display critical information
    * **UIAlertAction**
    * **modal view controller**
        * Taking over the entire screen until it has finished its work
        * **present(_:animated:completion:)**
  
* Design Patterns
    * Delegation
        * One object delegates certain responsibilities to another object
    * Data Source
        * A data source is responsible for providing data to another object when requested
    * Model-View-Controller
        * Model objects are the data
        * Views display the UI
        * Controllers provide the glue that ties the models and views together
    * Target-action pairs
        * One object calls a method on another object when a specific *event occurs*
            * The *target* is the object that has a method called on it
            * The *action* is the method being called
  
#### 참고 자료

> [UITableView 관련 자료](https://developer.apple.com/documentation/uikit/uitableview)  
> [UIAlertController 관련 자료](https://developer.apple.com/documentation/uikit/uialertcontroller)  
> [Deletagion 관련 자료](https://developer.apple.com/library/content/documentation/General/Conceptual/DevPedia-CocoaCore/Delegation.html)  
> [Data source 관련 자료](https://developer.apple.com/library/content/documentation/General/Conceptual/DevPedia-CocoaCore/Delegation.html#//apple_ref/doc/uid/TP40008195-CH14-SW3)  
> [MVC 관련 자료](https://developer.apple.com/library/content/documentation/General/Conceptual/DevPedia-CocoaCore/MVC.html#//apple_ref/doc/uid/TP40008195-CH32-SW1)  
> [Target-Action Pairs 관련 자료](https://developer.apple.com/library/content/documentation/General/Conceptual/Devpedia-CocoaApp/TargetAction.html)  

----------------------------------------------------------------------------

### Ch12 Subclassing UITableViewCell

* Creating ItemCell
* Exposing the Properties of ItemCell
* Using ItemCell
* Dynamic Cell Heights
* Dynamic Type
    * Responding to user changes

#### 주요 개념

* **UITableViewCell**
    * A **UITableView** displays a list of **UITableViewCell** objects
    * Adding subviews to the *contentView*
        * Because the cell will resize its *contentView* at certain times
  
* Dynamic Type system
    * Providing specifically designed *text styles*
    * Need to have the labels automatically adjust to content size changes
        * **adjustsFontForContentSizeCategory**
  
* **awakeFromNib()**
    * gets called on an object after it is loaded from an archive
  
#### 참고 자료

> [UITableViewCell 관련 자료](https://developer.apple.com/documentation/uikit/uitableviewcell)  
> [Self-Sizing Table View Cell 관련 자료](https://developer.apple.com/library/content/documentation/UserExperience/Conceptual/AutolayoutPG/WorkingwithSelf-SizingTableViewCells.html)  
> [Typography 관련 자료](https://developer.apple.com/ios/human-interface-guidelines/visual-design/typography/)  

----------------------------------------------------------------------------

### Ch13 Stack Views

* Using UIStackView
    * Implicit constraints
    * Stack view distribution
    * Nested stack views
    * Stack view spacing
* Segues
* Hooking Up the Content
* Passing Data Around

#### 주요 개념

* *stack view*
    * An instance of **UIStackView**
        * To create a *vertical* or *horizontal* layout
            * To lay out and manages most of the constraints
    * the **Distribution** property
        * Fill
            * leys the views lay out their content based on their *intrinsic content size*
        * Fill Equally
            * resize the labels so that they *all have the same height*, ignoring the intrinsic content size
    * programmatically
        * **addArrangedSubview(_:)**
        * **insertArrangedSubview(_:at:)**
        * **removeArrangedSubview(_:)**
  
* *intrinsic content size*
    * *content hugging priority*
        * Make the view *not want to be bigger*
    * *content compression resistance priority*
        * How much a view *resists getting smaller*
  
* **Segue**
    * an instance of **UIStoryboardSegue**
        * To move another view controller's view onto the screen
    * *style*
        * How the view controller will be presented
    * *action item*
        * The view object in the storyboard file that *triggers the segue*
        * **UIControl**
    * *identifier*
        * To programmatically access the segue
  
* **prepare(for:sender:)**
    * **UIStoryboardSegue**
        * To give you information about which segue is happening
            * *The source view controller*
            * *The destination view controller*
            * *The identifier of the segue*
    * *sender*
        * The object that triggered the segue
  
#### 참고 자료

> [UIStackView 관련 자료](https://developer.apple.com/documentation/uikit/uistackview)  
> [UIStackView Practice 관련 자료](https://developer.apple.com/library/content/documentation/UserExperience/Conceptual/AutolayoutPG/LayoutUsingStackViews.html)  
> [Instrinsic Content Size 관련 자료](https://developer.apple.com/library/content/documentation/UserExperience/Conceptual/AutolayoutPG/AnatomyofaConstraint.html)  
> [Segue Practice 관련 자료](https://developer.apple.com/library/content/featuredarticles/ViewControllerPGforiPhoneOS/UsingSegues.html)  
> [Prepare 관련 자료](https://developer.apple.com/documentation/uikit/uiviewcontroller/1621490-prepare)  

----------------------------------------------------------------------------

### Ch14 UINavigationController

* UINavigationController
* Navigating with UINavigationController
* Appearing and Disappearing Views
* Dismissing the Keyboard
    * Event handling basics
    * Dismissing by pressing the Return key
    * Dismissing by tapping elsewhere
* UINavigationBar
    * Adding buttons to the navigation bar

#### 주요 개념

* Navigation Controller
    * a *drill-down interface*
    * **UINavigationController**
        * To maintain an array of view controllers presenting related information in a *stack*
        * *The root view controller*
            * on the bottom of the stack
            * does not have a *rootViewController* property
        * *topViewController* property
        * UINavigationController's *view*
            * subviews
                * **UINavigationBar**
                * the *view* of *topViewController*
  
* Event Handling
    * *first responder* status
        * **UIResponder** class
        * the *responder chain*
    * To dismiss the keyboard
        * **resignFirstResponder()**
        * **endEditing(_:)**
  
* **UINavigationBar**
    * Every UIViewController has a *navigationItem* property of type **UINavigationItem**
        * **UINavigationItem**
            * UINavigationItem is **not** a subclass of UIView
            * *titleView*
            * **UIBarButtonItem**
                * To contain the information for a button
                    * only be displayed on a **UINavigationBar** or a **UIToolBar**
                * *leftBarButtonItem*
                * *rightBarButtonItem*
  
#### 참고 자료

> [Navigation Controller 관련 자료](https://developer.apple.com/library/content/documentation/WindowsViews/Conceptual/ViewControllerCatalog/Chapters/NavigationControllers.html)  
> [UINavigationController 관련 자료](https://developer.apple.com/documentation/uikit/uinavigationcontroller)  
> [UIViewController Lifecycle 관련 자료](https://developer.apple.com/documentation/uikit/uiviewcontroller)  
> [Event Handling 관련 자료](https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/EventOverview/Introduction/Introduction.html#//apple_ref/doc/uid/10000060i-CH1-SW1)  
> [UINavigationBar 관련 자료](https://developer.apple.com/documentation/uikit/uinavigationbar)  
> [UINavigationItem 관련 자료](https://developer.apple.com/documentation/uikit/uinavigationitem)  

----------------------------------------------------------------------------

### Ch15 Camera

* Displaying Images and UIImageView
    * Adding a camera button
* Taking Pictures and UIImagePickerController
    * Setting the image picker's sourceType
    * Setting the image picker's delegate
    * Presenting the image picker modally
    * Permissions
    * Saving the image
* Creating ImageStore
* Giving View Controllers Access to the Image Store
* Creating and Using Keys
* Wrapping Up ImageStore
* For the More Curious: Navigation Implementation Files
    * // MARK:

#### 주요 개념

* **UIImagePickerController**
    * The user can take and save a picture of each item
    * Image picker's *sourceType*
        * *UIImagePickerControllerSourceType.camera*
            * To take a new photo
        * *UIImagePickerControllerSourceType.photoLibrary*
            * To select an album and then a photo from that album
        * *UIImagePickerControllerSourceType.savedPhotosAlbum*
            * To choose from the most recently taken photos
    * Image picker's *delegate*
        * **UIImagePickerController**'s *delegate* property is inherited from its superclass, **UINavigationController**

  
* **UIImageView**
    * *contentMode* property
        * To determine where to position and how to resize the content within the image view's frame
        * *UIViewContentMode.scaleToFill*
            * Default value
            * To adjust the image to exactly match the bounds of the image view
  
* Cache
    * The cache *automatically remove objects* if the system gets low on memory
  
* **NSUUID**
    * To represent a UUID
    * Generated using *the time*, *a counter*, and *a hardware identifier* (MAC address of the Wi-Fi card)
  
#### 참고 자료

> [UIImagePickerController 관련 자료](https://developer.apple.com/documentation/uikit/uiimagepickercontroller)  
> [UIImageView 관련 자료](https://developer.apple.com/documentation/uikit/uiimageview)  
> [UIToolBar 관련 자료](https://developer.apple.com/documentation/uikit/uitoolbar)  
> [info.plist 관련 자료](https://developer.apple.com/library/content/documentation/General/Reference/InfoPlistKeyReference/Introduction/Introduction.html#//apple_ref/doc/uid/TP40009248-SW1)  
> [NSCache 관련 자료](https://developer.apple.com/documentation/foundation/nscache)  
> [NSUUID 관련 자료](https://developer.apple.com/documentation/foundation/nsuuid)  
> [XCode MARKUP 관련 자료](https://developer.apple.com/library/content/documentation/Xcode/Reference/xcode_markup_formatting_ref/index.html#//apple_ref/doc/uid/TP40016497)  

----------------------------------------------------------------------------

### Ch16 Saving, Loading, and Application States

* Archiving
* Application Sandbox
    * Constructing a file URL
* NSKeyedArchiver and NSKeyed Unarchiver
    * Loading files
* Application States and Transitions
* Writing to the Filesystem with Data
* Error Handling
* For the More Curious: Application State Transitions
* For the More Curious: Reading and Writing to the Filesystem
* For the More Curious: The Application Bundle

#### 주요 개념

* **Archiving**
    * One of the most common ways of *persisting model objects*
    * Recording all of its properties and saving them to the *filesystem*
    * *Unarchibing*
        * re-creates the object from that data
    * **NSCoding** protocol
        * UIView and UIViewController both conform to the NSCoding Protocol
        * **encode(with:)**
            * **NSCoder** object
                * To write out a stream of data
                    * That stream will be organized as *key-value pairs* and stored on the filesystem
            * Encoding is a recursive process
                * **encode(_:forKey:)**
        * **init(coder:)**
            * To grab all of the objects that were encoded in **encode(with:)**
            * To assign them to the appropriate property
    * **NSKeyArchiver** class
        * **archiveRootObject(_:toFile:)** method
            * The method begins by creating an instance of **NSKeyArchiver**
            * The method **encode(with:)** is called and is passed the instance of **NSKeyArchiver** as an argument
            * Called **encode(with:)** to all of the objects it contains, passing the same **NSKeyedArchiver**
            * The **NSKeyArchiver** writes the data it collected to the *path*
    * **NSKeyUnarchiver** class
        * **unarchiveObject(withFile:)** method
            * To create an instance of **NSKeyedUnarchiver**
            * To load the archive located at the url into that instance
  
* **Application Sandbox**
    * A directory on the filesystem
        * Be barricaded from the rest of the filesystem
        * *Documents/*
            * To write data that the application generates during runtime
            * To persist between runs of the application
            * Get backed up in iTunes or iCloud
        * *Library/Caches*
            * To write data that the application generates during runtime
            * To persist between runs of the application
            * *Not* get backed up in iTunes or iCloud
        * *Library/Preferences/*
            * Get handled automatically by the class **NSUserDefaults**
            * Get backed up in iTunes or iCloud
        * *tmp/*
            * To write data that you will use temporarily during an application's runtime
            * *Not* get backed up in iTunes or iCloud
    * To handle writing to and reading from filesystem
        * Need to construct a **URL** to this file
            * **urls(for:in:)**
                * To search the filesystem for a URL that meets the criteria given by the arguments
    * *Application Bundle*
        * To contain the application executable and any resources you have bundled with your application
        * Files within the application bundle are *read-only*
  
* Application States and Transitions
  
#### 참고 자료

> [Archiving 관련 자료](https://developer.apple.com/library/content/documentation/General/Conceptual/DevPedia-CocoaCore/Archiving.html)  
> [Archives and Serialization Practice 관련 자료](https://developer.apple.com/documentation/foundation/archives_and_serialization)  
> [Application Sandbox 관련 자료](https://developer.apple.com/app-sandboxing/)  
> [NSURL 관련 자료](https://developer.apple.com/documentation/foundation/nsurl)  
> [App State Transitions 관련 자료](https://developer.apple.com/library/content/documentation/iPhone/Conceptual/iPhoneOSProgrammingGuide/StrategiesforHandlingAppStateTransitions/StrategiesforHandlingAppStateTransitions.html#//apple_ref/doc/uid/TP40007072-CH8-SW1)  
> [NSData 관련 자료](https://developer.apple.com/documentation/foundation/nsdata)  
> [Bundle 관련 자료](https://developer.apple.com/library/content/documentation/CoreFoundation/Conceptual/CFBundles/Introduction/Introduction.html#//apple_ref/doc/uid/10000123i-CH1-SW1)  

----------------------------------------------------------------------------