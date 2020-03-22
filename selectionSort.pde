float[] values;

int i = 0;
int j = i + 1;

void setup() {
  size(800, 500);

  values = new float[width];

  for (int index=0; index < values.length; index++) {
    values[index] = random(height);
  }

  // selection sort

  //  for (int i = 0; i< values.length-1; i++) {
  //    for (int j = i+1; j< values.length; j++) {
  //      if (values[i] > values[j]) {
  //        swap (values, i, j);
  //      }
  //    }
  //  }
}

void draw() {
  background(0);

  if (i<values.length) {
    for (int j = i+1; j< values.length; j++) {
      if (values[i] > values[j]) {
        swap (values, i, j);
      }
    }
  } else {
    noLoop();
    println("finished");
  }

  i++;

  for (int index = 0; index < values.length; index++) {
    stroke(255);
    line(index, height, index, height - values[index]);
  }
}

void swap(float[] arr, int x, int y) {
  float temp = arr [x];
  arr[x] = arr[y];
  arr[y] = temp;
}
