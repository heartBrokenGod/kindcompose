# installation
install_go:
	bash install/go.bash
install_kind:
	bash install/kind.bash
install_cloud_provider_kind:
	bash install/cloud_provider_kind.bash
install_kubectl:
	bash install/kubectl.bash
install_helm:
	bash install/helm.bash

install_all: install_go install_kind install_cloud_provider_kind install_kubectl install_helm

# setup
create_development_cluster: install_all
	bash cluster/create_development_cluster.bash
delete_development_cluster:
	bash cluster/delete_development_cluster.bash
start_load_balancer:
	bash cluster/start_cloud_provider_kind.bash
stop_load_balancer:
	bash cluster/stop_cloud_provider_kind.bash

# install and start all databases
install_all_dbs:
	bash dbs/install.bash
# install service mesh istio
install_istio:
	bash istio/install.bash

add_service_name_ip_binding:
	bash cluster/add_service_name_ip_binding.bash
remove_service_name_ip_binding:
	bash cluster/remove_service_name_ip_binding.bash

start: create_development_cluster start_load_balancer install_all_dbs install_istio add_service_name_ip_binding
clean: remove_service_name_ip_binding stop_load_balancer delete_development_cluster
