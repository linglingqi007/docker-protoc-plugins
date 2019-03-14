# protoc & plugins Dockerfile

## use
```bash
git clone git@github.com:tiger-regit/docker-protoc-plugins.git
cd docker-protoc-plugins
docker image build -t ${your_iamge_name} .

# or you can use by docker image pull tigerregit/protoc-plugins

docker container run --rm -v "${host_proto}":"${docker_proto}" -v "${host_path}":"${docker_path}" protoc-plugins protoc --proto_path=${docker_path} --php_out=${docker_path} --grpc_out=${docker_path} --plugin=protoc-gen-grpc=/usr/local/bin/grpc_php_plugin ${docker_proto}
```
