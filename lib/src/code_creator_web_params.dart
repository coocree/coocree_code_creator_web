// Copyright 2022 Sarbagya Dhaubanjar. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'dart:convert';
import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:webview_flutter_platform_interface/webview_flutter_platform_interface.dart';

import 'platform_view_registry.dart' if (dart.library.html) 'dart:ui' as ui;

/// An implementation of [PlatformWebViewControllerCreationParams] using Flutter
/// for Web API.
@immutable
/// Classe que define os parâmetros de criação para a classe [CodeCreatorWebController].
class CodeCreatorWebParams extends PlatformWebViewControllerCreationParams {

  /// Cria uma instância da classe [CodeCreatorWebParams] com base em [PlatformWebViewControllerCreationParams].
  CodeCreatorWebParams.fromPlatformWebViewControllerCreationParams(
// Parâmetro recomendado para evitar ser quebrado pela interface da plataforma.
// ignore: avoid_unused_constructor_parameters
      PlatformWebViewControllerCreationParams params,
      );

  /// Próximo ID para o elemento IFrame.
  static int _nextIFrameId = 0;

  /// O elemento IFrame subjacente usado como WebView.
  @visibleForTesting
  final IFrameElement ytiFrame = IFrameElement()
    ..id = 'youtube-${_nextIFrameId++}'
    ..width = '100%'
    ..height = '100%'
    ..style.border = 'none'
    ..allow = 'autoplay;fullscreen';
}