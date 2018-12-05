package term_se;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.HashMap;

public class Subject_plan {
	
	public HashMap<String, ArrayList<String>> subject_plan_list_load() throws IOException {
		String filePath = "C:\\Users\\Sims\\workspace\\term_se\\WebContent\\Subject_plan\\subject_plan_list.txt";
		BufferedReader BR = new BufferedReader(new InputStreamReader(new FileInputStream(filePath), "UTF8"));
		String line = null;
		HashMap<String, ArrayList<String>> subject_plan_list = new HashMap<String, ArrayList<String>>();
		String[] temp;

		while ((line = BR.readLine()) != null) {
			String id = "";
			ArrayList array = new ArrayList();
			temp = line.split(",");
			
			id = temp[0];
			
			for(int i = 1; i<23 ; i++) {
				array.add(temp[i]);
			}

			subject_plan_list.put(id, array);
		}
		
		return subject_plan_list;
	}
	
	public boolean subject_plan_list_del(String p_sub_num) throws IOException {
		HashMap<String, ArrayList<String>> subject_plan_list = subject_plan_list_load();

		
		if(subject_plan_list.containsKey(p_sub_num)) {
			subject_plan_list.remove(p_sub_num);
			
		} else {
			return false;
		}
		
		subject_plan_list_add(subject_plan_list);

		return true;
	}


	public boolean subject_plan_list_reg(String p_sub_name, String p_major, String p_date,
			String p_sub_num, String p_p_h_e, String p_prof_name, String p_prof_major, String p_major_tel,
			String p_prof_tel, String p_prof_email, String p_anticipate, String p_class_info, 
			String p_pre_study, String p_method, String p_evaluation, String p_object, String p_operate,
			String p_std_eva, String p_rule, String p_reference, String p_week_sche, String p_ps, 
			String p_disabil_info) throws IOException {
		
		HashMap<String, ArrayList<String>> subject_plan_list = subject_plan_list_load();
		
		// 학수번호 : 교과목에 등록되어 있는가? => Map에 등록되어 있는가?
		
		Subject sbj = new Subject();
		
		ArrayList<subject_Node> subject_list = sbj.subject_list_load();
		
		// 일치하는 학수번호이 존재하는지 확인
		for(int i = 0; i < subject_list.size() ; i++) {
			// 학번이 존재하면 다음으로 진행.
			if((subject_list.get(i).Sub_num).equals(p_sub_num)) {
				break;
			} else {
					// 학번이 존재하지 않을 때 && 더이상 확인할 학번이 존재하지 않을 때
					if(i == subject_list.size()-1) {
							
					return false;	
				}
			}
		}
		
		// 학수번호가 테이블에 존재하지 않을 때(중복 X) : 등록
		if(!subject_plan_list.containsKey(p_sub_num)) {
			
			
			String id = p_sub_num;
			
			ArrayList<String> list = new ArrayList<String>();
			
			list.add(p_sub_name);
			list.add(p_major);
			list.add(p_date);
			list.add(p_p_h_e);
			list.add(p_prof_name);
			list.add(p_prof_major);
			list.add(p_major_tel);
			list.add(p_prof_tel);
			list.add(p_prof_email);
			list.add(p_anticipate);
			list.add(p_class_info);
			list.add(p_pre_study);
			list.add(p_method);
			list.add(p_evaluation);
			list.add(p_object);
			list.add(p_operate);
			list.add(p_std_eva);
			list.add(p_rule);
			list.add(p_reference);
			list.add(p_week_sche);
			list.add(p_ps);
			list.add(p_disabil_info);
			
			subject_plan_list.put(id, list);
			
		// 학수번호가 이미 존재한다면 중복되므로 false
		} else {
			return false;
		}
				
		
		subject_plan_list_add(subject_plan_list);
		return true;
	}
	
	public boolean subject_plan_list_mod(String p_sub_name, String p_major, String p_date,
			String p_sub_num, String p_p_h_e, String p_prof_name, String p_prof_major, String p_major_tel,
			String p_prof_tel, String p_prof_email, String p_anticipate, String p_class_info, 
			String p_pre_study, String p_method, String p_evaluation, String p_object, String p_operate,
			String p_std_eva, String p_rule, String p_reference, String p_week_sche, String p_ps, 
			String p_disabil_info) throws IOException {
		
		HashMap<String, ArrayList<String>> subject_plan_list = subject_plan_list_load();
		
		
		// 학수번호가 테이블에 존재할때 (중복O) : 수정
		if(subject_plan_list.containsKey(p_sub_num)) {
	
			String id = p_sub_num;
			
			ArrayList<String> list = new ArrayList<String>();
			
			list.add(p_sub_name);
			list.add(p_major);
			list.add(p_date);
			list.add(p_p_h_e);
			list.add(p_prof_name);
			list.add(p_prof_major);
			list.add(p_major_tel);
			list.add(p_prof_tel);
			list.add(p_prof_email);
			list.add(p_anticipate);
			list.add(p_class_info);
			list.add(p_pre_study);
			list.add(p_method);
			list.add(p_evaluation);
			list.add(p_object);
			list.add(p_operate);
			list.add(p_std_eva);
			list.add(p_rule);
			list.add(p_reference);
			list.add(p_week_sche);
			list.add(p_ps);
			list.add(p_disabil_info);
			
			subject_plan_list.remove(p_sub_num);
			subject_plan_list.put(id, list);
			
		// 학수번호가 이미 존재 X : 수정 불가 -> false
		} else {
			return false;
		}
				
		
		subject_plan_list_add(subject_plan_list);
		return true;
	}
	
	
		
	public ArrayList subject_plan_search(String p_sub_num) throws IOException {
		HashMap<String, ArrayList<String>> subject_plan_list = subject_plan_list_load();

		if(subject_plan_list.containsKey(p_sub_num)) {
			return subject_plan_list.get(p_sub_num);
		} else {
			return new ArrayList();
		}
	}

	public void subject_plan_list_add(HashMap<String, ArrayList<String>> subject_plan_list) throws IOException {
		String filePath = "C:\\Users\\Sims\\workspace\\term_se\\WebContent\\Subject_plan\\subject_plan_list.txt";
		BufferedWriter BW = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(filePath), "UTF8"));
		String line;
		
		for(String keys : subject_plan_list.keySet()){
	
			ArrayList temp = subject_plan_list.get(keys);
			
			line = keys;
			
			for (int i = 0 ; i< 22; i++) {
				line += "," + temp.get(i);
			}

			BW.write(line);
			BW.newLine();

		}
		BW.flush();
	}

}
