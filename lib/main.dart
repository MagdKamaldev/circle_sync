import 'package:circle_sync/circle_sync_app.dart';
import 'package:circle_sync/core/di/dependency_injection.dart';
import 'package:circle_sync/core/routing/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  setUpGetIt();
  runApp(CircleSyncApp(
    appRouter: AppRouter(),
  ));
}
