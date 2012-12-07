
package lab03.com.servlet;

import java.io.IOException;

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class Convert extends TagSupport {
	// STATIC VARIABLES HERE
	private final static String[] END_SYMBOL = {"UNDEF", "½Ç", "·Ö", "Àå"};
	private final static String[] BASIC_SYMBOL = {"Ê°","°Ù","Ç§"};
	private final static String[] NUMBER_SYMBOL = {"Áã","Ò¼","·¡","Èþ","ËÁ","Îé","Â½","Æâ","°Æ","¾Á"};
	private final static String[] UNITS_SYMBOL = {"Ôª","Íò","ÒÚ","Õ×","¾©","Ûò","ïö","ð¦","¹µ","½§","Õý","ÔØ"};
	private String NUMBER;

	public String getNum() { return NUMBER; }
	public void setNum(String NUMBER) { this.NUMBER = NUMBER; }
	
	public static String convert(String NUMBER){
		String result = "";
		boolean czero = false, hasEND_SYMBOL = false;
		int point = NUMBER.indexOf('.');
		if(point >= 0){
			for(int i = Math.min(NUMBER.length()-1, point + 3); i > point; i--){
				int TMP_VALUE = NUMBER.charAt(i) - '0';
				if(hasEND_SYMBOL)
					result = ((TMP_VALUE==0)?((czero)?"":NUMBER_SYMBOL[TMP_VALUE]):(NUMBER_SYMBOL[TMP_VALUE]+END_SYMBOL[i-point]))+result;
				else
					result = ((TMP_VALUE==0)?"":(NUMBER_SYMBOL[TMP_VALUE] + END_SYMBOL[i - point])) + result;
				hasEND_SYMBOL = hasEND_SYMBOL || (TMP_VALUE != 0);
				czero = (TMP_VALUE==0);
			}
		}
		int START_NUM = (point >= 0) ? (point - 1) : (NUMBER.length() -1), U_INDEX = 0;
		boolean HAS_UNIT = false;
		for(; START_NUM >= 3; START_NUM -= 4){
			for(int i = 0; i < 4; i++){
				int TMP_VALUE = NUMBER.charAt(START_NUM-i) - '0';
				if(TMP_VALUE == 0) {
					if(!czero)
						result = NUMBER_SYMBOL[TMP_VALUE] + result;
				} else if(i == 0) {
					result = NUMBER_SYMBOL[TMP_VALUE] + UNITS_SYMBOL[U_INDEX] + result;
					HAS_UNIT = true;
				} else {
					result = NUMBER_SYMBOL[TMP_VALUE] + BASIC_SYMBOL[i-1] + ((HAS_UNIT)?"":UNITS_SYMBOL[U_INDEX]) + result;
					HAS_UNIT = true;
				}
				czero = (TMP_VALUE==0);
			}
			U_INDEX++;
			HAS_UNIT = false;
		}
		HAS_UNIT = false;
		for(int i = 0; i <= START_NUM; i++) {
			int TMP_VALUE = NUMBER.charAt(START_NUM - i) - '0';
			if(TMP_VALUE == 0){
				if(!czero)
					result = NUMBER_SYMBOL[TMP_VALUE] + result;
			} else if(i == 0){
				result = NUMBER_SYMBOL[TMP_VALUE] + UNITS_SYMBOL[U_INDEX] + result;
				HAS_UNIT = true;
			} else{
				result = NUMBER_SYMBOL[TMP_VALUE] + BASIC_SYMBOL[i-1] + ((HAS_UNIT)?"":UNITS_SYMBOL[U_INDEX]) + result;
				HAS_UNIT = true;
			}
			czero = (TMP_VALUE == 0);
		}
		return result;
	}
	
	@Override
	public int doEndTag(){
		try{
		JspWriter mywriter = pageContext.getOut();
		mywriter.write(NUMBER+"<br/>" + convert(NUMBER));
		}catch(IOException ex) {
			
		}
		return SKIP_BODY;
	}
}