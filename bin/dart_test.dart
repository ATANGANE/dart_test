/**
 * [Iterator<int>] of the Fibonacci sequence.
 *
 * Also implements the [Iterable<int>] interface.
 */
class Fibonacci implements Iterable<int>, Iterator<int> {
  // Use the reverse of initial values to get desired initial output w/o
  // special-casing anything.
  int x = 0;
  int y = 1;

  Iterator<int> iterator() => this;

  bool hasNext() => true;

  int next() {
    final int to_return = x;

    final int nextNumber = x + y;
    y = x;
    x = nextNumber;

    return to_return;
  }
}