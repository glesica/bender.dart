import 'package:bender/src/action/action.dart';
import 'package:bender/src/action/utils.dart';
import 'package:bender/src/parameter/pr_parameter.dart';

final Action mergeMaster = new ActionImpl(
  getMessage: (context) {
    final prUrl = parameterValue<Uri>(context, 'pr-url');
    return 'update branch $prUrl merge';
  },
  helpText: 'Merge master branch into the PR branch',
  name: 'Merge Master',
  parameters: [
    new PrParameter(),
  ],
);
