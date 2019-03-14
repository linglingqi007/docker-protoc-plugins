# protoc & plugins

## avalible plugins 
* grpc_cpp_plugin
* grpc_csharp_plugin
* grpc_node_plugin
* grpc_objective_c_plugin
* grpc_php_plugin
* grpc_python_plugin
* grpc_ruby_plugin

## use
```bash
docker container run --rm -v "${host_proto}":"${docker_proto}" -v "${host_path}":"${docker_path}" protoc-plugins protoc --proto_path=${docker_path} --php_out=${docker_path} --grpc_out=${docker_path} --plugin=protoc-gen-grpc=/usr/local/bin/grpc_php_plugin ${docker_proto}
```
