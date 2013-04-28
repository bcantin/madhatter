# Welcome to the Madhatter Qbox.io demonstration application

This application was created to help develpers get familiar with the Qbox API
using the Ruby Tire library

It uses the mysql2 library as well, so please have mysql running on your local dev box.

# Getting Started

1. Clone this repository

2. Change your working directory to madhatter

3. run 
```shell
bundle install
```

4. run 
```shell
rake db:setup (create / load schema / db:seed)
```

5. When using the master or after branches to use the searching features, you will need to update the config/qbox_io.rb file with your api key.  Get one from http://qbox.io

# Branches

There is a 'before_search' branch that has the basic application with no 
search features 

There is an 'after_search' branch (also the master branch) that has the finished search features
