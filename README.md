# Gift-List Organiser Website for Parties
This website enables party guests/invitees to purchase items from gift-lists. These gift-lists are created by party hosts who also use a different log in to access this feature.
As well as login pages and pages for creating/searching a gift-list, the website will consist of various other pages which will provide users with more information about the website and company.
Examples of similar gift-lists services and registries offered by other companies can be found in the references section.

## Getting Started (Software Based)
**how** to get this project working:
1) Open the project in IntelliJ
2) Start the local server in MySQL
3) Open the index.jsp page
4) Run Tomcat to deploy the project upon server startup

### Prerequisites
* IntelliJ IDEA Ultimate
* MySQL Workbench
* Internet access

### Languages
* CSS
* HTML
* Java
* Javascript
* SQL
* XML


### Installing
A step by step guide on how to build and install your software, for example:

#### Edit the configuration file
Edit the configuration so that the program runs on the Tomcat server. The web browser selection doesn't really matter much


#### Install the following libraries to ensure that the program runs correctly

```
javax
mysql-connector-java
tomcat: servlet
```

## Register as a new user
![Register](registration.png)
1) Go to Registration page
2) Fill out all the fields. They are all compulsory and must be in the required format
3) Click button to submit details
4) If successful you will be greeted with a successful registration page
5) Head to host or guest login page

##Creating a Gift-list
1) Go to Host Login page
2) Enter host user credentials
![Login](login.png)

3) From the page confirming a successful login, go to the Create Giftlist page located in the top navigation bar
![Confirmh](successh.png)

4) Choose a gift and select the quantity by using the plus & minus buttons or by typing a value
5) Click button to add to gift-list
![Create](createGL.png)

6) Gift-list confirmation page appears
7) Take note of the unique gift-list refrence number. This is what you will distribute to friends and family for them to use when searching for a specific gift-list
![Confirm](confirm.png)

##Searching for a Gift-list
1) Go to Guest Login page
2) Enter guest user credentials
![Guest](guest.png)

3) From the page confirming a successful login, go to the Search Giftlist page located in the top navigation bar
![Confirmg](successg.png)

4) All created gift-lists will be displayed on the page
![Search](searchGL.png)

5) Type in the gift-list reference number you are searching for or click button to sort gift-lists in order of gift-list reference number
6) Click buy now link which will enable you to purchase the item externally
![Purchase](purchase.png)

## Authors
Provide your names here
* Shaquille Thomas - Computer Science

## References
* [Amazon Registry](https://www.amazon.com/gp/browse.html?node=16115931011&ref=nav_cs_registry)
* [Gifster](https://www.giftster.com/ )
* [Whatidlove](https://www.whatidlove.co.uk/home.aspx )
* [John Lewis Gift List](https://www.johnlewisgiftlist.com/giftint/JSPs/GiftList/glsmain.jsp?s_kwcid=1dx43700017140938349&tmad=c&tmcampid=1&gclid=Cj0KCQjw2IrmBRCJARIsAJZDdxDoTRgBiYXeJPPLgs9TmIWZTYgXiFwSfZLLFMs_Fvw911NwFnGsTNQaAsVTEALw_wcB&gclsrc=aw.ds)