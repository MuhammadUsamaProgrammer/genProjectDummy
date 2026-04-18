import 'package:dio/dio.dart';
import 'package:dio/io.dart';

import 'clients.dart';

class CustomClientAdapter extends IOHttpClientAdapter with ClientMixin {}

HttpClientAdapter adapter() => CustomClientAdapter();
