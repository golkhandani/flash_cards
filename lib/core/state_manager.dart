import 'package:flutter/widgets.dart';

import 'package:get_it/get_it.dart';

abstract class ValueStateModel {
  ValueStateModel();
}

abstract class ValueStateController<S extends ValueStateModel> {
  int get _historyKey => DateTime.now().millisecondsSinceEpoch;

  late final ValueNotifier<S> _stateNotifier;
  late final Map<int, S> _stateHistory = {};
  late final Map<int, void Function()> _listeners = {};
  ValueStateController(S initState) {
    _stateNotifier = ValueNotifier(initState);
    _stateHistory.putIfAbsent(_historyKey, () => initState);
  }

  List<S> get history => _stateHistory.values.toList();
  S get oldState => _stateHistory.values.last;
  S get currentState => _stateNotifier.value;

  void addListener(void Function(S o, S n) listener) {
    if (_listeners.containsKey(listener.hashCode)) {
      return;
    }
    ln() => listener(oldState, currentState);
    _listeners.putIfAbsent(listener.hashCode, () => ln);
    _stateNotifier.addListener(ln);
  }

  void removeListener(void Function(S o, S n) listener) {
    if (!_listeners.containsKey(listener.hashCode)) {
      return;
    }
    _stateNotifier.removeListener(_listeners[listener.hashCode]!);
    _listeners.remove(listener.hashCode);
  }

  void notify(S state) {
    if (_stateHistory.length >= 10) {
      _stateHistory.remove(_stateHistory.keys.first);
    }
    _stateHistory.putIfAbsent(_historyKey, () => _stateNotifier.value);
    _stateNotifier.value = state;
  }

  void dispose() {
    _stateHistory.clear();
    _stateNotifier.dispose();
  }
}

class ValueState<L extends ValueStateController<S>, S extends ValueStateModel>
    extends StatelessWidget {
  static final _vsRegistry = GetIt.asNewInstance();

  static void registerController<L extends ValueStateController>(
    L Function() l,
  ) {
    _vsRegistry.registerLazySingleton<L>(l);
    return;
  }

  static L getController<L extends ValueStateController>() {
    return _vsRegistry.get<L>();
  }

  const ValueState._({
    required L logic,
    required this.builder,
    super.key,
  }) : _logic = logic;

  factory ValueState.builder({
    required Widget Function(BuildContext c, S s) builder,
  }) =>
      ValueState._(
        logic: ValueState.getController<L>(),
        builder: builder,
      );

  final L _logic;
  final Widget Function(BuildContext c, S s) builder;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _logic._stateNotifier,
      builder: (context, value, child) {
        return builder(context, value);
      },
    );
  }
}
