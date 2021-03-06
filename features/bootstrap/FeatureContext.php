<?php

use Behat\Behat\Context\Context;
use Behat\Gherkin\Node\PyStringNode;
use Behat\Gherkin\Node\TableNode;


/**
 * Defines application features from the specific context.
 */
class FeatureContext extends \Drupal\DrupalExtension\Context\RawDrupalContext implements \Behat\Behat\Context\SnippetAcceptingContext
{
    /**
     * Initializes context.
     *
     * Every scenario gets its own context instance.
     * You can also pass arbitrary arguments to the
     * context constructor through behat.yml.
     */
    public function __construct()
    {
    }

    protected $temp = 0;

    /**
     * @Given /^I should see "([^"]*)" contents in "([^"]*)" block$/
     */
    public function iShouldSeeContentsInBlock($number, $path)
    {
        $news = $this->getSession()->getPage()->findAll('css', $path);
        $news_count = count($news);
        if ($news_count != $number) {
            throw new Exception("Found Article are not equal to " . $number);
        }
    }

    /**
     * @Then /^I wait for "([^"]*)" sec$/
     */
    public function iWaitForSec($time)
    {
        $this->getSession()->wait($time * 1000);
    }

    /**
     * @Then /^I should not see more than "([^"]*)" contents$/
     */
    public function iShouldNotSeeMoreThanContents($value)
    {
        $counts = $this->getSession()->getPage()->findAll('css', '.item-box');
        $count = count($counts);
        if ($count > $value) {
            throw new Exception("Number of content is greater than " . $value);
        }
    }

    /**
     * @Given /^I should see the products which contains the text "([^"]*)"$/
     */
    public function iShouldTheProductsWhichContainsTheText($text)
    {
        $products = $this->getSession()->getPage()->findAll('css', '.product-title a');
        $count = count($products);
        if ($count == 0) {
            throw new Exception ("No search result found");
        } else {
            foreach ($products as $product) {
                $text = strtolower($text);
                $product_title = strtolower($product->getText());
                if (!preg_match("/" . $text . "/", $product_title)) {
                    throw new Exception ("\n" . $text . " not found in the title: " . $product_title);
                }
            }
        }
    }

    /**
     * @Then /^I should not see the breadcrumb$/
     */
    public function iShouldNotSeeTheBreadcrumb()
    {
        $no_breadcrumb = $this->getSession()->getPage()->find('css', '.breadcrumb');
        if (!empty($no_breadcrumb)) {
            throw new Exception ("Breadcrumb found on the page.");
        }
    }

    /**
     * @Given /^I should see the breadcrumb as "([^"]*)"$/
     * Required format for expected behavior is like : Home / Computers
     */
    public function iShouldSeeTheBreadcrumbAs($expected_breadcrumb)
    {
        $breadcrumb = $this->getSession()->getPage()->find('css', '.breadcrumb');
        $actual_breadcrumb = $breadcrumb->getText();
        if ($actual_breadcrumb != $expected_breadcrumb) {
            throw new Exception ($expected_breadcrumb . ": Breadcrumb is incorrect");
        }
    }


    /**
     * @Given /^I should see the following under "([^"]*)" in sidebar$/
     */
    public function iShouldSeeTheFollowingUnderInSidebar($arg1, TableNode $table)
    {
        $tables = $table->getColumn(0);
        $sub_links = $this->getSession()->getPage()->findAll('css', ".last .sublist li a");
        foreach ($sub_links as $key => $sub_link) {
            $sub = $sub_link->getText();
            if ($sub != $tables[$key]) {
                throw new Exception("sub links not found");
            }
        }
    }


    /**
     * @Given /^I should see the "([^"]*)" block$/
     */
    public function iShouldSeeTheBlock($path)
    {
        $block = $this->getSession()->getPage()->findAll('css', $path);
        if (empty($block)) {
            throw new Exception ("Block not found");
        }
    }

    /**
     * @Then /^I should not see the sub links under "([^"]*)"$/
     */
    public function iShouldNotSeeTheSubLinksUnder($text)
    {
        $sub_links = $this->getSession()->getPage()->findAll('css', ".last .sublist li a");
        if (!empty($sub_links)) {
            throw new Exception ("Sub links are coming under: " . $text);
        }
    }

    /**
     * @AfterScenario @aftersuite
     */
    public function after_scenario()
    {
        //this will only run before the scenario with the tag @aftersuite
         print("Ambuj");
    }

}
