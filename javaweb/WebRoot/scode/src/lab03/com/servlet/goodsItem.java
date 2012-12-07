package lab03.com.servlet.shopping;

public class goodsItem {
	private String name;
	private double price;
	private int inventory, order;
	
	public goodsItem(String n, double p, int i){
		name 		= n;
		price 		= p;
		inventory	= Math.max(0, i);
	}
	
	public String getName() {
		return name;
	}

	public void setName(String n) {
		name = n;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double p) {
		price = p;
	}

	public int getInventory() {
		return inventory;
	}

	public void setInventory(int i) {
		inventory = i;
	}
	
	public void setOrder(int o) {
		if(o > inventory) {
			order = inventory;
			return;
		}
		if(o < 0)
			o = 0;
		order = o;
	}
	
	public int getOrder() {
		return order;
	}
	
	public double totlePrice() {
		return price * order;
	}
}
