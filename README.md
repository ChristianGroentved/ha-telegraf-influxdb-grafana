# ha-telegraf-influxdb-grafana
Home Assistant database setup with the TIG stack (Telegraf, Influxdb 2.X, Grafana).

Everything should be setup, no additionally configuration need, except in Home Assistant.

# Installation
1. Modify ```.env``` to your liking
2. run ```docker-compose up -d```
3. Log into Home Asisstant and add the following to the ```configuration.yaml``` file
```
influxdb:
  api_version: 2
  ssl: false
  host: XXX.XXX.XXX.XXX
  port: 8086
  token: mytoken
  organization: myorg
  bucket: home_assistant
  ```
  Remember to change ```host```, ```token``` and ```organization``` to your own setup.
  
  Lastly restart Home Assistant.
  
  If needed modify ```telegraf.conf```to add additional plugins
  
  # Services and Ports
  ## Influx
  * Port:8086
  * User: admin
  * Password: Supersecretpass
  
  ## Grafana
  * Port: 3000
  * User: admin
  * Password: Supersecretpass
