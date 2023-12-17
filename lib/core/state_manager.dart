import 'package:flutter/widgets.dart';

import 'package:get_it/get_it.dart';

class VsmUnregistrable<C extends VsmController> {
  void unregister() {
    Vsm.get<C>()._dispose();
  }
}

class Vsm {
  static final _vsm = GetIt.asNewInstance();

  static VsmUnregistrable<C> register<C extends VsmController>(C Function() c) {
    _vsm.registerLazySingleton<C>(c);
    return VsmUnregistrable<C>();
  }

  static L get<L extends VsmController>() {
    return _vsm.get<L>();
  }
}

class VsmModel {
  VsmModel();
}

abstract class VsmController<M extends VsmModel> {
  int get _historyKey => DateTime.now().millisecondsSinceEpoch;

  late final ValueNotifier<M> _stateNotifier;
  late final Map<int, M> _stateHistory = {};
  late final Map<int, void Function()> _listeners = {};
  VsmController(M initState) {
    _stateNotifier = ValueNotifier(initState);
    _stateHistory.putIfAbsent(_historyKey, () => initState);
  }

  List<M> get history => _stateHistory.values.toList();
  M get previousValue => _stateHistory.values.last;
  M get value => _stateNotifier.value;

  void addListener(void Function(M p, M v) listener) {
    if (_listeners.containsKey(listener.hashCode)) {
      return;
    }
    ln() => listener(previousValue, value);
    _listeners.putIfAbsent(listener.hashCode, () => ln);
    _stateNotifier.addListener(ln);
  }

  void removeListener(void Function(M p, M v) listener) {
    if (!_listeners.containsKey(listener.hashCode)) {
      return;
    }
    _stateNotifier.removeListener(_listeners[listener.hashCode]!);
    _listeners.remove(listener.hashCode);
  }

  void notify(M value) {
    if (_stateHistory.length >= 10) {
      _stateHistory.remove(_stateHistory.keys.first);
    }
    _stateHistory.putIfAbsent(_historyKey, () => _stateNotifier.value);
    _stateNotifier.value = value;
  }

  void _dispose() {
    _stateHistory.clear();
    _stateNotifier.dispose();
  }
}

class VsmView<C extends VsmController<M>, M extends VsmModel>
    extends StatelessWidget {
  const VsmView({
    required this.builder,
    super.key,
  });

  final Widget Function(BuildContext context, M value) builder;

  C get _controller => Vsm.get<C>();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _controller._stateNotifier,
      builder: (context, value, child) {
        return builder(context, value);
      },
    );
  }
}
