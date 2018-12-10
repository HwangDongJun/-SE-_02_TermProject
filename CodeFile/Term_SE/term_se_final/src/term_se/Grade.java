package term_se;

import term_se.Student_information;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.ArrayList;

public class Grade {
	public ArrayList grade_list_load() throws IOException {
		String filePath = "C:\\Users\\Sims\\workspace\\term_se\\WebContent\\Grade\\std_grade_list.txt";
		BufferedReader BR = new BufferedReader(new InputStreamReader(new FileInputStream(filePath), "UTF8"));
		String line = null;
		ArrayList std_grade_list = new ArrayList();
		String[] temp;

		while ((line = BR.readLine()) != null) {
			temp = line.split(",");
			grade_Node grd = new grade_Node();
			grd.Std_id = temp[0];
			grd.Std_point = temp[1];
			grd.Std_score = temp[2];
			grd.Std_grade = temp[3];
			grd.Std_Cur = temp[4];
			grd.Std_subject = temp[5];
			grd.Std_subnum = temp[6];
			grd.Std_date = temp[7];

			std_grade_list.add(grd);
		}
		return std_grade_list;
	}

	// 성적등록
	public boolean gradelist_reg(String p_std_id, String p_std_point, String p_std_score, String p_std_grade
			,String p_std_subnum, String p_std_date, String p_std_Cur, String p_std_subject) throws IOException {
		ArrayList<grade_Node> std_grade_list = grade_list_load();
		
		// 학생 load
		Student_information std_id = new Student_information();
		ArrayList<Student> ar = std_id.Std_infolist_load();
		
		// 일치하는 학번이 존재하는지 확인
		for(int j = 0; j < ar.size() ; j++) {
			// 학번이 존재하면 다음으로 진행.
			if(ar.get(j).std_id.equals(p_std_id)) {
				break;
			} else {
					// 학번이 존재하지 않을 때 && 더이상 확인할 학번이 존재하지 않을 때
					if(j == ar.size()-1) {
							
					return false;	
				}
			}
		}
		
		// std_grade_list 크기만큼
		for (int i = 0; i < std_grade_list.size(); i++) {
			// 학수번호에 대한 학점이 이미 등록되어 있을 때 : false
			if((std_grade_list.get(i).Std_subnum).equals(p_std_subnum) && (std_grade_list.get(i).Std_date).equals(p_std_date)) {		
				return false;
			}
		}
					
		// 학번 존재, 학점 미등록 상태
		grade_Node grd = new grade_Node();
		grd.Std_id=p_std_id;
		grd.Std_point=p_std_point;
		grd.Std_score=p_std_score;
		grd.Std_grade=p_std_grade;
		grd.Std_Cur=p_std_Cur;
		grd.Std_subject=p_std_subject;
		grd.Std_subnum=p_std_subnum;
		grd.Std_date=p_std_date;
				
		std_grade_list.add(grd);
		
		std_grade_add(std_grade_list);
		return true;
	}
	
	public ArrayList Adm_grade_search(String p_std_id) throws IOException {
		ArrayList<grade_Node> std_grade_list = grade_list_load();
		
		ArrayList<grade_Node> grade_list = new ArrayList<grade_Node>();
		
		for(int i = 0 ; i< std_grade_list.size(); i++) {
			if(std_grade_list.get(i).Std_id.equals(p_std_id)) {				
				
				grade_list.add(std_grade_list.get(i));
			}
		}
		
		return grade_list;
	}
	
	public ArrayList Std_grade_search(String p_Std_id, String p_Std_date) throws IOException {
		ArrayList<grade_Node> std_grade_list = grade_list_load();
		
		ArrayList<grade_Node> grade_list = new ArrayList<grade_Node>();
		
		for(int i = 0 ; i< std_grade_list.size(); i++) {
			if(std_grade_list.get(i).Std_id.equals(p_Std_id) &&
					std_grade_list.get(i).Std_date.equals(p_Std_date)) {				
				
				grade_list.add(std_grade_list.get(i));
			}
		}
		
		return grade_list;
	}


	// 장학생 삭제
	public boolean Std_grade_del(String p_Std_subnum, String p_Std_id) throws IOException {
		ArrayList<grade_Node> std_grade_list = grade_list_load();
		
		
		int i = 0;
		if (std_grade_list.size()==0) {
			return false;
		}
		for (i = 0; i < std_grade_list.size(); i++) {
			// 중복시 제거
			if ((std_grade_list.get(i).Std_id).equals(p_Std_id) && (std_grade_list.get(i).Std_subnum).equals(p_Std_subnum) ) {
				std_grade_list.remove(i);
				break;
			} 
				
			if (i == std_grade_list.size()-1) {
				return false;
			}
			

		}
		
		
		std_grade_add(std_grade_list);

		return true;
	}

	// 성적 수정
	public boolean Std_grade_mod(String p_std_id, String p_std_point, String p_std_score, String p_std_grade
			,String p_std_subnum, String p_std_date, String p_std_Cur, String p_std_subject) throws IOException {
		ArrayList<grade_Node> std_grade_list = grade_list_load();

		int i = 0;
		if (std_grade_list.size() == 0) {
			return false;
		}
		for (i = 0; i < std_grade_list.size(); i++) {
			// 중복시 수정
			if(std_grade_list.get(i).Std_id.equals(p_std_id) &&
					std_grade_list.get(i).Std_subnum.equals(p_std_subnum)&&
					 (std_grade_list.get(i).Std_date).equals(p_std_date)) {				
				
				
				std_grade_list.get(i).Std_Cur = p_std_Cur;
				// std_grade_list.get(i).Std_date = p_std_date;
				std_grade_list.get(i).Std_grade = p_std_grade;
				std_grade_list.get(i).Std_point = p_std_point;
				std_grade_list.get(i).Std_score = p_std_score;
				std_grade_list.get(i).Std_subject = p_std_subject;
				std_grade_list.get(i).Std_subnum = p_std_subnum;
				break;
			}
			
			// 없다면 false
			if (i == std_grade_list.size()-1) {
				return false;
			}
		}
		
		std_grade_add(std_grade_list);

		return true;
	}

	public void std_grade_add(ArrayList<grade_Node> std_grade_list) throws IOException {
		String filePath = "C:\\Users\\Sims\\workspace\\term_se\\WebContent\\Grade\\std_grade_list.txt";
		BufferedWriter BW = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(filePath), "UTF8"));
		String line;
		
		for (int i = 0; i < std_grade_list.size(); i++) {

			line = std_grade_list.get(i).Std_id + "," + std_grade_list.get(i).Std_point + ","
					+ std_grade_list.get(i).Std_score + "," + std_grade_list.get(i).Std_grade 
					+ "," + std_grade_list.get(i).Std_Cur + ","+ std_grade_list.get(i).Std_subject 
					+ "," + std_grade_list.get(i).Std_subnum + "," + std_grade_list.get(i).Std_date;
			
			BW.write(line);
			BW.newLine();

		}
		BW.flush();
	}

}


