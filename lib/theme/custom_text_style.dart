import 'package:Volunteers.ye/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

import 'package:Volunteers.ye/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumFigtreeBluegray400 =>
      theme.textTheme.bodyMedium!.figtree.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodyMediumGray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get bodyMediumffa6a6a5 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFFA6A6A5),
      );
  static get bodySmallMontserratCyanA400 =>
      theme.textTheme.bodySmall!.montserrat.copyWith(
        color: appTheme.cyanA400,
      );
  static get bodySmallMontserratGray1006d =>
      theme.textTheme.bodySmall!.montserrat.copyWith(
        color: appTheme.gray1006d,
      );
  // Title text style
  static get titleLargeMontserratPrimaryContainer =>
      theme.textTheme.titleLarge!.montserrat.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w400,
      );
  static get titleLargePrimaryContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w400,
      );
  static get titleLargePrimaryContainerSemiBold =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallCyan400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.cyan400,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray500,
      );
  static get titleSmallPrimaryContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallff65c997 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF65C997),
      );
  static get bodyLargeInterWhiteA700 => theme.textTheme.bodyLarge!.inter
      .copyWith(color: appTheme.whiteA700, fontSize: 18.fSize);
  static get titleMediumffffffff => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFFFFFFFF),
      );
  static get bodySmallInterffffffff =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: Color(0XFFFFFFFF),
        fontSize: 10.fSize,
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get figtree {
    return copyWith(
      fontFamily: 'Figtree',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get gilroySemiBold {
    return copyWith(
      fontFamily: 'Gilroy-SemiBold',
    );
  }
}
