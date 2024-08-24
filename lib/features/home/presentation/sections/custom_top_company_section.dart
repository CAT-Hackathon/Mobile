import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:met2ashara_app/core/resources/dimentions_manager.dart';
import 'package:met2ashara_app/core/utils/assets/images.dart';
import 'package:met2ashara_app/core/utils/extensions/bloc_extensions.dart';
import 'package:met2ashara_app/core/utils/extensions/widget_extensions.dart';
import 'package:met2ashara_app/features/home/presentation/controller/cubit/home_cubit.dart';
import 'package:met2ashara_app/features/home/presentation/widgets/custom_company_widget.dart';
import 'package:met2ashara_app/features/home/presentation/widgets/custom_list_view_header.dart';
import 'package:met2ashara_app/features/shared/view/empty_view.dart';
import 'package:met2ashara_app/features/shared/view/error_view.dart';

class CustomTopCompanySection extends StatefulWidget {
  const CustomTopCompanySection({super.key});

  @override
  State<CustomTopCompanySection> createState() =>
      _CustomTopCompanySectionState();
}

class _CustomTopCompanySectionState extends State<CustomTopCompanySection> {
  @override
  void initState() {
    context.read<HomeCubit>().getCompanies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomHeaderListView(),
        8.verticalSpace,
        BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            var companies = state.companiesResponse.companies;
            return state.status.build(
              onLoading: const CupertinoActivityIndicator().center(),
              onFailed: const ErrorView(),
              onSuccess: companies.isEmpty
                  ? EmptyView(
                      padding: AppSize.s35,
                      icon: SvgPicture.asset(Assets.iconsNotAllowed)
                          .paddingBottom(16.sp)
                          .paddingTop(48.sp),
                      title: "no Companies",
                      buttonLabel: "Retry",
                      onButtonPressed: () =>
                          context.read<HomeCubit>().getCompanies())
                  : SizedBox(
                      height: 190.h,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: companies.length,
                        itemBuilder: (context, index) {
                          return CustomCompanyWidget(company: companies[index]);
                        },
                        separatorBuilder: (context, index) {
                          return 8.horizontalSpace;
                        },
                      ),
                    ),
            );
          },
        )
      ],
    ).paddingHorizontal(16);
  }
}
