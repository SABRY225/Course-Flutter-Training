class Time {
  dynamic hours, minutes, seconds;

  // No-argument constructor
  Time() {
    hours = 0;
    minutes = 0;
    seconds = 0;
  }

  // 3-argument constructor
  Time.init(int h, int m, int s) {
    hours = (h >= 0 && h < 24) ? h : 0;
    minutes = (m >= 0 && m < 60) ? m : 0;
    seconds = (s >= 0 && s < 60) ? s : 0;
  }

  // Display time
  void show() {
    print('$hours:$minutes:$seconds');
  }

  // Overloaded operator+ for addition of two Time objects
  Time operator +(Time t) {
    var sum = Time();
    sum.seconds = seconds + t.seconds;
    sum.minutes = minutes + t.minutes + sum.seconds ~/ 60;
    sum.hours = hours + t.hours + sum.minutes ~/ 60;
    sum.seconds %= 60;
    sum.minutes %= 60;
    sum.hours %= 24;
    return sum;
  }

  // Overloaded operators for pre- and post- increment
  void increment() {
    // Pre-increment
    ++seconds;
    if (seconds >= 60) {
      seconds -= 60;
      ++minutes;
      if (minutes >= 60) {
        minutes -= 60;
        ++hours;
        hours %= 24;
      }
    }
  }

  // Overload operators for pre- and post- decrement
  void decrement() {
    // Pre-decrement
    --seconds;
    if (seconds < 0) {
      seconds += 60;
      --minutes;
      if (minutes < 0) {
        minutes += 60;
        --hours;
        if (hours < 0) hours += 24;
      }
    }
  }
}

void main() {
  var t1 = Time.init(10, 59, 59);
  var t2 = Time.init(2, 0, 1);
  var t3 = t1 + t2;

  t3.show();

  t1.increment();
  t1.show();

  t2.decrement();
  t2.show();
}
