
# SkillTree - AI Coding Agent Instructions

## Purpose
This document is for AI coding agents (e.g., GitHub Copilot, GPT-4, Claude) working in the SkillTree codebase. It provides essential, actionable knowledge to maximize productivity and ensure code aligns with project conventions, architecture, and workflows. **Follow these instructions strictly.**

# Project Overview


Flutter tutoring platform (SDK ^3.10.1) with **dual user flows** (`FlowType.tutor` / `FlowType.student`). Features: session booking, calendar, file sharing, real-time chat (Firestore + REST API sync).

**Tech Stack:** Flutter, Riverpod 3.x (codegen), GoRouter, Retrofit, Freezed, Firebase (Auth + Firestore)


## Critical: Barrel File Pattern
**ALL files** use `part of` consolidated in [lib/skilltree.dart](lib/skilltree.dart) (~250+ part statements). This enables global access to all project symbols and eliminates the need for local imports in most files.

```dart
// New file header - count '../' based on depth from lib/:
part of '../../skilltree.dart';           // 2 levels: lib/core/config/
part of '../../../skilltree.dart';        // 3 levels: lib/core/config/subfolder/
part of '../../../../../skilltree.dart';  // 5 levels: features/shared/chat/data/api/

// Then add to lib/skilltree.dart (maintain alphabetical order within sections):
part 'features/shared/chat/presentation/pages/view/my_new_file.dart';
```

**EXCEPTION – Provider files** (`presentation/providers/` or `presentation/provider/`) use standard imports (required for `@riverpod` codegen):
```dart
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../../skilltree.dart';
part 'my_provider.g.dart';
```

**NEVER use** regular imports in `part of` files – they already have access to everything via the barrel.

## Feature Architecture (3 domains)
```
lib/features/
├── shared/   # Auth, chat, categories, upload_media, sessions, otp, splash, create_profile
├── tutor/    # Dashboard, earnings, students, schedule, calendar, sessions, profile
└── user/     # Home, book_a_session, wallet, all_tutors, calendar, sessions, my_files
```
Each feature follows this structure (see `lib/features/`):
```
feature_name/
├── data/
│   ├── api/       # @RestApi() Retrofit interfaces
│   ├── dto/       # @freezed request DTOs (POST bodies)
│   └── service/   # Firestore/external services (if needed)
├── domain/
│   ├── model/     # @freezed domain models
│   └── repository/  # Interface + Provider + Implementation (all 3 in separate files)
└── presentation/
    ├── providers/ # @riverpod state management (uses imports, not part of)
    │   └── provider/  # Alternative folder name used in some features
    ├── view/      # Page widgets
    │   └── pages/view/  # Alternative nesting pattern
    └── widgets/   # Reusable UI components
```

## Creating API Feature (Quick Reference)
```dart
// 1. API Interface - data/api/feature_api.dart (part of skilltree.dart)
@RestApi()
abstract interface class FeatureApi {
  factory FeatureApi(Dio client) => _FeatureApi(client, baseUrl: '/api/v1/feature/');
  @GET('list?page={page}&count={count}')
  Future<BaseListModel<FeatureModel>> getListApi(@Path('page') int page, @Path('count') int count);
  @POST('create')
  Future<BaseModel<FeatureModel>> createApi(@Body() FeatureDto data);
}

// 2. Repository Interface + Provider - domain/repository/feature_repository.dart
abstract interface class FeatureRepository {
  Future<BaseListModel<FeatureModel>> getList(int page, int count);
}
final featureRepository = Provider<FeatureRepository>(
  (ref) => FeatureApiRepository(ref.read(apiServiceProvider).client),
);

// 3. Repository Implementation - domain/repository/feature_api_repository.dart
class FeatureApiRepository implements FeatureRepository {
  FeatureApiRepository(this.client);
  final Dio client;
  @override
  Future<BaseListModel<FeatureModel>> getList(int page, int count) =>
      FeatureApi(client).getListApi(page, count);
}
```

## State Management Patterns
```dart
// Provider file (lib/features/.../presentation/providers/feature_provider.dart)
// Uses standard IMPORTS - required for @riverpod codegen
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../../skilltree.dart';
part 'feature_provider.g.dart';

// Simple action provider (loading → success/error)
@riverpod
class FeatureActionP extends _$FeatureActionP {
  @override
  AppLoadingState build() => const AppLoadingState();
  
  Future<void> doAction() async {
    state = const AppLoadingState.loading();
    final response = await ref.read(featureRepository).getData();
    $showMessage(response.message ?? '', isError: !response.isSuccess);
    state = response.isSuccess ? const AppLoadingState() : const AppLoadingState.error();
  }
}

// Paginated list provider - use BaseListModel<T> as state
@riverpod
class AllItemsP extends _$AllItemsP {
  int page = 0;
  final count = 10;

  @override
  BaseListModel<ItemModel> build() {
    Future.microtask(() => getItems());  // Initial fetch
    return BaseListModel<ItemModel>(isLoadingMore: true, data: [], isSuccess: false, totalCount: 0);
  }

  Future<void> onRefresh() async {
    page = 0;
    state = state.copyWith(data: [], isLoadingMore: true, totalCount: 0);
    await getItems();
  }

  Future<void> getItems() async {
    state = state.copyWith(isLoadingMore: true);
    page++;
    final response = await ref.read(itemRepository).getItems(page, count);
    state = state.copyWith(
      data: [...(state.data ?? []), ...(response.data ?? [])],
      isLoadingMore: false,
      isSuccess: response.isSuccess,
      totalCount: response.totalCount,
    );
  }
}
```

