<?php

declare(strict_types=1);

namespace Tests\Support;

/**
 * Inherited Methods
 * @method void wantTo($text)
 * @method void wantToTest($text)
 * @method void execute($callable)
 * @method void expectTo($prediction)
 * @method void expect($prediction)
 * @method void amGoingTo($argumentation)
 * @method void am($role)
 * @method void lookForwardTo($achieveValue)
 * @method void comment($description)
 * @method void pause($vars = [])
 *
 * @SuppressWarnings(PHPMD)
 */
class AcceptanceTester extends \Codeception\Actor
{
    use _generated\AcceptanceTesterActions;

    protected $minPrice;
    protected $maxPrice;
    /**
     * Define custom actions here
     */

    /**
     * @Given I am on :arg1
     */
    public function iAmOn($url)
    {
        $this->amOnPage($url); //
    }

    /**
     * @When I click :arg1 button
     */
    public function iClickButton($loginButton)
    {
        $this->click($loginButton);
    }

    /**
     * @Then I should be redirected to the login page
     */
    public function iShouldBeRedirectedToTheLoginPage()
    {
        $this->seeInCurrentUrl('/User/login'); //verify if the redirection was completed
    }

    /**
     * @When I enter :arg1 and :arg2 in the login form
     */
    public function iEnterAndInTheLoginForm($username, $password)
    {
        $this->fillField('username', $username);
        $this->fillField('password_hash', $password);
    }
    /**
     * @Then I should be redirected to the home page
     */
    public function iShouldBeRedirectedToTheHomePage()
    {
    }

    /**
     * @When I enter invalid username :arg1 and invalid password :arg2 in the login form
     */
    public function iEnterInvalidUsernameAndInvalidPasswordInTheLoginForm($invalidUsername, $invalidPassword)
    {
        $this->fillField('username', $invalidUsername);
        $this->fillField('password', $invalidPassword);
    }

    /**
     * @Then I should stay in the login page
     */
    public function iShouldStayInTheLoginPage()
    {
        $this->seeInCurrentUrl('/User/login');
    }

    /**
     * @Given I login
     */
    public function iLogin()
    {
        $this->amOnPage('http://localhost/User/login?lang=en');
        $this->fillField("username", "user1");
        $this->fillField("password_hash", "1234");
        $this->click("Login");
    }

    /**
     * @Given I am logged in
     */
    public function iAmLoggedIn()
    {
        $this->iLogin();
    }

    /**
     *  @Given I complete two-factor authentication with my :arg1
     */
    public function iCompleteTwoFactorAuthenticationWithMy($arg1)
    {
        $this->amOnPage('http://localhost/User/check2fa?lang=en');
        // 2FA HERE
        $totpCode = 112686; // You must always replace this with the new authenticator code when you test

        $this->fillField("totp", $totpCode);

        $this->click('action');
    }

    /**
     * @Then I should see the login form
     */
    public function iShouldSeeTheLoginForm()
    {
        $this->see('Login'); //make sure that the user is presented with the login form
    }

    /**
     * @When I select :arg1 and :arg2
     */
    public function iSelectAnd($cityName, $provinceName)
    {
        $this->selectOption("city", $cityName);
        $this->selectOption("province", $provinceName);
    }

    /**
     * @Then I should see the results of my search
     */
    public function iShouldSeeTheResultsOfMySearch()
    {
        $this->see('Results of your search');
    }
    /**
     * @Then I should see a :arg1 successfull message
     */
    public function iShouldSeeASuccessfullMessage($message)
    {
        $this->see($message);
    }

    /**
     * @When I click :arg1 button on :arg2
     */
    public function iClickButtonOn($deleteButton, $itemName)
    {
        $this->click($deleteButton, '#' . $itemName . '-delete-button'); // Assuming each item has a unique ID and delete button with an ID like 'item1-delete-button'
    }

    /**
     * @Then I should not see :arg1 saved anymore
     */
    public function iShouldNotSeeSavedAnymore($itemName)
    {
        $this->cantSee($itemName);
    }
    /**
     * @Then I should see all my saved items
     */
    public function iShouldSeeAllMySavedItems()
    {
        $this->see('All your bookmarks');
    }


    /**
     * @When I view my profile
     */
    public function iViewMyProfile()
    {
        $this->click('My Profile');
    }

