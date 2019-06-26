@Regression
Feature: OCD-2262 - Remove API POST calls that were deprecated in favor of PUT/DELETE 
    This test checks whether deprecated calls are removed from CHPL API webpage

Scenario: CHPL API page loads and shows correct title 
    Given I am on CHPL API page 
    Then the page title should be "CHPL API" 
 
Scenario Outline: 
    Verify API list in Controller does not contain deprecated calls 
    Given I am on CHPL API page 
    When I click on "<Controller>" link 
    Then list of "<API Endpoints>" operations should be displayed without deprecated calls 
    Examples: 
        | Controller                    |API Endpoints|
        | chpl-file-controller          |Retrieve an API Documentation file--Upload an API Documentation file--Retrieve details about an API Documentation file|
        | product-controller            |List all products--Update a product or merge products.--Get information about a specific product.--Get all listings owned by the specified product.--Split a product - some versions stay with the existing product and some versions are moved to a new product.|
        | scheduler-controller          |Get the list of all jobs that are applicable to the currently logged in user--Update a given job--Get the list of all triggers and their associated scheduled jobs that are applicable to the currently logged in user--Create a new trigger and return it--Update an existing trigger and return it--Delete an existing trigger|
        | collections-controller        |Get basic data about all certified products in the system.--Get a list of all banned developers.--Get a list of all developers with transparency attestation URLsand ACB attestations.|
        | api-key-controller            |List all API keys that have been created.--Sign up for a new API key.--View the calls made per API key.--View the calls made by a specific API key.--Remove an API key.|
        | status-controller             |DEPRECATED. Use /system-status instead. Check the status of every cache. {"status":"OK"} is returned if all caches are loaded and {"status":"INITIALIZING"} is returned if not.--DEPRECATED. Use /system-status instead. Check that the rest services are up and running.{"status":"OK"} is returned if all is well.--Check that the rest services are up and running and indicate whether the pre-loaded caches are initializing or have completed.{"running":"OK", "cache":"OK"} is returned if all is well.If the cache is still initializing, the returned value will be {"running":"OK", "cache":"INITIALIZING"}.|
        | authentication-controller     |Log in.--Change expired password.--Change password.--Reset a user's password.--Impersonate another user.--Reset password.--Stop impersonating another user.|
        | search-view-controller        |Get all possible accessibility standard options in the CHPL--Get all possible test participant age ranges in the CHPL--Get all possible ACBs in the CHPL--Get all possible certificaiton editions in the CHPL--Get all possible certification statuses in the CHPL--Get all possible classifications in the CHPL--Get all possible complainant types in the CHPL--Get all possible complaint status types in the CHPL--Get all possible developer status options in the CHPL--Get all possible developer names in the CHPL--Get all possible education types in the CHPL--Get all available filter type.--Get all fuzzy matching choices for the items that be fuzzy matched.--Change existing fuzzy matching choices.--Get all possible types of jobs that can be created in the system.--Get all possible macra measure options in the CHPL--Get all possible nonconformity status type options in the CHPL--Get all possible nonconformity type options in the CHPL--Get all possible practice types in the CHPL--Get all possible product names in the CHPL--Get all possible qms standard options in the CHPL--Get a list of quarters for which a surveillance report can be created.--Get all search options in the CHPL--Get all possible surveillance requirement type options in the CHPL--Get all possible surveillance requirement options in the CHPL--Get all possible surveillance result type options in the CHPL--Get all possible surveillance type options in the CHPL--Get all possible targeted user options in the CHPL--Get all possible test data options in the CHPL--Get all possible test functionality options in the CHPL--Get all possible test procedure options in the CHPL--Get all possible test standard options in the CHPL--Get all possible test tool options in the CHPL--Get all possible UCD process options in the CHPL--Get all available pending listing upload template versions.--DEPRECATED. Use /collections/decertified-developers instead. Get all developer decertifications in the CHPL--Download the entire CHPL as XML.--Search the CHPL--Search the CHPL with an HTTP POST Request.|
        | activity-controller           |DEPRECATED. Get auditable data for certification bodies.--DEPRECATED. Get auditable data for a specific certification body.--Get auditable data for all announcements--Get auditable data for a specific announcement--Get auditable data for all API keys--DEPRECATED. Get auditable data for testing labs.--DEPRECATED. Get auditable data for a specific testing lab.--DEPRECATED. Get auditable data for certified products--DEPRECATED. Get auditable data for a specific certified product based on a legacy CHPL Product Number.--Get auditable data for a specific certified product.--DEPRECATED Get auditable data for a specific certified product based on CHPL Product Number.--DEPRECATED. Get auditable data about all developers--DEPRECATED. Get auditable data for a specific developer.--Get metadata about auditable records in the system for certification bodies.--Get metadata about auditable records in the system for a specific certification body.--Get metadata about auditable records in the system for announcements.--Get metadata about auditable records in the system for testing labs.--Get metadata about auditable records in the system for a specific testing lab.--Get metadata about auditable records in the system for corrective action plans.--Get metadata about auditable records in the system for developers.--Get metadata about auditable records in the system for a specific developer.--Get metadata about auditable records in the system for listings.--Get metadata about auditable records in the system for a specific listing given its legacy CHPL Number.--Get metadata about auditable records in the system for a specific listing.--Get metadata about auditable records in the system for a specific listing given its new-style CHPL product number.--Get metadata about auditable records in the system for pending listings.--Get metadata about auditable records in the system for pending surveillances.--Get metadata about auditable records in the system for products.--Get metadata about auditable records in the system for a specific product.--Get metadata about auditable records in the system for users.--Get metadata about auditable records in the system for version.--Get metadata about auditable records in the system for a specific version.--DEPRECATED. Get auditable data for all pending certified products--DEPRECATED. Get auditable data for a specific pending certified product.--DEPRECATED. Get auditable data for all products--DEPRECATED. Get auditable data for a specific product.--DEPRECATED. Track the actions of all users in the system--Track the actions of a specific user in the system--DEPRECATED. Get auditable data about all CHPL user accounts--Get auditable data about a specific CHPL user account.--DEPRECATED. Get auditable data for all versions--DEPRECATED. Get auditable data for a specific version.--Get detailed audit data for a specific activity event.|
        | certification-body-controller |List all certification bodies (ACBs).--Create a new ACB.--Get details about a specific certification body (ACB).--Update an existing ACB.--List users with permissions on a specified ACB.--Remove user permissions from an ACB.|
        | developer-controller          |List all developers in the system.--Update a developer or merge developers.--Get information about a specific developer.--Split a developer - some products stay with the existing developer and some products are moved to a new developer.|
        | testing-lab-controller        |List all testing labs (ATLs).--Create a new testing lab.--Get details about a specific testing lab (ATL).--Update an existing ATL.--List users with permissions on a specified ATL.--Remove user permissions from an ATL.|  
        | certification-id-controller   |Retrieves a list of all CMS EHR Certification IDs along with the date they were created.--Creates a new CMS EHR Certification ID for a collection of products if one does not already exist.--Retrieves a CMS EHR Certification ID for a collection of products.--Verify whether one or more specific EHR Certification IDs are valid or not.--Verify whether one or more specific EHR Certification IDs are valid or not.--Get information about a specific EHR Certification ID.|
        | user-management-controller    |View users of the system.--Confirm that a user's email address is valid.--Create a new user account from an invitation.--Invite a user to the CHPL.--Modify user information.--Delete a user.--Update an existing user account with new permissions.--View a specific user's details.|  
        | product-version-controller    |List all versions for a specific product.--Update a version or merge versions.--Get information about a specific version.--Split a version - some listings stay with the existing version and some listings are moved to a new version.|    
        | announcement-controller       |Get all announcements.--Create a new announcement.--Get a specific announcement.--Change an existing announcement.--Delete an existing announcement.|
        | job-controller                |Get the list of all jobs currently running in the system and thosethat have completed within a configurable amount of time (usually a short window like the last 7 days).|
        | certified-product-controller  |List all certified products--DEPRECATED. List pending certified products.--Reject several pending certified products.--Get metadata for all pending listings the user has access to.--List a specific pending certified product.--Reject a pending certified product.--Confirm a pending certified product.--Download all SED details that are certified to 170.315(g)(3).--Upload a file with certified products--Get all basic information for a specified certified product. Does not include the CQM results and certification results.--Update an existing certified product.--Get all of the certification results for a specified certified product.--Get all of the CQM results for a specified certified product.--Get all details for a specified certified product.--Get the ICS family tree for the specified certified product.--Get all basic information for a specified certified product. Does not include the CQM results and certification results.--Get all of the certification results for a specified certified product based on a legacy CHPL Product Number.--Get all of the CQM results for a specified certified product based on a legacy CHPL Product Number.--Get all details for a specified certified product.--Get the ICS family tree for the specified certified product based on a legacy CHPL Product Number--Get all basic information for a specified certified product. Does not include the CQM results and certification results.--Get all of the certification results for a specified certified product based on a CHPL Product Number.--Get all of the CQM results for a specified certified product.--Get all details for a specified certified product.--Get the ICS family tree for the specified certified product based on a CHPL Product Number.|
        | surveillance-controller       |Create a new surveillance activity for a certified product.--Download nonconformity supporting documentation.--Download surveillance as CSV.--Get the listing of all pending surveillance items that this user has access to.--Reject several pending surveillance.--Confirm a pending surveillance activity.--Reject (effectively delete) a pending surveillance item.--Upload a file with surveillance and nonconformities for certified products.--Update a surveillance activity for a certified product.--Delete a surveillance activity for a certified product.--Remove documentation from a nonconformity.--Add documentation to an existing nonconformity.|