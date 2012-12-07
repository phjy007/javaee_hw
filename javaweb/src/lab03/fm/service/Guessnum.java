package lab03.fm.service;


public class Guessnum {
	private String answer_number, user_number;
	private Integer count;
	private final static Integer MAX_TIME = new Integer(10);

	public String getanswer_number() {
		return answer_number;
	}

	public void setanswer_number(String answer_number) {
		this.answer_number = answer_number;
	}

	public String getuser_number() {
		return user_number;
	}

	public void setuser_number(String user_number) {
		this.user_number = user_number;
	}
	
	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public boolean right_guess() {
		boolean is_right = false;
		if(answer_number != null && user_number != null) {
			try{
				int ans = Integer.parseInt(answer_number);
				int user = Integer.parseInt(user_number);
				is_right = (ans == user);
			} catch(Exception ex){
				System.out.println("Exception here");
			}
		}
		return is_right;
	}
	
	public boolean less() {
		boolean lessThan = false;
		if(answer_number != null && user_number != null) {
			try{
				int ans = Integer.parseInt(answer_number);
				int user = Integer.parseInt(user_number);
				lessThan = user < ans;
			}catch(Exception ex){}
		}
		return lessThan;
	}
	
	public boolean check_count() {
		if(count == null) {
			count = new Integer(0);
		}
		return MAX_TIME.intValue() > count.intValue();
	}
}