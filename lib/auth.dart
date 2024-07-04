// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

/// A mock authentication service.
class DdangnAuth extends ChangeNotifier {
  bool _signedIn = false;

  /// Whether user has signed in.
  bool get signedIn => _signedIn;

  /// Signs out the current user.
  Future<void> signOut() async {
    await Future<void>.delayed(const Duration(milliseconds: 200));
    // Sign out.
    _signedIn = false;
    notifyListeners();
  }

  /// Signs in a user.
  Future<bool> signIn(String username, String password) async {
    await Future<void>.delayed(const Duration(milliseconds: 200));

    // Sign in. Allow any password.
    _signedIn = true;
    notifyListeners();
    return _signedIn;
  }

  String? guard(BuildContext context, GoRouterState state) {
    final bool signedIn = this.signedIn;
    final bool signingIn = state.matchedLocation == '/signin';

    // Go to /signin if the user is not signed in
    if (!signedIn && !signingIn) {
      return '/signin';
    }
    // Go to /books if the user is signed in and tries to go to /signin.
    else if (signedIn && signingIn) {
      return '/';
    }

    // no redirect
    return null;
  }

}



/// An inherited notifier to host [DdangnAuth] for the subtree.
class DdangnAuthScope extends InheritedNotifier<DdangnAuth> {
  /// Creates a [DdangnAuthScope].
  const DdangnAuthScope({
    required DdangnAuth super.notifier,
    required super.child,
    super.key,
  });

  /// Gets the [DdangnAuth] above the context.
  static DdangnAuth of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<DdangnAuthScope>()!
      .notifier!;
}