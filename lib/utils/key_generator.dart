import 'package:flutter/widgets.dart';
import 'package:uuid/uuid.dart';

final Uuid uuid = Uuid();

Key generateKey() => Key(uuid.v4());
