import java.util.Arrays;

public class SortingFixed {

  public static void main(String[] args) {
    System.out.println("Starting the program...");

    int[] arrayToSort = { 3, 1, 4, 1, 5, 9, 2, 6 };

    System.out.println("Initial array is: " + Arrays.toString(arrayToSort));

    int[] sortedArray = mergeSort(arrayToSort);

    System.out.println("Sorted array is: " + Arrays.toString(sortedArray));
    System.out.println("Exiting...");
  }

  private static int[] mergeSort(int[] array) {
    if (array.length <= 1) {
      return array;
    }

    int mid = array.length / 2;

    int[] left = mergeSort(Arrays.copyOfRange(array, 0, mid));
    int[] right = mergeSort(Arrays.copyOfRange(array, mid, array.length));

    return merge(left, right);
  }

  private static int[] merge(int[] left, int[] right) {
    int[] result = new int[left.length + right.length];

    int i = 0;
    int j = 0;
    int k = 0;

    while (i < left.length && j < right.length) {
      if (left[i] <= right[j]) {
        result[k] = left[i];
        i = i + 1;
        k = k + 1;
      } else {
        result[k] = right[j];
        j = j + 1;
        k = k + 1;
      }
    }

    while (i < left.length) {
      result[k] = left[i];
      i = i + 1;
      k = k + 1;
    }

    while (j < right.length) {
      result[k] = right[j];
        j = j + 1;
        k = k + 1;
    }

    return result;
  }
}