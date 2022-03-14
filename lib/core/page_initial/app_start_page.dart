import 'package:app_peritos/core/route/app_router.gr.dart';
import 'package:app_peritos/features/home/presentation/home_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/authentication/application/application.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Text("ff"));

/*       return BlocProvider(create: create)
 */

    /*  return FlowBuilder<AuthState>(
      state: context.select((AuthCubit cubit) => cubit.state),
      onGeneratePages: (authState, pages) {
        if (authState.isSignedIn) {
         return context.pushRoute(const HomeRoute());
        } else {
          return 
        }
      },
    ); */
  }
}
