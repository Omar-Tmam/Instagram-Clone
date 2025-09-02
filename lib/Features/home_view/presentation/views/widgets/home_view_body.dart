import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:instagram_clone/Core/utils/app_router.dart';
import 'package:instagram_clone/Core/utils/responsive_font_size.dart';
import 'package:instagram_clone/Core/widgets/custom_text.dart';
import 'package:instagram_clone/Features/user_view/data/models/user_info_model/user_info_model.dart';
import 'package:instagram_clone/Features/user_view/presentation/manager/user_info_cubit/user_info_cubit.dart';
import 'package:ionicons/ionicons.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key, required this.userInfoModel});
  final UserInfoModel userInfoModel;

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Center(
            child: Icon(
              Ionicons.logo_instagram,
              color: Colors.pinkAccent,
              size: 100,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          CustomText(
            title: 'Enter Username : ',
            fontSize: getResponsiveFontSize(context, fontSize: 16),
          ),
          SizedBox(
            height: 40,
          ),
          TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: 'UserName',
              enabledBorder: decoration(),
              focusedBorder: decoration(),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          SizedBox(
            width: double.infinity,
            child: BlocConsumer<UserInfoCubit, UserInfoState>(
              listener: (context, state) {
                if (state is UserInfoSuccess) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('User Info Loaded Successfully')));
                }
                if (state is UserInfoFailure) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(state.errorMessage)));
                }
              },
              builder: (context, state) {
                return AbsorbPointer(
                  absorbing: state is UserInfoLoading,
                  child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    onPressed: () async {
                      await BlocProvider.of<UserInfoCubit>(context)
                          .getUserInfo(userId: controller.text);
                      GoRouter.of(context)
                          .push(AppRouter.kUserInfoView, extra: userInfoModel);
                    },
                    child: state is UserInfoLoading
                        ? CircularProgressIndicator()
                        : CustomText(
                            color: Colors.black,
                            title: 'Submit',
                            fontSize:
                                getResponsiveFontSize(context, fontSize: 16),
                          ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  OutlineInputBorder decoration() {
    return OutlineInputBorder(borderSide: BorderSide(color: Colors.grey));
  }
}
