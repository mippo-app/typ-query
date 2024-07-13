protoc --go_out=./go/pb/ --go_opt=paths=source_relative \
	--go-grpc_out=./go/pb/ --go-grpc_opt=paths=source_relative \
  -Iproto/  -I../typ-p/proto/ \
  $(find proto/ -iname "*.proto")

protoc --dart_out=grpc,generate_kythe_info:./dart/lib/pb/ \
  -Iproto/  -I../typ-p/proto/ \
  $(find proto/ -iname "*.proto")


# import 'package:typ_p/pb/typ_p/value.pb.dart' as $0;
# import '../typ_p/value.pb.dart' as $0;
# sed -i -e 's/\.\.\/typ_p\//package\:typ_p\/pb\/typ_p\//g' dart/pb/typ_query/kv.pb.dart

# sed -i '' 's/\.\.\/typ_p\//package\:typ_p\/pb\/typ_p\//g' dart/lib/pb/typ_query/kv.pb.dart

# dart pub global activate protoc_plugin

find ./dart/lib/pb/ -type f -name "*.dart" -print0 | xargs -0 sed -i '' 's/\.\.\/typ_p\//package\:typ_p\/pb\/typ_p\//g'

python -m grpc_tools.protoc \
  -Iproto/ -I../typ-p/proto/ --python_out=./python/pb/  --pyi_out=./python/pb/  \
  $(find proto/ -iname "*.proto")
