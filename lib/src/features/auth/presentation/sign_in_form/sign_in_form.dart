import 'package:flutter/material.dart';
import 'package:flutter_app_template/src/features/auth/presentation/sign_in_form/sign_in_form_notifier.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignInForm extends StatefulHookConsumerWidget {
  const SignInForm({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignInFormState();
}

class _SignInFormState extends ConsumerState<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final notifier = ref.watch(signInFormNotifierProvider.notifier);
    final state = ref.watch(signInFormNotifierProvider);

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
                notifier.signIn(
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


