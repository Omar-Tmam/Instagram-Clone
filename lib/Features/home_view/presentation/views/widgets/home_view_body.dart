import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:instagram_clone/Core/utils/app_router.dart';
import 'package:instagram_clone/Core/utils/functions/user_data_args.dart';
import 'package:instagram_clone/Core/utils/responsive_font_size.dart';
import 'package:instagram_clone/Core/widgets/custom_text.dart';
import 'package:instagram_clone/Features/user_view/presentation/manager/user_info_cubit/user_info_cubit.dart';
import 'package:ionicons/ionicons.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

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
                  GoRouter.of(context).push(AppRouter.kUserInfoView,
                      extra: UserDataArgs(
                          tagModel: state.tagModel,
                          reelsModel: state.reelsModel,
                          postsModel: state.postsModel,
                          userInfoModel: state.userInfoModel,
                          userFollowersModel: state.userFollowersModel));
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
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () async {
                      await BlocProvider.of<UserInfoCubit>(context)
                          .getUserInfo(userId: controller.text);
                    },
                    child: state is UserInfoLoading
                        ? CupertinoActivityIndicator(
                            color: Colors.black,
                          )
                        : Text(
                            'Submit',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: getResponsiveFontSize(context,
                                    fontSize: 19)),
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
