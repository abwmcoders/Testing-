import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing/counter.dart';

void main() {
  // the convention followed is called (given when then)
  late Counter count;
  // stages in test are
  //! pre-test
  setUp(
    () {
      // Called before every individual test is run
      count = Counter();
    },
  );
  setUpAll(
    () {
      // Called before all test is run
    },
  );

//! Real test/ testing
  group(
    "Counter class -",
    () {
      test(
        "Given when counter class in instantiated then the value most be zero",
        () {
          // Arrange

          // Act
          final value = count.count;
          // Assert
          expect(value, 0);
        },
      );

      test(
        "Given counter class when it is incremented then the value should be 1",
        () {
          //! Arrange

          //! Act
          count.incrementCounter();
          final val = count.count;
          //! Assert
          expect(val, 1);
        },
      );

      test(
        "given counter class when it is decremented then the value is -1",
        () {
          count.decrementCounter();
          final val = count.count;
          expect(val, -1);
        },
      );

      test(
        "Given counter class and reset the value to 0",
        () {
          count.resetCounter();
          final value = count.count;
          expect(value, 0);
        },
      );
    },
  );

  //! post- test
  tearDown(
    () {
      // Called after every individual test is run
    },
  );
  tearDownAll(
    () {
      // Called after all test is run
    },
  );
}
