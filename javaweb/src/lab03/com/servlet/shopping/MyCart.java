package lab03.com.servlet.shopping;

import java.util.*;

public class MyCart {
	private ArrayList<goodsItem> goods;
	
	public MyCart(ArrayList<goodsItem> g) {
		goods = g;
	}
	
	public void addGood(String name, int count) {
		if(count <= 0) {
			count = 0;
			return;
		}
		for(int i = 0; i < goods.size(); i++) {
			if(goods.get(i).getName().equals(name)) {
				if(count > goods.get(i).getInventory()) {
					goods.get(i).setOrder(goods.get(i).getInventory());
				} else {
					goods.get(i).setOrder(count);
				}
				break;
			}
		}
	}
	
	public void removeGood(String name, int count) {
		if(count <= 0) {
			count = 0;
			return;
		}
		for(int i = 0; i < goods.size(); i++) {
			if(goods.get(i).getName().equals(name)) {
				goods.get(i).setOrder(goods.get(i).getOrder() - count);
				break;
			}
		}
	}
	
	public ArrayList<goodsItem> getGoods() {
		return goods;
	}
}
