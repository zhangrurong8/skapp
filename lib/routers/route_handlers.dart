import './../pages/app/index.dart';
import './../pages/details/index.dart';
import './../pages/search/index.dart';
import './../pages/live/index.dart';
import './../pages/live/show_lives.dart';
import './../pages/custom/index.dart';
import './../pages/vipvideo/index.dart';
import './../pages/preview/index.dart';
import './../pages/dlna/index.dart';
import './../pages/history/index.dart';

import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

Handler rootHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return App();
});

Handler detailsRouteHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return Details(
    vodId: params['vodId'].first,
    // vodId: params['vodId'][0],
  );
});

Handler searchRouteHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return Search();
});

Handler liveRouteHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return Live();
});

Handler showLivesRouteHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return VideoWidget(
    address: params['address'].first,
    index: int.parse(params['index'].first),
    url: params['url'].first,
  );
});

Handler customRouteHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return Custom();
});

Handler vipvideoRouteHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return VipVideo();
});

Handler previewRouteHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return Preview(
    vodId: params['vodId'].first,
    // vodId: params['vodId'][0],
  );
});

Handler dlnaRouteHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return Dlna();
});

Handler historyRouteHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return HistoryPage();
});
