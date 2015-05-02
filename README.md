#Family Law Reform

##Purpose
This is a basic rails app integrated within a prototype website for the National Foundation for Family Law Reform.  The organization is a clearinghouse for all ongoing efforts to modify, reform, or re-invent family law.  It serves as both a repository for/explanation of useful links, as well as a reporting service.  Users can register complaints against legal professionals in their state or in whichever state they are involved.

##Installation
Family Law Reform is built with a Rails backend.  To set up:
```
git clone https://github.com/kdmcclin/family-law-reform.git
```
Run bundle
```
bundle install
```
Start the server
```
rails s
```
**Note:** If running Windows you may need to alter the tzinfo gem in the Gemfile to cover your particular platform.  This gem is not necessary on non-Windows machines.

##Future Work
This app can be easily modified to include such things as: emails to users (sign up confirmation, password request, and so on), a direct messaging feature for users to communicate with each other without sharing emails, and a more robust search functionality.  It all depends on the direction in which the organization chooses to go with this.

##Screenshots
![Home Mobile View](/screenshots/homem1.png)
![Alabama Page](/screenshots/alabama3.png)