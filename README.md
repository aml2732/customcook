# Custom Cook

## Setup  
  docker needs to be run as the root user. If you don't have root permissions - you need to give all these scripts admin/root permissions. (AKA: Use sudo for Ubuntu 16.04 as demonstrated below)  
  * `git clone git@github.com:aml2732/customcook.git`  
  * `sudo ./setup/setup.sh`  

## info
  What currently exists is docker setting up an sqlite db to have 3 tables: `recipe`, `ingredients`, `tags`.  

  **Recipe:**  
   * id - INT   
   * name - varchar(20)   
   * description - varchar(100)  
   * instructions - varchar(500)  

  **Ingredients:**  
   * id - INT  
   * name - varchar(20)  
   * amount - varchar(20)  
   * ingredientid - INT

  **Tags:**  
   * id - INT  
   * tag - varchar(50)  

## Database actions within container
  There is nothing keeping the customcook container up. So in the ./setup/setup.sh uncomment this line: `sudo docker run -p 7000:7000 -it --entrypoint=/bin/bash customcook` to make it start bash.  Upon running the script you'll be put into the container. Test out the database like so:  
  * cd /home/chef/setup
  * Type `sqlite3 customcookdb.db`
  * You're now in an interactive CLI. Tye any of the following commands:
    * `select * from recipe` : gets all the rows from the recipe table
    * ....etc.

## Cleanup  
  * `sudo ./setup/cleanup.sh`  
