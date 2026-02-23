import 'package:enhance_stepper/enhance_stepper.dart';
import 'package:flutter/material.dart';

class ModernStepperWidget extends StatefulWidget {
  const ModernStepperWidget({super.key});

  @override
  State<ModernStepperWidget> createState() => _ModernStepperWidgetState();
}

class _ModernStepperWidgetState extends State<ModernStepperWidget> {
  final List<String> steps = [
    'Dart Intro',
    'OOP Concepts',
    'Flutter Basics',
    'State Management',
    'Flutter Advanced',
  ];

  int _currentStep = 0;

  void go(int value) {
    if (value == -1 && _currentStep == 0) return;
    if (value == 1 && _currentStep == steps.length - 1) return;

    setState(() {
      _currentStep += value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return EnhanceStepper(
      onStepContinue: () => go(1),
      onStepCancel: () => go(-1),
      currentStep: _currentStep,
      stepIconSize: 50,
      stepIconBuilder: (stepIndex, stepState) {
        final isActive = stepIndex == _currentStep;
        final isCompleted = stepIndex < _currentStep;

        return CircleAvatar(
          backgroundColor: isCompleted
              ? Colors.black
              : isActive
                  ? Color(0xffA2CB8B)
                  : Colors.black26,
          child: Text('${stepIndex + 1}',
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold)),
        );
      },
      steps: List.generate(steps.length, (index) {
        return EnhanceStep(
          title: Text(steps[index]),
          content: Text(
            "Content for ${steps[index]}",
            style: const TextStyle(color: Colors.black, fontSize: 15),
          ),
        );
      }),
    );
  }
}
