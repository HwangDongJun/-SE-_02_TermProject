package term_se;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
public class User_login {
	
	public ArrayList Adm_load () throws IOException {
		String filePath ="C:\\Users\\Sims\\workspace\\term_se\\WebContent\\Login\\admin.txt" ;
		BufferedReader BR = new BufferedReader(new InputStreamReader (new FileInputStream (filePath),"UTF8"));
		String line = null;
		ArrayList Adm_list = new ArrayList();
		
		
		while ((line = BR.readLine()) != null) {
			Adm_list.add(line);
		}
		
		return Adm_list;
	}
	
	public ArrayList Std_load () throws IOException {
		String filePath ="C:\\Users\\Sims\\workspace\\term_se\\WebContent\\Login\\std.txt" ;
		BufferedReader BR = new BufferedReader(new InputStreamReader (new FileInputStream (filePath),"UTF8"));
		String line = null;
		ArrayList Std_list = new ArrayList();
		
		
		while ((line = BR.readLine()) != null) {
			Std_list.add(line);
		}
		
		return Std_list;
	}
	
	public boolean Adm_login(String id, String pwd) throws IOException {
		ArrayList Adm_list = Adm_load(); 
		
		String[] ad;
		
		for(int i = 0 ; i < Adm_list.size() ; i++){
			ad = ((String)Adm_list.get(i)).split(",");
			
			// 같을 때
			if(id.equals(ad[0]) && pwd.equals(ad[1])) {
				return true;
			}
			
		}
		return false;
	}
	
	public boolean Std_login(String id, String pwd) throws IOException {
		ArrayList Std_list = Std_load(); 
		
		String[] ad;
		
		for(int i = 0 ; i < Std_list.size() ; i++){
			ad = ((String)Std_list.get(i)).split(",");
			
			// 같을 때
			if(id.equals(ad[0]) && pwd.equals(ad[1])) {
				return true;
			}
			
		}
		return false;
	}
	
}
