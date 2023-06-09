// Copyright 2023 Takin Profit. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:logging/logging.dart';

Logger getLogger(String name) {
  Logger logger = Logger(name);

  Logger.root.level = Level.ALL;
  var _ = Logger.root.onRecord.listen((LogRecord rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.loggerName}: ${rec.message}');
  });

  return logger;
}
