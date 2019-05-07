
## Docker compose envorinment for testing Varnish with Envoy

Containers:
* Envoy - running as a varnish backend
* Varnish
* traffic recorder - records traffic between Varnish and Envoy and saves it to a file

### How to use it

1. (Optional) change variables `ENVOY_CONFIG` / `VARNISH_CONFIG` in `run.sh` file if you want to use other configuration files
2. `./run.sh`
3. Test whatever you want
4. Traffic dump will be available in `traffic-recorder/output` directory


