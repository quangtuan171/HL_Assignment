void miniMaxSum(List<int> list) {
  int min = minOfList(list);
  int max = maxOfList(list);
  int sum = sumOfList(list);
  print('${sum - max} ${sum - min}');
}

// Tính tổng các phần tử trong mảng
int sumOfList(List<int> list) {
  int sum = 0;
  for (int i = 0; i < list.length; i++) {
    sum += list[i];
  }
  return sum;
}

// Tìm phần tử nhỏ nhất trong mảng
int minOfList(List<int> list) {
  int min = list.first;
  for (int i = 0; i < list.length; i++) {
    if (list[i] < min) {
      min = list[i];
    }
  }
  return min;
}

// Tìm phần tử lớn nhất trong mảng
int maxOfList(List<int> list) {
  int max = list.first;
  for (int i = 0; i < list.length; i++) {
    if (list[i] > max) {
      max = list[i];
    }
  }
  return max;
}

// Các phần tử chẵn trong mảng
List<int> evenElementsOfList(List<int> list) {
  List<int> result = [];
  for (int i = 0; i < list.length; i++) {
    if (list[i] % 2 == 0) {
      result.add(list[i]);
    }
  }
  return result;
}

// Các phần tử lẻ trong mảng
List<int> oddElementsOfList(List<int> list) {
  List<int> result = [];
  for (int i = 0; i < list.length; i++) {
    if (list[i] % 2 != 0) {
      result.add(list[i]);
    }
  }
  return result;
}