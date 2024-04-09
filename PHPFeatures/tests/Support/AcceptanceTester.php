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
    * @When I enter :arg1 ,:arg2, :arg3, :arg4, :arg5 in the register page
    */
    public function iEnterInTheRegisterPage($username, $firstName, $lastName, $location, $password)
    {
        $this->fillField('username',$username);
        $this->fillField('first_name',$firstName);
        $this->fillField('last_name',$lastName);
        $this->fillField('location',$location);
        $this->fillField('password_hash',$password);
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
       $this->fillField('username',$username);
       $this->fillField('password',$password);
    }

   /**
    * @Then I should be redirected to the Home Page
    */
    public function iShouldBeRedirectedToTheHomePage()
    {
        $this->seeInCurrentUrl('/home'); //verify if the redirection was completed
    }

    /**
     * @When I enter invalid username :arg1 and invalid password :arg2 in the login form
     */
    public function iEnterInvalidUsernameAndInvalidPasswordInTheLoginForm($invalidUsername, $invalidPassword)
    {
        $this->fillField('username',$invalidUsername);
        $this->fillField('password',$invalidPassword);
    }

   /**
    * @Then I should stay in the login page
    */
    public function iShouldStayInTheLoginPage()
    {
        $this->seeInCurrentUrl('/User/login');
    }

     /**
     * @Given I am logged in
     */
    public function iAmLoggedIn()
    {
        $this->amOnPage('http://localhost/User/profile'); //test to see if the user can access an authenticated page
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
        $this->selectOption("city",$cityName);
        $this->selectOption("province",$provinceName);
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

}
