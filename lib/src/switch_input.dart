part of '../switch_input.dart';

class SwitchInput extends StatelessWidget {
  final BoolEditController controller;
  final Widget text;
  final bool readonly;
  const SwitchInput(
      {super.key,
      required this.controller,
      required this.text,
      this.readonly = false});

  void _onChanged(bool value) => controller.boolValue = value;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: controller,
      builder: (context, value, _) {
        return Card(
            child: SwitchListTile(
          title: text,
          value: controller.boolValue,
          onChanged: _onChanged, //(readonly) ? null : _onChanged),
        ));
      },
    );
  }
}

// class SwitchInput extends StatefulWidget {
//   final BoolEditController controller;
//   final Widget text;
//   final bool readonly;
//   const SwitchInput(
//       {super.key,
//       required this.controller,
//       required this.text,
//       this.readonly = false});

//   @override
//   State<SwitchInput> createState() => _SwitchInputState();
// }

// class _SwitchInputState extends State<SwitchInput> {
//   late BoolEditController controller;
//   late Widget text;

//   void onControllerChange() => setState(() {});

//   @override
//   void initState() {
//     super.initState();
//     controller = widget.controller;
//     text = widget.text;
//     controller.addListener(onControllerChange);
//   }

//   @override
//   void dispose() {
//     controller.onChange = null;
//     super.dispose();
//   }

//   void _onChanged(bool value) {
//     // setState(() {
//     controller.boolValue = value;
//     // });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SwitchListTile(
//         title: text,
//         value: controller.boolValue,
//         onChanged: (widget.readonly) ? null : _onChanged);
//   }
// }
