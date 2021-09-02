cd /home/frappe/frappe-bench

echo 'starting config dns_multitenant off'       
bench config dns_multitenant off                                 
echo 'Ending config dns_multitenant off'                                                                                                                                                  

echo 'starting setup supervisor'                                          
bench setup supervisor
echo 'Ending config dns_multitenant off'
#screen  -d -m -S bench bash -c 'bench start'