    /**
     * @Given there are recipes available
     */
    public function thereAreRecipesAvailable()
    {
        $this->seeElement('.recipe');
    }


    /**
     * @When I search for :arg1
     */
    public function iSearchFor($searchQuery)
    {
        $this->fillField('Search', $searchQuery);
        $this->executeJS("document.querySelector('#search-field').dispatchEvent(new KeyboardEvent('keydown', {key: 'Enter'}));");
    }

    /**
     * @Then I should see the total price of ingredients per store
     */
    public function iShouldSeeTheTotalPriceOfIngredientsPerStore()
    {
        $this->see('Total Price per Store');
    }

    /**
     * @When I enter :arg1 in the search bar
     */
    public function iEnterInTheSearchBar($arg1)
    {
        $this->fillField('searchBar', $arg1);
    }

    /**
     * @When I click :arg1
     */
    public function iClick($arg1)
    {
        $this->click($arg1);
    }

    /**
     * @Then I see a map
     */
    public function iSeeAMap()
    {
        $this->seeElement('#cartMap');
    }

    /**
     * @Then I see :arg1
     */
    public function iSee($arg1)
    {
        $this->see($arg1);
    }
    /**
     * @Then I don't see :arg1
     */
    public function iDontSee($arg1)
    {
        $this->dontSee($arg1);
    }

    /**
     * @When I click element :arg1
     */
    public function iClickElement($arg1)
    {
        $this->click($arg1);
    }

    /**
     * @Then I see :arg1 in the item list
     */
    public function iSeeInTheItemList($arg1)
    {
        $this->see($arg1);
    }

    /**
     * @Then I dont see :arg1 in the item list
     */
    public function iDontSeeInTheItemList($arg1)
    {
        $this->dontSee($arg1);
    }


    /**
     * @Then I see milk
     */
    public function iSeeMilk()
    {
        $this->see('Milk');
    }

    public function iSeeDeleteCartItem()
    {
        $this->see('Your');
    }

    /**
     * @When I click delete for the :item_name item
     */
    public function iClickDeleteForItem()
    {
        // Click the delete button associated with the specified item in the cart
        $itemSelector = sprintf('.itemCard:contains("%s")', 'Frozen Potato'); // Assuming item name is unique
        $this->click($itemSelector . ' .bttns[name="deleteButton"]');
    }

    public function iSeeItemRemoved()
    {
        // Implement logic to verify that the specified item is removed from the cart
        $itemSelector = sprintf('.itemCard:contains("%s")', 'Frozen Potato'); // Assuming item name is unique
        $this->dontSeeElement($itemSelector); // Assuming the item is removed and no longer visible
    }

    /**
     * @Then I am redirected to :arg1
     */
    public function iAmRedirectedTo($arg1)
    {
        $this->amOnPage($arg1);
    }


    /**
     * @Then I see an array of :arg1 whose attribute :arg2 contains :arg3
     */
    public function iSeeAnArrayOfWhoseAttributeContains($arg1, $arg2, $arg3)
    {
        // Check if the item list is visible or present on the page
        $this->seeElement('#itemList');

        // Check if any item's attribute contains the specified value
        $this->see($arg3);
    }



    /**
     * @Then I see a message displaying :arg1
     */
    public function iSeeAMessageDisplaying($arg1)
    {
        $this->see("No items found");
    }

    /**
     * @When I enter :username ,:password ,:firstName, :lastName in the register page
     */
    public function iEnterInTheRegisterPage($username, $password, $firstName, $lastName)
    {
        $this->fillField('username', $username);
        $this->fillField('first_name', $password);
        $this->fillField('last_name', $firstName);
        $this->fillField('password_hash', $lastName);
    }

    /**
     * @When I enter :arg1 ,:arg2, :arg3, :arg4, :arg5
     */
    public function iEnter($arg1, $arg2, $arg3, $arg4, $arg5)
    {
        throw new \PHPUnit\Framework\IncompleteTestError("Step `I enter :arg1 ,:arg2, :arg3, :arg4, :arg5` is not defined");
    }

    /**
     * @When I click the :arg1 button
     */
    public function iClickTheButton($arg1)
    {
        $this->click($arg1);
    }

    /**
     * @Then I should be redirected to the setup2fa page
     */
    public function iShouldBeRedirectedToTheSetup2faPage()
    {
        $this->seeInCurrentUrl('/User/setup2fa');
    }

