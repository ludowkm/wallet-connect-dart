import 'package:json_annotation/json_annotation.dart';
import 'package:wallet_connect/utils/constants.dart';

part 'json_rpc_request.g.dart';

@JsonSerializable()
class JsonRpcRequest {
  @JsonKey(fromJson: _idFromValue)
  final int id;

  final String jsonrpc;
  final String? method;
  final List<dynamic>? params;

  JsonRpcRequest({
    required this.id,
    this.jsonrpc = JSONRPC_VERSION,
    this.method,
    required this.params,
  });

  factory JsonRpcRequest.fromJson(Map<String, dynamic> json) =>
      _$JsonRpcRequestFromJson(json);

  Map<String, dynamic> toJson() => _$JsonRpcRequestToJson(this);

  @override
  String toString() {
    return 'JsonRpcRequest(id: $id, jsonrpc: $jsonrpc, method: $method, params: $params)';
  }
}

int _idFromValue(dynamic idValue) {
  if (idValue is String) return int.parse(idValue);
  return idValue as int;
}
