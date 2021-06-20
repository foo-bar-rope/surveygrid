import 'package:flutter/cupertino.dart';

Widget SurveyGridTable() {
  final double _width = 90;
  final double _height = 30;
  final double _headerWidth = 90;
  final double _headerHeight = 30;

  return Column(
    children: [
      Row(
        children: [
          Container(
              child: Container(
            width: _headerWidth,
            height: _headerHeight,
            child: Text('blank'),
          )),
          Expanded(
              child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: _width,
                    height: _headerHeight,
                    child: Text('sticky row'),
                  ),
                  Container(
                    width: _width,
                    height: _headerHeight,
                    child: Text('sticky row'),
                  ),
                  Container(
                    width: _width,
                    height: _headerHeight,
                    child: Text('sticky row'),
                  ),
                  Container(
                    width: _width,
                    height: _headerHeight,
                    child: Text('sticky row'),
                  ),
                  Container(
                    width: _width,
                    height: _headerHeight,
                    child: Text('sticky row'),
                  ),
                  Container(
                    width: _width,
                    height: _headerHeight,
                    child: Text('sticky row'),
                  ),
                ],
              ),
            ),
          )),
        ],
      ),
      Expanded(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
                Container(
                  width: _headerWidth,
                  height: _height,
                  child: Text('sticky column'),
                ),
                Container(
                  width: _headerWidth,
                  height: _height,
                  child: Text('sticky column'),
                ),
                Container(
                  width: _headerWidth,
                  height: _height,
                  child: Text('sticky column'),
                ),
                Container(
                  width: _headerWidth,
                  height: _height,
                  child: Text('sticky column'),
                ),
                Container(
                  width: _headerWidth,
                  height: _height,
                  child: Text('sticky column'),
                ),
                Container(
                  width: _headerWidth,
                  height: _height,
                  child: Text('sticky column'),
                ),
                Container(
                  width: _headerWidth,
                  height: _height,
                  child: Text('sticky column'),
                ),
                Container(
                  width: _headerWidth,
                  height: _height,
                  child: Text('sticky column'),
                ),
                Container(
                  width: _headerWidth,
                  height: _height,
                  child: Text('sticky column'),
                ),
                Container(
                  width: _headerWidth,
                  height: _height,
                  child: Text('sticky column'),
                ),
                Container(
                  width: _headerWidth,
                  height: _height,
                  child: Text('sticky column'),
                ),
                Container(
                  width: _headerWidth,
                  height: _height,
                  child: Text('sticky column'),
                ),
                Container(
                  width: _headerWidth,
                  height: _height,
                  child: Text('sticky column'),
                ),
                Container(
                  width: _headerWidth,
                  height: _height,
                  child: Text('sticky column'),
                ),
                Container(
                  width: _headerWidth,
                  height: _height,
                  child: Text('sticky column'),
                ),
                Container(
                  width: _headerWidth,
                  height: _height,
                  child: Text('sticky column'),
                ),
                Container(
                  width: _headerWidth,
                  height: _height,
                  child: Text('sticky column'),
                ),
                Container(
                  width: _headerWidth,
                  height: _height,
                  child: Text('sticky column'),
                ),
                Container(
                  width: _headerWidth,
                  height: _height,
                  child: Text('sticky column'),
                ),
                Container(
                  width: _headerWidth,
                  height: _height,
                  child: Text('sticky column'),
                ),
                Container(
                  width: _headerWidth,
                  height: _height,
                  child: Text('sticky column'),
                ),
                Container(
                  width: _headerWidth,
                  height: _height,
                  child: Text('sticky column'),
                ),
                Container(
                  width: _headerWidth,
                  height: _height,
                  child: Text('sticky column'),
                ),
                Container(
                  width: _headerWidth,
                  height: _height,
                  child: Text('sticky column'),
                ),
              ]),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Container(
                          width: _width,
                          height: _height,
                          child: Text('contents'),
                        ),
                        Container(
                          width: _width,
                          height: _height,
                          child: Text('contents'),
                        ),
                        Container(
                          width: _width,
                          height: _height,
                          child: Text('contents'),
                        ),
                        Container(
                          width: _width,
                          height: _height,
                          child: Text('contents'),
                        ),
                        Container(
                          width: _width,
                          height: _height,
                          child: Text('contents'),
                        ),
                        Container(
                          width: _width,
                          height: _height,
                          child: Text('contents'),
                        ),
                        Container(
                          width: _width,
                          height: _height,
                          child: Text('contents'),
                        ),
                        Container(
                          width: _width,
                          height: _height,
                          child: Text('contents'),
                        ),
                        Container(
                          width: _width,
                          height: _height,
                          child: Text('contents'),
                        ),
                        Container(
                          width: _width,
                          height: _height,
                          child: Text('contents'),
                        ),
                        Container(
                          width: _width,
                          height: _height,
                          child: Text('contents'),
                        ),
                        Container(
                          width: _width,
                          height: _height,
                          child: Text('contents'),
                        ),
                        Container(
                          width: _width,
                          height: _height,
                          child: Text('contents'),
                        ),
                        Container(
                          width: _width,
                          height: _height,
                          child: Text('contents'),
                        ),
                        Container(
                          width: _width,
                          height: _height,
                          child: Text('contents'),
                        ),
                        Container(
                          width: _width,
                          height: _height,
                          child: Text('contents'),
                        ),
                        Container(
                          width: _width,
                          height: _height,
                          child: Text('contents'),
                        ),
                        Container(
                          width: _width,
                          height: _height,
                          child: Text('contents'),
                        ),
                        Container(
                          width: _width,
                          height: _height,
                          child: Text('contents'),
                        ),
                        Container(
                          width: _width,
                          height: _height,
                          child: Text('contents'),
                        ),
                        Container(
                          width: _width,
                          height: _height,
                          child: Text('contents'),
                        ),
                        Container(
                          width: _width,
                          height: _height,
                          child: Text('contents'),
                        ),
                        Container(
                          width: _width,
                          height: _height,
                          child: Text('contents'),
                        ),
                        Container(
                          width: _width,
                          height: _height,
                          child: Text('contents'),
                        ),
                      ],
                    )),
              ),
            ),
          ],
        ),
      )
    ],
  );
}

