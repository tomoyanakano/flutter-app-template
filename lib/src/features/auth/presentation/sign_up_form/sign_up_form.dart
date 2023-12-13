import 'package:flutter/material.dart';
import 'package:flutter_app_template/src/features/auth/presentation/sign_up_form/sign_up_form_notifier.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignUpForm extends StatefulHookConsumerWidget {
  const SignUpForm({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpFormState();
}

class _SignUpFormState extends ConsumerState<SignUpForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final notifier = ref.watch(signUpFormNotifierProvider.notifier);
    final state = ref.watch(signUpFormNotifierProvider);

    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(labelText: 'Email'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            }
          ),
          TextFormField(
            controller: passwordController,
            decoration: const InputDecoration(labelText: 'Password'),
            obscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            }
          ),
          ElevatedButton(
            onPressed: state.isLoading ? null : () {
              if (_formKey.currentState != null && _formKey.currentState!.validate()) {
                notifier.signUp(
                  email: emailController.text,
                  password: passwordController.text,
                );
              }
            },
            child: Center(
              child: state.isLoading ? const CircularProgressIndicator() : const Text('Sign up'),
            )
          ),
        ],
      ), 
    );
  }
}


