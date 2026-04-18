import 'package:dio/browser.dart';
import 'package:dio/dio.dart';

import 'clients.dart';

class BrowserCustomClientAdapter extends BrowserHttpClientAdapter
    with ClientMixin {}

HttpClientAdapter adapter() => BrowserCustomClientAdapter();
