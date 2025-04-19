import 'package:flutter/material.dart';

class StepperPage extends StatefulWidget {
  const StepperPage({Key? key}) : super(key: key);

  @override
  State<StepperPage> createState() => _StepperPageState();
}

class _StepperPageState extends State<StepperPage> {
  int _currentStep = 0;

  void _nextStep() {
    if (_currentStep < 2) {
      setState(() => _currentStep += 1);
    }
  }

  void _prevStep() {
    if (_currentStep > 0) {
      setState(() => _currentStep -= 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stepper Widget')),
      body: Stepper(
        currentStep: _currentStep,
        onStepContinue: _nextStep,
        onStepCancel: _prevStep,
        onStepTapped: (int index) {
          setState(() => _currentStep = index);
        },
        steps: [
          Step(
            title: Text('Шаг 1'),
            content: Text('Это первый шаг.'),
            isActive: _currentStep >= 0,
          ),
          Step(
            title: Text('Шаг 2'),
            content: Text('Это второй шаг.'),
            isActive: _currentStep >= 1,
          ),
          Step(
            title: Text('Шаг 3'),
            content: Text('Это третий шаг.'),
            isActive: _currentStep >= 2,
          ),
        ],
      ),
    );
  }
}
