# PriceWave repository 
Ecommerce semester 4 final project

**First Push**
- Began html layout and css to chose a website design we will go for

**Second Push**
- Began the implementation of the map API using Leaflet

# Deliverable 1 - **Completed**
Deliverable 1 requires us to complete an entire suite of feature tests using CodeCeption to write and execute these tests using Gherkin.

Additionally, a completed ERD is required to present the full structure of the database.

## Feature Suite
- **Status:** Feature suite has been completed!

## ERD 
- **Status:** ERD has been completed!

## User authentication
- **Status:** User basic authentication(register,login,log out, update profile, view profile, setup2fa, check2fa) is complete.
Left to do: Update user 2fa & save + update user's location

## Map 
- **Status:** Complete! (Hardcoded for now until web scraping is complete) 
- Map API appears to be functioning perfectly!
- I had to use a second API in order to properly map every store to its exact location (converting address string to coordinates) which works well aswell.

## 50% Features (Micka)
- Updating 2FA is done
- Save location to a user account is done
- Update save location partially done(i have to fix a little bug)
- Display Bookmark items is done 

# Search Engine 
(Damiano)
- Began working on the full functionalities and styling of the search engine.
- So far, the filtering works perfectly as I am able to switch between item and recipe search freely.
- The sorting works as well!
There are some bugs to be fixed of course, but these will be addressed shortly. 

# Search by Location
- Search by location works well with the google API ! I need to wait for the webscraping and the filters to merge everything together.
- Search details is almost figured out ! :)

# Micka's progress
- Search by user location & See Store Details is done 
- Search by user location & Store details need to be merged with the rest of the code 
- Delete Bookmark is done
- Internalization will be done today in class (Fri. May 3rd)

# Micka's progress (May 3rd)
- Search by user location & See Store Details is merged with Santiago's code 
- I need to do some CSS (View account, 2FA,..)
- Internalization has been started (might lose my mind on it but hopefully get it done this weekend)
- Link my Search by user location with the filter by store as well
- Add all error handling
- Codeception to test all my features

# Damiano notes
- Almost finished my internationalization
- 99% complete the cart page (fix the checkout price update)
- Completed all of my recipe functions
- Fix authenticated home

# Internalization
Current progress: 40% complete
- Cart page (completed)

# Internalization (Micka's pages)
- My views & translations are done

# What is left (Micka)
- Some styling for my views
- Some errors handling
- Test my features with codeception

# Codeception question to teacher (Micka)
-The file "013_authentication.feature" works completely, just make sure for the user creates account successfully to change the username to something unique based on what's in the db.
- Most of the methods for this feature in the AcceptanceTester.php starts at line 498.
- The file "021_displayBookmark.feature" needs to be fixed because the 2fa authentication method makes it fail (just have to slightly change the logic of the method or called the method for the display bookmark).

# Codeception done (Micka)
- Here are the files that are done:
- 006_storeList.feature
- 013_authentication.feature
- 021_displayBookmark.feature
- 024_deleteBookmark.feature
- 030_location.feature
- 031_updateTwoFactorAuthentication.feature
- 032_storeDetails.feature

some additional features are within the same file, that's why I have 7 files and not 8 :)

