// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'json_rpc_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JsonRpcRequest _$JsonRpcRequestFromJson(Map<String, dynamic> json) {
  return JsonRpcRequest(
    id: _idFromValue(json['id']),
    jsonrpc: json['jsonrpc'] as String,
    method: json['method'] as String?,
    params: json['params'] as List<dynamic>?,
  );
}

Map<String, dynamic> _$JsonRpcRequestToJson(JsonRpcRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jsonrpc': instance.jsonrpc,
      'method': instance.method,
      'params': instance.params,
    };
