# Custom Cook

## Optional Prereqs:
  On your computer:
  * `sudo apt install postgresql-client-common`
  * `sudo apt-get install postgresql-client`

## Setup  
  docker needs to be run as the root user. If you don't have root permissions - you need to give all these scripts admin/root permissions. (AKA: Use sudo for Ubuntu 16.04 as demonstrated below)  
  * `git clone git@github.com:aml2732/customcook.git`  
  * `sudo ./setup/setup.sh`  

## info
  What currently exists is docker setting up an postgresql docker container to have 3 tables: `recipe`, `ingredients`, `tags`.  

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

## Verify Table creation worked
  * `export PGPASSWORD=123`  
  * `psql -h localhost -p 7000 -U postgres postgres` initdb simply puts everything in the default postgres database  
     * This is saying: connect to the postgresql server at host localhost, port 7000, as the user postgres and database postgres  
  * `\list`: lists databases  
  * `\dt` : lists database tables  
  * `SELECT * FROM recipe;` enter this into the psql interactive shell  
  * `\q` : quits psql interactive mode  

## Cleanup  
  * `sudo ./setup/cleanup.sh`  
