//App - Wird Book

import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'dart:ui' as ui;
import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image/image.dart' as img;
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/config/dio_custom_client/client_stub.dart'
    if (dart.library.js) 'src/config/dio_custom_client/web_client.dart'
    if (dart.library.io) 'core/config/dio_custom_client/mobile_client.dart';
import 'core/local/providers/shared_pref.dart';
import 'core/localization/localization_notifier.dart';
import 'core/services/check_internet.dart';
import 'gen/assets.gen.dart';
import 'shared/custom_app_start/providers/app_start.dart';

// Generated files
part 'wird_book.freezed.dart';
part 'wird_book.g.dart';
part 'app.dart';
// Core - App Keys
part 'core/app_keys.dart';
// Core - Config
part 'core/config/api.dart';
part 'core/config/base_response.dart';
part 'core/config/envoirnments.dart';
part 'core/config/interceptors.dart';
part 'core/config/pretty_dio_logger.dart';
part 'core/constants/nationalities.dart';
// Core - Extensions
part 'core/extensions/custom_extensions.dart';
part 'core/local/repositories/local_storage_repository.dart';
// Core - Local
part 'core/local/repositories/shared_preference_repository.dart';
// Core - Mixins
part 'core/mixin/form_state_mixin.dart';
// Core - Routes
part 'core/routes/router.dart';
part 'core/routes/routes.dart';
// Core - Services
part 'core/services/files_picker_service.dart';
part 'core/services/fixed_grid_heigh_delegates.dart';
part 'core/services/image_picker_handler.dart';
// part 'core/services/excel_export_service.dart';
// Core - States
part 'core/states/app_loading_state.dart';
// Core - Theme
part 'core/theme/colors.dart';
part 'features/bottom_shell/bottom_shell.dart';
part 'features/bottom_shell/widgets/appbar.dart';
// Features - Dashboard
part 'features/dashboard/presentation/view/dashboard_page.dart';
// Features - Splash
part 'features/splash/presentation/view/splash.dart';
// Shared - App Start
part 'shared/custom_app_start/presentation/my_app_start.dart';
// Shared - Disposable Providers
part 'shared/disposable_providers/disposable_providers.dart';
// Shared - Modals
part 'shared/modals/confirmation_modal.dart';
// Shared - Utils
part 'shared/utils/custom_date_picker.dart';
part 'shared/utils/custom_scroll_behaviour.dart';
part 'shared/utils/ui_breaks_points.dart';
// Shared - Widgets
// App Bar
part 'shared/widgets/app_bar/main_app_bar.dart';
// App Buttons
part 'shared/widgets/app_buttons/custom_icon_btn.dart';
part 'shared/widgets/app_buttons/primary_button.dart';
part 'shared/widgets/back_icon.dart';
part 'shared/widgets/book_mark_icon.dart';
// Other Widgets
// part 'shared/widgets/custom_drop_down.dart';
part 'shared/widgets/custom_form_validator.dart';
part 'shared/widgets/custom_message.dart';
part 'shared/widgets/custom_text_form_field.dart';
part 'shared/widgets/dashed_line_painter.dart';
part 'shared/widgets/decorated_icon.dart';
part 'shared/widgets/error_widget.dart';
// Images
part 'shared/widgets/images/app_image.dart';
part 'shared/widgets/images/cached_image.dart';
part 'shared/widgets/images/circle_image.dart';
part 'shared/widgets/images/svg_images.dart';
part 'shared/widgets/loading_widget.dart';
// Search
part 'shared/widgets/search/search_bar_widget.dart';
part 'shared/widgets/searchable_custom_dropdown.dart';
part 'shared/widgets/text_form_field_widget.dart';
// Text Widgets
part 'shared/widgets/text_widget/app_text.dart';
part 'shared/widgets/text_widget/readmore_text.dart';
