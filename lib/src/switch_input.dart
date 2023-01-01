part of '../switch_input.dart';

class SwitchInput extends StatefulWidget {
  final BoolEditController controller;
  final Widget text;
  const SwitchInput({super.key, required this.controller, required this.text});

  @override
  State<SwitchInput> createState() => _SwitchInputState();
}

class _SwitchInputState extends State<SwitchInput> {
  BoolEditController get controller => widget.controller;
  Widget get text => widget.text;

  void _onChanged(bool value) => controller.boolValue = value;

  @override
  void initState() {
    super.initState();
    controller.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: text,
        trailing: Switch(
          value: controller.boolValue,
          onChanged: _onChanged,
        ),
        onTap: () => _onChanged(!controller.boolValue),
      ),
    );
  }
}
