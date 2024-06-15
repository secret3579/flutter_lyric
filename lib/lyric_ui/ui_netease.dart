import 'package:flutter/material.dart';
import 'package:flutter_lyric/lyric_ui/lyric_ui.dart';

///Sample Netease style
///should be extends LyricUI implementation your own UI.
///this property only for change UI,if not demand just only overwrite methods.
///
///
///

class UINetease extends LyricUI {
  double defaultSize;
  double defaultExtSize;
  double otherMainSize;
  double bias;
  double lineGap;
  double inlineGap;
  LyricAlign lyricAlign;
  LyricBaseLine lyricBaseLine;
  bool highlight;
  HighlightDirection highlightDirection;

  // color text
  Color? playingExtTextColor;
  Color? playingMainTextColor;
  Color? otherExtTextColor;
  Color? otherMainTextColor;

  UINetease({
    this.defaultSize = 18,
    this.defaultExtSize = 14,
    this.otherMainSize = 16,
    this.bias = 0.5,
    this.lineGap = 25,
    this.inlineGap = 25,
    this.lyricAlign = LyricAlign.CENTER,
    this.lyricBaseLine = LyricBaseLine.CENTER,
    this.highlight = true,
    this.highlightDirection = HighlightDirection.LTR,
    // color text
    this.playingExtTextColor,
    this.playingMainTextColor,
    this.otherExtTextColor,
    this.otherMainTextColor,
  });

  UINetease.clone(UINetease uiNetease)
      : this(
          defaultSize: uiNetease.defaultSize,
          defaultExtSize: uiNetease.defaultExtSize,
          otherMainSize: uiNetease.otherMainSize,
          bias: uiNetease.bias,
          lineGap: uiNetease.lineGap,
          inlineGap: uiNetease.inlineGap,
          lyricAlign: uiNetease.lyricAlign,
          lyricBaseLine: uiNetease.lyricBaseLine,
          highlight: uiNetease.highlight,
          highlightDirection: uiNetease.highlightDirection,
          // color text
          playingExtTextColor: uiNetease.playingExtTextColor,
          playingMainTextColor: uiNetease.playingMainTextColor,
          otherExtTextColor: uiNetease.otherExtTextColor,
          otherMainTextColor: uiNetease.otherMainTextColor,
        );

  @override
  TextStyle getPlayingExtTextStyle() => TextStyle(
        color: playingExtTextColor ?? Colors.grey[300],
        fontSize: defaultExtSize,
      );

  @override
  TextStyle getOtherExtTextStyle() => TextStyle(
        color: otherExtTextColor ?? Colors.grey[300],
        fontSize: defaultExtSize,
      );

  @override
  TextStyle getOtherMainTextStyle() => TextStyle(
        color: otherMainTextColor ?? Colors.grey[200],
        fontSize: otherMainSize,
      );

  @override
  TextStyle getPlayingMainTextStyle() => TextStyle(
        color: playingMainTextColor ?? Colors.white,
        fontSize: defaultSize,
      );

  @override
  double getInlineSpace() => inlineGap;

  @override
  double getLineSpace() => lineGap;

  @override
  double getPlayingLineBias() => bias;

  @override
  LyricAlign getLyricHorizontalAlign() => lyricAlign;

  @override
  LyricBaseLine getBiasBaseLine() => lyricBaseLine;

  @override
  bool enableHighlight() => highlight;

  @override
  HighlightDirection getHighlightDirection() => highlightDirection;
}
