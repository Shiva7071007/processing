float[] values;

int i=0;
int j=0;

void setup() {
  size(800, 500);
  //fullScreen();
  values = new float[width];
  for (int i = 0; i < values.length; i++) {
    values[i] = random(height);
  }

  //for (int i = 0; i < values.length; i++) {
  //  for (int j = 0; j < values.length - i -1; j++) {
  //    if (values[j] > values[j+1]) {
  //      swap(values, j, j+1);
  //    }
  //  }
  //}
}

void draw() {
  background(0);

  if (i< values.length) {
    for (int j = 0; j < values.length - i -1; j++) {
      if (values[j] > values[j+1]) {
        swap(values, j, j+1);
      }
    }
  } else {
    noLoop();
    println("finished");
  }

  i++;

  for (int i = 0; i < values.length; i++) {
    stroke(255);
    line(i, height, i, height - values[i]);
  }
}

void swap(float[] arr, int x, int y) {
  float temp = arr [x];
  arr[x] = arr[y];
  arr[y] = temp;
}
