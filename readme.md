# Swapi API extended

### Requirenment
-----------
For this project to work you will need [Composer](https://getcomposer.org/) (A Dependency Manager for PHP)

### Installation
-----------
Follow the steps above👀 to make it work.

> Create e new database on your machine and import swapi-slim.sql 
> Edit `.env` file with your database configurations. 
> Open gitbash and navigate to your local server root

```bash
git clone https://github.com/bernard-goga/swapi-slim.git
```
```bash
cd swapi-slim
```
```bash
composer install
``` 

After the dependencies are installed run the following command to run the app.

```
php -S localhost:8888
``` 

To synchronize the database with the SWAPI API just run the following command

```
php sync.php
``` 

or open in the browser the foolowing link


```
localhost:8888/sync.php
``` 


Usage
-----

### Method `get()`
-----------
> Showing all starships/vehilcle

- link for vehicles: `http://localhost:8888/api/vehicle`

- link for starships: `http://localhost:8888/api/starships`

> Showing single starships/vehilcle

- link for single vehicle: `http://localhost:8888/api/vehicle/{id:[0-9]+}`

- link for single starship: `http://localhost:8888/api/starships/{id:[0-9]+}`

> Showing units per single starships/vehilcle

- link for getting units of single vehicle: `http://localhost:8888/api/vehicle/units/{id:[0-9]+}`

- link for getting units of single starship: `http://localhost:8888/api/starships/units/{id:[0-9]+}`



### Method `put()`
-----------
> Setting units for starships/vehilcle

- link for vehicles: `http://localhost:8888/api/vehicle/units/{id:[0-9]+}`

- link for starships: `http://localhost:8888/api/starships/units/{id:[0-9]+}`

> Increment units for starships/vehilcle

- link for single vehicle: `http://localhost:8888/api/vehicle/increment/units/{id:[0-9]+}`

-  link for single starship: `http://localhost:8888/api/starships/increment/units/{id:[0-9]+}`

> Decrement units for starships/vehilcle

- link for getting units of single vehicle: `http://localhost:8888/api/vehicle/decrement/units/{id:[0-9]+}`

-  link for getting units of single starship: `http://localhost:8888/api/starships/decrement/units/{id:[0-9]+}`