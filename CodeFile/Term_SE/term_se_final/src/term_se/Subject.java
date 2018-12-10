package term_se;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.ArrayList;

public class Subject {

	
	public ArrayList<subject_Node> subject_list_load() throws IOException {
		String filePath = "C:\\Users\\Sims\\workspace\\term_se\\WebContent\\Subject\\subject_list.txt";
		BufferedReader BR = new BufferedReader(new InputStreamReader(new FileInputStream(filePath), "UTF8"));
		String line = null;
		ArrayList<subject_Node> subject_list = new ArrayList<subject_Node>();
		String[] temp;

		while ((line = BR.readLine()) != null) {
			temp = line.split(",");
			subject_Node sbj = new subject_Node();
			sbj.Point  = Integer.parseInt(temp[0]);
			sbj.Sub_name  = temp[1];
			sbj.Major  = temp[2];
			sbj.Date  = temp[3];
			sbj.Prof_name  = temp[4];
			sbj.Std_size  = temp[5];
			sbj.Sub_num  = temp[6];

			subject_list.add(sbj);
		}
		return subject_list;
	}

	// 성적등록
	public boolean subject_list_reg(int p_Point, String p_Sub_name, String p_Major, String p_Date,
			String p_Prof_name, String p_Std_size, String p_Sub_num) throws IOException {
		ArrayList<subject_Node> subject_list = subject_list_load();
		
		// 학생 load
		
		
		
		// std_grade_list 크기만큼
		for (int i = 0; i < subject_list.size(); i++) {
			// 학수번호에 대한 학점이 이미 등록되어 있을 때 : false
			if((subject_list.get(i).Sub_num).equals(p_Sub_num)) {		
				return false;
			}
		}
					
		// 학번 존재, 학점 미등록 상태
		subject_Node sbj = new subject_Node();
		sbj.Point  = p_Point;
		sbj.Sub_name = p_Sub_name;
		sbj.Major  = p_Major;
		sbj.Date  = p_Date;
		sbj.Prof_name  =p_Prof_name;
		sbj.Std_size = p_Std_size;
		sbj.Sub_num  = p_Sub_num;
				
		subject_list.add(sbj);
		
		subject_list_add(subject_list);
		return true;
	}
	
		public boolean subject_list_del(String p_Std_subnum) throws IOException {
			ArrayList<subject_Node> subject_list = subject_list_load();
			
			
			int i = 0;
			if (subject_list.size()==0) {
				return false;
			}
			for (i = 0; i < subject_list.size(); i++) {
				// 중복시 제거
				if ((subject_list.get(i).Sub_num).equals(p_Std_subnum)) {
					subject_list.remove(i);
					break;
				} else {
					// 없다면 false
					if (i == subject_list.size()-1) {
						return false;
					}
				}
			}
			
			subject_list_add(subject_list);

			return true;
		}
		
		// 성적 수정
		public boolean subject_list_modi(int p_Point, String p_Sub_name, String p_Major, String p_Date,
				String p_Prof_name, String p_Std_size, String p_Sub_num) throws IOException {
			
			ArrayList<subject_Node> subject_list = subject_list_load();

			int i = 0;
			if (subject_list.size() == 0) {
				return false;
			}
			for (i = 0; i < subject_list.size(); i++) {
				// 중복시 수정
				if(subject_list.get(i).Sub_num.equals(p_Sub_num)) {				
					
					subject_list.get(i).Point = p_Point;
					subject_list.get(i).Sub_name = p_Sub_name;
					subject_list.get(i).Major = p_Major;
					subject_list.get(i).Date = p_Date;
					subject_list.get(i).Prof_name = p_Prof_name;
					subject_list.get(i).Std_size = p_Std_size;
					subject_list.get(i).Sub_num = p_Sub_num;
					break;
					
				} else {
					// 없다면 false
					if (i == subject_list.size()-1) {
						return false;
					}
				}
			}
			
			subject_list_add(subject_list);
			
			return true;
		}
	
		
		
	public ArrayList Adm_subject_search() throws IOException {
		ArrayList<subject_Node> subject_list = subject_list_load();

		return subject_list;
	}
	
	public ArrayList Std_subject_search(String p_sub_num) throws IOException {
		ArrayList<subject_Node> subject_list = subject_list_load();
		
		ArrayList<subject_Node> std_subject_list = new ArrayList<subject_Node>();
		
		for(int i = 0 ; i< subject_list.size(); i++) {
			if(subject_list.get(i).Sub_num.equals(p_sub_num)) {				
				
				std_subject_list.add(subject_list.get(i));
			}
		}
		
		return std_subject_list;
	}


	public void subject_list_add(ArrayList<subject_Node> subject_list) throws IOException {
		String filePath = "C:\\Users\\Sims\\workspace\\term_se\\WebContent\\Subject\\subject_list.txt";
		BufferedWriter BW = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(filePath), "UTF8"));
		String line;
		
		for (int i = 0; i < subject_list.size(); i++) {

			line = subject_list.get(i).Point + "," + subject_list.get(i).Sub_name + ","
					+ subject_list.get(i).Major + "," + subject_list.get(i).Date 
					+ "," + subject_list.get(i).Prof_name + ","+ subject_list.get(i).Std_size 
					+ "," + subject_list.get(i).Sub_num;
			
			BW.write(line);
			BW.newLine();

		}
		BW.flush();
	}

}
