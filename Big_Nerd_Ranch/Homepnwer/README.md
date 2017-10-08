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

* 
    * 
  
#### 참고 자료

> 

----------------------------------------------------------------------------