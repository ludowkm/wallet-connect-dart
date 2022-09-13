import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:wallet_connect/models/jsonrpc/json_rpc_request.dart';

void main() {
  test('parse id type string', () {
    final json =
        '''{"id":"1662968522284","jsonrpc":"2.0","method":"wc_sessionRequest","params":[{"chainId":56,"peerId":"5e21b7bc-438d-4c8f-a841-d90dd68931a0","peerMeta":{"description":"Binance Account Bound Token","icons":["https:\/\/public.bnbstatic.com\/internal_upload\/mp-management-backend\/d\/images\/QTGQWHesAAWm4xij2i6RQ6\/Si7ZPx7aMsA7zH6oxSpuq.png"],"name":"BAB Token","scheme":"bnc:\/\/app.binance.com\/","url":"https:\/\/www.binance.com\/"}}]}''';
    final decodedJson = jsonDecode(json);
    final request = JsonRpcRequest.fromJson(decodedJson);
    expect(request.id, 1662968522284);
  });
  test('parse id type int', () {
    final json =
        '''{"id":1662968522284,"jsonrpc":"2.0","method":"wc_sessionRequest","params":[{"chainId":56,"peerId":"5e21b7bc-438d-4c8f-a841-d90dd68931a0","peerMeta":{"description":"Binance Account Bound Token","icons":["https:\/\/public.bnbstatic.com\/internal_upload\/mp-management-backend\/d\/images\/QTGQWHesAAWm4xij2i6RQ6\/Si7ZPx7aMsA7zH6oxSpuq.png"],"name":"BAB Token","scheme":"bnc:\/\/app.binance.com\/","url":"https:\/\/www.binance.com\/"}}]}''';
    final decodedJson = jsonDecode(json);
    final request = JsonRpcRequest.fromJson(decodedJson);
    expect(request.id, 1662968522284);
  });
}