    /**
     * @Then I should be redirected to the check2fa page
     */
    public function iShouldBeRedirectedToTheCheck2faPage()
    {
        $this->seeInCurrentUrl('/User/check2fa');
    }

    /**
     * @Then I should be redirected to the welcome page
     */
    public function iShouldBeRedirectedToTheWelcomePage()
    {
        $this->seeInCurrentUrl('/welcome');
    }
    /**
     * @When I click the :arg1 link on the top bar view
     */
    public function iClickTheLinkOnTheTopBarView($arg1)
    {
        // $this->click($arg1);
    }

    /**
     * @When I go on :arg1
     */
    public function iGoOn($arg1)
    {
        $this->amOnPage($arg1);
    }

    /**
     * @Then I should see :arg1
     */
    public function iShouldSee($arg1)
    {
        $this->see($arg1);
    }

    /**
     * @Given I am logged in as :arg1 and :arg2
     */
    public function iAmLoggedInAsAnd($arg1, $arg2)
    {
        $this->amOnPage("http://localhost/User/login");
        $this->fillField('username', $arg1);
        $this->fillField('password_hash', $arg2);
        $this->click('input[type=submit][name=Login]');
        $this->seeInCurrentUrl('/User/check2fa');
    }

    /**
     * @Given I am registered as in as :arg1, :arg2 , :arg3, :arg4
     */
    public function iAmRegisteredAsInAs($arg1, $arg2, $arg3, $arg4)
    {
        $this->amOnPage("/User/registration");
        $this->fillField('username', $arg1);
        $this->fillField('password_hash', $arg2);
        $this->fillField('first_name', $arg3);
        $this->fillField('last_name', $arg4);
        $this->click('input[type=submit][name=create]');
    }
    /**
     * @When I log out
     */
    public function iLogOut()
    {
        $this->iAmLoggedInAsAnd('micka', '1234');
        $this->amOnPage("/home");
        $this->click('a.topbarBtns[name=logout]');
    }
    /**
     * @When I update :arg1 ,:arg2, :arg3, :arg4
     */
    public function iUpdate($arg1, $arg2, $arg3, $arg4)
    {
        $this->iAmLoggedInAsAnd('micka', '1234');
        $this->iCompleteTwoFactorAuthenticationWithMy('416571');
        $this->amOnPage("/User/updateAccount");
        $this->fillField('username', $arg1);
        $this->fillField('password_hash', $arg2);
        $this->fillField('first_name', $arg3);
        $this->fillField('last_name', $arg4);
        $this->click('input[type=submit][name=action]');
    }

    /**
     * @Then I should see the value of last name be :arg1
     */
    public function iShouldSeeTheValueOfLastNameBe($arg1)
    {
        $this->seeInField('last_name', $arg1);
    }

    /**
     * @Given I am on the :arg1 page
     */
    public function iAmOnThePage($arg1)
    {
        $this->amOnPage('/Recipe/displayAll');
    }

    /**
     * @When I enter :arg1 into the search prompt
     */
    public function iEnterIntoTheSearchPrompt($arg1)
    {
        $this->fillField('#search', $arg1);
    }

    /**
     * @When I click on the :arg1 button
     */
    public function iClickOnTheButton($arg1)
    {
        $this->click('button[type="submit"]');
    }

    /**
     * @Then I should be on :arg1
     */
    public function iShouldBeOn($arg1)
    {
        $this->seeInCurrentUrl($arg1);
    }

    /**
     * @Then I should see a list of :arg1 recipes
     */
    public function iShouldSeeAListOfRecipes($arg1)
    {
        $this->see($arg1, '.recipe-info h2');
    }

    /**
     * @When I enter minimum price :arg1 and maximum price :arg2
     */
    public function iEnterMinimumPriceAndMaximumPrice($arg1, $arg2)
    {
        $this->minPrice = $arg1;
        $this->maxPrice = $arg2;
    }