class ScrollControllers {
  final ScrollController _verticalTitleController;
  final ScrollController _verticalBodyController;

  final ScrollController _horizontalBodyController;
  final ScrollController _horizontalTitleController;

  ScrollControllers({
    ScrollController? verticalTitleController,
    ScrollController? verticalBodyController,
    ScrollController? horizontalBodyController,
    ScrollController? horizontalTitleController,
  })  : this._verticalTitleController =
      verticalTitleController ?? ScrollController(),
        this._verticalBodyController =
            verticalBodyController ?? ScrollController(),
        this._horizontalBodyController =
            horizontalBodyController ?? ScrollController(),
        this._horizontalTitleController =
            horizontalTitleController ?? ScrollController();
}

/// SyncScrollController keeps scroll controllers in sync.
class _SyncScrollController {
  _SyncScrollController(List<ScrollController> controllers) {
    controllers
        .forEach((controller) => _registeredScrollControllers.add(controller));
  }

  final List<ScrollController> _registeredScrollControllers = [];

  ScrollController? _scrollingController;
  bool _scrollingActive = false;

  /// Returns true if reached scroll end
  bool processNotification(
      ScrollNotification notification,
      ScrollController controller,
      ) {
    if (notification is ScrollStartNotification && !_scrollingActive) {
      _scrollingController = controller;
      _scrollingActive = true;
      return false;
    }

    if (identical(controller, _scrollingController) && _scrollingActive) {
      if (notification is ScrollEndNotification) {
        _scrollingController = null;
        _scrollingActive = false;
        return true;
      }

      if (notification is ScrollUpdateNotification) {
        for (ScrollController controller in _registeredScrollControllers) {
          if (identical(_scrollingController, controller)) continue;
          controller.jumpTo(_scrollingController!.offset);
        }
      }
    }
    return false;
  }
}