## Response Wrappers ([lib/core/config/base_response.dart](lib/core/config/base_response.dart))
- `BaseModel<T>` - Single item: `{isSuccess, message, data}`
- `BaseListModel<T>` - Lists: `{isSuccess, message, data, totalCount, isLoadingMore}`

## UI Components ([lib/shared/widgets/](lib/shared/widgets/))
| Widget | Usage |
|--------|-------|
| `AppButton` | `AppButton(onPressed: fn, title: 'Submit', isLoading: bool, border: bool, isDisabled: bool)` - auto-checks internet |
| `TextFormFieldWidget` | `TextFormFieldWidget(controller: ctrl, hintText: '', validator: fn, labelText: '')` |
| `GilroyText` / `InterText` | Text widgets with Google Fonts pre-applied |
| `$showMessage()` | `$showMessage('text', isError: false)` - global toast |
| `$showLoading()` | `$showLoading(context, message: 'Processing...')` → `$hidleLoading(context)` |
| `AppColors` | `.primary`, `.white`, `.textColor`, `.colorC1C7D0`, `.color8A94A6` |
| `Assets.svg.*` | FlutterGen assets - `Assets.svg.iconName`, `Assets.images.photo` |
| `LoadingWidget` | `LoadingWidget(height: 20, width: 20, color: color)` |

## Form Handling (`FormStateMixin`)
```dart
class _PageState extends ConsumerState<Page> with FormStateMixin {
  @override
  FutureOr<void> onSubmit() async { /* called after form validation passes */ }
  
  @override
  Widget build(BuildContext context) => Form(
    key: formKey,  // from mixin - required!
    child: AppButton(onPressed: submitter, title: 'Submit'),  // submitter validates then calls onSubmit
  );
}
```

## Real-time Chat Architecture
- **Send**: REST API (`ChatApi.sendMessageApi`) → Backend syncs to Firestore
- **Listen**: `FirestoreChatService` streams in [lib/features/shared/chat/data/service/](lib/features/shared/chat/data/service/)
- **Firestore structure**: `chats/{chatId}/messages` ordered by `createdOn`
- **Hybrid approach**: Initial load from API, real-time updates via Firestore `newMessagesStream(chatId, afterMessageId)`

## Routing (GoRouter)
Routes defined as enum in [lib/core/routes/routes.dart](lib/core/routes/routes.dart):
```dart
enum AppRoutes {
  tutorDashboard('tutor-dashboard', '/tutor/dashboard'),
  userChat('user-chat', '/user-chat'),
  // Pattern: name, path - use unique names for shell navigation variants
}
// Navigate: context.go(AppRoutes.home.path) or context.push(AppRoutes.bookNow.path)
```

## Dual Flow Context
```dart
// Set on app startup - determines API header and UI variations
FlowTypeContext.init(FlowType.tutor);  // or FlowType.student
FlowTypeContext.isTutor;   // bool check
FlowTypeContext.isStudents; // bool check
```

## Local Storage
```dart
ref.read(localDataProvider).accessToken;
ref.read(localDataProvider).getUserId;
ref.read(localDataProvider).getUserType;
await ref.read(localDataProvider).setAccessToken('token');
await ref.read(localDataProvider).saveUserId('userId');
```

## Build & Codegen Commands
```bash
flutter pub run build_runner build --delete-conflicting-outputs  # freezed, riverpod, retrofit
flutter pub run build_runner watch --delete-conflicting-outputs  # watch mode during development
flutter gen-l10n  # Generate localization files
```

**After creating new files**: Always run `build_runner` to generate `.g.dart` and `.freezed.dart` files.

## Key Reference Files
- [lib/skilltree.dart](lib/skilltree.dart) - Master barrel file (all parts + imports)
- [lib/core/config/api.dart](lib/core/config/api.dart) - `apiServiceProvider`, `FlowTypeContext`
- [lib/core/config/base_response.dart](lib/core/config/base_response.dart) - `BaseModel`, `BaseListModel`
- [lib/core/states/app_loading_state.dart](lib/core/states/app_loading_state.dart) - `AppLoadingState` (loading/error/default)
- [lib/core/mixin/form_state_mixin.dart](lib/core/mixin/form_state_mixin.dart) - Form validation pattern
- [lib/core/routes/routes.dart](lib/core/routes/routes.dart) - All route definitions
- [lib/shared/widgets/](lib/shared/widgets/) - Reusable UI components (`AppButton`, `TextFormFieldWidget`, etc.)
- [lib/core/theme/colors.dart](lib/core/theme/colors.dart) - `AppColors` palette
- [lib/gen/assets.gen.dart](lib/gen/assets.gen.dart) - FlutterGen asset references (`Assets.svg.*`, `Assets.images.*`)

## Common Patterns to Avoid
- ❌ Adding imports to `part of` files - use the barrel's existing imports
- ❌ Creating providers without `.g.dart` part directive
- ❌ Using `BaseModel` for lists (use `BaseListModel` instead)
- ❌ Forgetting `Future.microtask()` for initial data fetch in providers
- ❌ Missing `formKey` binding in `Form` widget when using `FormStateMixin`