    /**
     * @When I click on the Apply button
     */
    public function iClickOnTheApplyButton()
    {
        $this->click('.price-range-filter button[type="submit"]');
    }
    /**
     * @Then I should see the recipes :arg1 and :arg2 in the recipe list on this page :arg3
     */
    public function iShouldSeeTheRecipesAndInTheRecipeListOnThisPage($arg1, $arg2, $arg3)
    {
        $this->amOnPage($arg3);

        // Maximum number of attempts to check for the element
        $maxAttempts = 10;

        // Check if the element is present
        for ($i = 0; $i < $maxAttempts; $i++) {
            try {
                // Attempt to find the element
                $this->see($arg1, '.recipe-info h2');
                $this->see($arg2, '.recipe-info h2');

                // If the element is found, break out of the loop
                break;
            } catch (\Exception $e) {
                // If element is not found, wait for a short interval before retrying
                sleep(1);
            }
        }

        // Perform assertions after the loop
        $this->see($arg1, '.recipe-info h2');
        $this->see($arg2, '.recipe-info h2');
    }

    /**
     * @Given I am on the :arg1
     */
    public function iAmOnThe($arg1)
    {
        $this->amOnPage($arg1);
    }

    /**
     * @Then I should see the total price of the :arg1 recipe is :arg2
     */
    public function iShouldSeeTheTotalPriceOfTheRecipeIs($arg1, $arg2)
    {
        $priceElement = $this->grabTextFrom("//h2[contains(text(), '{$arg1}')]/following-sibling::p[@class='price']");

        $this->comment("Grabbed price for '{$arg1}': Price: {$priceElement}");

        $priceElement = preg_replace('/[^0-9.]/', '', $priceElement);

        $expectedPrice = (float) $arg2;

        $grabbedPrice = (float) $priceElement;

        $tolerance = 0.01;


        if (abs($grabbedPrice - $expectedPrice) > $tolerance) {
            throw new \RuntimeException("The price of the recipe '{$arg1}' does not match the expected value '{$arg2}'.");
        }
    }

    /**
     * @Then I should see the recipes displayed in the following order
     */
    public function iShouldSeeTheRecipesDisplayedInTheFollowingOrder()
    {
        // Get the position of "Fruit Bowl" and "Fresh Fruit" in the HTML
        $fruitBowlPosition = strpos($this->grabPageSource(), 'Fruit Bowl');
        $freshFruitPosition = strpos($this->grabPageSource(), 'Fresh Fruit');

        // Check if "Fruit Bowl" appears before "Fresh Fruit" in the HTML
        if ($fruitBowlPosition === false || $freshFruitPosition === false || $fruitBowlPosition > $freshFruitPosition) {
            throw new \Exception("Fruit Bowl is not displayed on top.");
        }
    }



   /**
    * @When I update the duration of the recipe to :arg1
    */
    public function iUpdateTheDurationOfTheRecipeTo($arg1)
    {
        $this->fillField("input[name='duration']", $arg1);
    }

   /**
    * @Then the duration of the recipe should be updated to :arg1
    */
    public function theDurationOfTheRecipeShouldBeUpdatedTo($arg1)
    {
        $updatedDuration = $this->grabValueFrom("input[name='duration']");
    $this->assertEquals($arg1, $updatedDuration);
    }

    /**
     * @When I click on the item :arg1 on the home page
     */
    public function iClickOnTheItemOnTheHomePage($arg1)
    {
        $this->amOnPage('/home'); //ensure that you were able to log in
        $this->click('a[href="/Item/info/superc041331078221"]'); //need to give the specific item link
        $this->see($arg1); //make sure that you see "Malta Goya"
    }

    /**
     * @Given I register my location as :arg1, :arg2, :arg3 , :arg4, :arg5
     */
    public function iRegisterMyLocationAs($address, $street, $city, $province, $postal_code)
    {
        $this->amOnPage("/User/registerLocation");
        $this->fillField('address', $address);
        $this->fillField('street', $street);
        $this->selectOption('province', $province);
        $this->selectOption('city', $city);
        $this->fillField('postal_code', $postal_code);
        $this->click('input[type=submit][name=button]');
    }


    /**
     * @When I click on the store :arg1
     */
    public function iClickOnTheStore($arg1)
    {
        //when i use the arg it gives me an error cause it looks for a name attribute ? 
        $this->click('Super C, 1515 Blvd. Marcel-Laurin, Montréal, QC H4R 0B7, Canada'); //need to give the specific item link
    }

    /**
     * @Then I should see :arg1 as my address in my account page
     */
    public function iShouldSeeAsMyAddressInMyAccountPage($arg1)
    {
        $this->amOnPage("/User/account");
        $this->seeInField('input[name="address"]', $arg1);
    }

