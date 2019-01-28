int lenNumerator = 400000;
public void setup()
{
	size(500,500);
}
public void draw()
{
	background(252, 249, 224);
	fill(0);
	noStroke();
	sierpinski(0, 500, 500);
}
public void keyPressed()
{
	if(keyCode == 69){
		lenNumerator/= 4;
	}
}
public void sierpinski(int x, int y, int len) 
{
	if(len <= lenNumerator/(len != 0? len: 1)){
		triangle(x, y,x + len, y, x + len/2, y - len);
	}else{
		sierpinski(x, y, len/2);
		sierpinski(x + len/2, y, len/2);
		sierpinski(x + len/4, y - len/2, len/2);
	}
}