package lab02.com.servlet;

public class CalcBean {
	private int n1;
	private int n2;
	private String oper;
	
	public int getN1() {
		return n1;
	}
	public void setN1(int n1) {
		this.n1 = n1;
	}
	public int getN2() {
		return n2;
	}
	public void setN2(int n2) {
		this.n2 = n2;
	}
	
	public String getOper() {
		return oper;
	}
	public void setOper(String oper) {
		this.oper = oper;
	}
	
	public int getResult(){
		if("+".equalsIgnoreCase(oper)) {
			return n1 + n2;
		}
		else if("-".equalsIgnoreCase(oper)) {
			return n1 - n2;
		}
		else if("*".equalsIgnoreCase(oper)) {
			return n1 * n2;
		}
		else if("/".equalsIgnoreCase(oper)) {
			return n1 / n2;
		}
		else if("%".equalsIgnoreCase(oper)) {
			return n1 % n2;
		}
		return 0;
	}
}