    /**
     * @Given I update my location to :arg1, :arg2, :arg3 , :arg4, :arg5
     */
    public function iUpdateMyLocationTo($address, $street, $city, $province, $postal_code)
    {
        $this->amOnPage("/User/updateLocation");
        $this->fillField('address', $address);
        $this->fillField('street', $street);
        $this->selectOption('province', $province);
        $this->selectOption('city', $city);
        $this->fillField('postal_code', $postal_code);
        $this->click('input[type=submit][name=button]');
    }

    /**
     * @When click on the :arg1 link in my account page
     */
    public function clickOnTheLinkInMyAccountPage($arg1)
    {
        $this->amOnPage("/User/account");
        // $this->click(".$arg1");
        $this->click("//a[@class='userBtn' and contains(text(), '$arg1')]");
    }

    /**
     * @Then I should enter my password :arg1 and my secret :arg2
     */
    public function iShouldEnterMyPasswordAndMySecret($password, $secret)
    {
        $this->fillField('password', $password);
        $this->fillField('totp', $secret);
        $this->click('input[type=submit][name=action]');
    }

    /**
     * @Then I should be redirected to the :arg1 page
     */
    public function iShouldBeRedirectedToThePage($arg1)
    {
        $this->seeInCurrentUrl($arg1);
    }

    /**
     * @Then I should not see :arg1
     */
    public function iShouldNotSee($arg1)
    {
        $this->dontSee($arg1);
    }

    /**
     * @When I click :arg1 button on bookmark item :arg2
     */
    public function iClickButtonOnBookmarkItem($button, $arg2)
    {
        $this->click($button);
    }

    /**
     * @Then I see :arg1, :arg2, :arg3, :arg4 and :arg5 of said :arg6
     */
    public function iSeeAndOfSaid($arg1, $arg2, $arg3, $arg4, $arg5, $arg6)
    {
        $this->seeInSource($arg1);
        $this->seeInSource($arg2);
        $this->seeInSource($arg3);
        $this->seeInSource($arg4);
        $this->seeInSource($arg5);
        $this->seeInSource($arg6);
    }

    /**
     * @When I click the :arg1 card
     */
    public function iClickTheCard($arg1)
    {
        $this->click(['name' => $arg1]);
    }

    /**
     * @When I fill :arg1 in :arg2
     */
    public function iFillIn($arg1, $arg2)
    {
        $this->fillField($arg1, $arg2);
    }

    /**
     * @When I set the store filter to :arg1
     */
    public function iSetTheStoreFilterTo($arg1)
    {
        $this->selectOption('storeFilter', $arg1);
    }

    /**
     * @When I set the :arg1 attribute of the recipe to :arg2
     */
    public function iSetTheAttributeOfTheRecipeTo($arg1, $arg2)
    {
        $this->selectOption($arg1, $arg2);
    }

    /**
     * @Then I see :arg1 recipe
     */
    public function iSeeRecipe($arg1)
    {
        $this->see($arg1);
    }

        /**
     * @When I go to http://localhost/Recipe/create
     */
    public function iGoToHttplocalhostRecipecreate($url)
    {
        $this->amOnPage($url);
    
        $this->amOnPage('http://localhost/Recipe/create');
    }

   /**
    * @When I enter :arg1 in the title field
    */
    public function iEnterInTheTitleField($arg1)
    {
        $this->fillField('title', $arg1);
    }

   /**
    * @When I enter :arg1 in the content field
    */
    public function iEnterInTheContentField($arg1)
    {
        $this->fillField('content', $arg1);
    }

   /**
    * @When I enter :arg1 for the duration
    */
    public function iEnterForTheDuration($arg1)
    {
        $this->fillField('duration', $arg1);
    }

   /**
    * @When I add the image :arg1 to the recipe
    */
    public function iAddTheImageToTheRecipe($arg1)
    {
        $this->attachFile('image', $arg1);
    }

   /**
    * @When I select :arg1 for the privacy status
    */
    public function iSelectForThePrivacyStatus($arg1)
    {
        $this->selectOption('privacy_status', $arg1);
    }

   /**
    * @Then I should be redirected to :arg1
    */
    public function iShouldBeRedirectedTo($arg1)
    {
        $this->seeCurrentUrlEquals($arg1);
    }

}