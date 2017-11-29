package seetaface;


public class CMSeetaFace {

	private int left, right, top, bottom;

	private float roll_angle;
	private float pitch_angle;
	private float yaw_angle;

	private int landmarks[] = new int[10];

	private float features[] = new float[2048];

	public int getLeft() {
		return left;
	}

	public void setLeft(int left) {
		this.left = left;
	}

	public int getRight() {
		return right;
	}

	public void setRight(int right) {
		this.right = right;
	}

	public int getTop() {
		return top;
	}

	public void setTop(int top) {
		this.top = top;
	}

	public int getBottom() {
		return bottom;
	}

	public void setBottom(int bottom) {
		this.bottom = bottom;
	}

	public float getRoll_angle() {
		return roll_angle;
	}

	public void setRoll_angle(float roll_angle) {
		this.roll_angle = roll_angle;
	}

	public float getPitch_angle() {
		return pitch_angle;
	}

	public void setPitch_angle(float pitch_angle) {
		this.pitch_angle = pitch_angle;
	}

	public float getYaw_angle() {
		return yaw_angle;
	}

	public void setYaw_angle(float yaw_angle) {
		this.yaw_angle = yaw_angle;
	}

	public int[] getLandmarks() {
		return landmarks;
	}

	public void setLandmarks(int[] landmarks) {
		this.landmarks = landmarks;
	}

	public float[] getFeatures() {
		return features;
	}

	public void setFeatures(float[] features) {
		this.features = features;
	}
}
