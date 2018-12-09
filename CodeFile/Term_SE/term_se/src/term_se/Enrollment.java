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

public class Enrollment {
	
	public HashMap<String, enroll_AL> enrolment_list_load() throws IOException {
		String filePath = "C:\\Users\\Sims\\workspace\\term_se\\WebContent\\Enrolment\\enrolment_list.txt";
		BufferedReader BR = new BufferedReader(new InputStreamReader(new FileInputStream(filePath), "UTF8"));
		String line = null;
		
		HashMap<String, enroll_AL> enrolment_map = new HashMap<String, enroll_AL>();
		
		
		ArrayList<String> enrol_std;
		ArrayList<String> enrolment_list;
		
		String id = "";
		
		
		String[] temp;
		String[] temp2;
		while ((line = BR.readLine()) != null) {
			enrolment_list = new ArrayList();
			enrol_std = new ArrayList();
		
			
			temp = line.split(",");
			// key
			id = temp[0]; 
			
			// 과목정보
			enrolment_list.add(temp[1]);
			enrolment_list.add(temp[2]);
			enrolment_list.add(temp[3]);
			enrolment_list.add(temp[4]);
			enrolment_list.add(temp[5]);
			enrolment_list.add(temp[6]);
			// 학번
			
			if(!temp[7].equals(" ")) {
				temp2 = temp[7].split(" ");
				
				System.out.println(temp2.length);
			
				for(int i = 0 ; i< temp2.length; i++) {
					enrol_std.add(temp2[i]);
				}
			} 
				
			
		
			enrolment_map.put(id, new enroll_AL(enrolment_list, enrol_std));
		}
		return enrolment_map;
	}
	

	// 신청
	public boolean Enrol(String p_sub_num, String p_std_id) throws IOException {
		HashMap<String, enroll_AL> enrolment_list_map = enrolment_list_load();

		// 신청 조건
		if(enrolment_list_map.containsKey(p_sub_num) &&
				enrolment_list_map.get(p_sub_num).enrol_std.size() < (Integer.parseInt(String.valueOf(enrolment_list_map.get(p_sub_num).enrolment_list.get(1))))
				&& !enrolment_list_map.get(p_sub_num).enrol_std.contains(p_std_id)) {
			
			// 학생 리스트에 추가
			enrolment_list_map.get(p_sub_num).enrol_std.add(p_std_id);
			// index 1 : 현재 정원을 현재 인원으로 최신화
			enrolment_list_map.get(p_sub_num).enrolment_list.set(0, enrolment_list_map.get(p_sub_num).enrol_std.size());
			
			Enrol_add(enrolment_list_map);
			
			return true;
		}
		
		return false;
		
	}

		public boolean Enrol_cancel(String p_sub_num, String p_std_id) throws IOException {
			HashMap<String, enroll_AL> enrolment_list_map = enrolment_list_load();

			// 
			if(enrolment_list_map.containsKey(p_sub_num) && 
					enrolment_list_map.get(p_sub_num).enrol_std.contains(p_std_id)) {
				System.out.println(p_std_id);
				enrolment_list_map.get(p_sub_num).enrol_std.remove(p_std_id);
			
				// 현재 인원 갱신.
				enrolment_list_map.get(p_sub_num).enrolment_list.set(0, enrolment_list_map.get(p_sub_num).enrol_std.size());
				
				Enrol_add(enrolment_list_map);
				
				return true;
			}
			return false;
		}
		
		// 조회
		public HashMap<String, enroll_AL> Std_Enrol_search( String p_std_id) throws IOException {
			
			HashMap<String, enroll_AL> enrolment_list_map = enrolment_list_load();
			
			// ArrayList<subject_Node> subject_list = subject_list_load();
			
			HashMap<String, enroll_AL> enrolment_map = new HashMap<String, enroll_AL>();

			
			for(String keys : enrolment_list_map.keySet()){
				//  학번이 신청 되어있는  학수번호
				if(enrolment_list_map.get(keys).enrol_std.contains(p_std_id)) {
					enrolment_map.put(keys, enrolment_list_map.get(keys));
				}
			}
				
			return enrolment_map;
		}
		
		public boolean Enrol_del(String p_sub_num) throws IOException {
			
			HashMap<String, enroll_AL> enrolment_list_map = enrolment_list_load();
			
			// ArrayList<subject_Node> subject_list = subject_list_load();
			
			if(enrolment_list_map.containsKey(p_sub_num)) {
				enrolment_list_map.remove(p_sub_num);
				
				Enrol_add(enrolment_list_map);
				return true;
				
			} else {
				
				return false;
			}
		}
		
		// 등록
		public boolean Enrol_reg(String p_sub_num, String p_sub_name, String p_sub_prof, String p_date,
				int p_max_num, int p_enrol_count, String p_lect_room) throws IOException {
			HashMap<String, enroll_AL> enrolment_list_map = enrolment_list_load();

			// 
			
			// 이미 등록되어 있다면 false
			if(enrolment_list_map.containsKey(p_sub_num)) {
				return false;
			}
			
			// 학수번호가 등록이 안되어있는 상태
			for(String keys : enrolment_list_map.keySet()){

				// 둘다 있으면 안됨 - > false
				// 강의실이 존재할 경우 
				if(enrolment_list_map.get(keys).enrolment_list.contains(p_lect_room)) {
					
					// p_date 와 비교
					String time = (String) enrolment_list_map.get(keys).enrolment_list.get(3);
					
					String[] p_input_date = p_date.split(" ");
					String[] p_t = time.split(" ");
				
				
					// time 양식을 가정 : M 13 15 
					// 요일 여부 확인 -> 
					if(p_input_date[0].equals(p_t[0])) {
						// 들어온 처음시간이 저장된 처음시간보다 작을 때 
						if(Integer.parseInt(p_input_date[1]) <Integer.parseInt(p_t[1])) {
							
							if(Integer.parseInt(p_input_date[2]) <= Integer.parseInt(p_t[2])) {
								continue;
							// 시간이 중복될때
							} else {
								return false;
							}
						// 들어온 처음시간이 저장된 처음시간보다 클 때
						} else {
							if(Integer.parseInt(p_input_date[1]) >= Integer.parseInt(p_t[2])) {
								continue;
								
							// 시간이 중복될때
							} else {
								return false;
							}
						}
					}
				
				}
			}
			
			// 중복되는 것이 없다면 정상적으로 통과
			
			String id = p_sub_num;
			
			ArrayList enrolment_list = new ArrayList();
			ArrayList enrol_std = new ArrayList();
			
			
			enrolment_list.add(p_enrol_count);
			enrolment_list.add(p_max_num);
			enrolment_list.add(p_sub_name);
			enrolment_list.add(p_date);
			enrolment_list.add(p_lect_room);
			enrolment_list.add(p_sub_prof);
			
			enrolment_list_map.put(id, new enroll_AL(enrolment_list, enrol_std));
			
			Enrol_add(enrolment_list_map);
		
			return true;
		}
		
		// 조회
		public HashMap<String, enroll_AL> Adm_Enrol_search() throws IOException {
			
			HashMap<String, enroll_AL> enrolment_list_map = enrolment_list_load();
				
			return enrolment_list_map;
		}
		


	public void Enrol_add(HashMap<String, enroll_AL> enrolment_list_map) throws IOException {
		String filePath = "C:\\Users\\Sims\\workspace\\term_se\\WebContent\\Enrolment\\enrolment_list.txt";
		BufferedWriter BW = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(filePath), "UTF8"));
		String line = "";
		
		
		for(String keys : enrolment_list_map.keySet()){
			line =  keys + "," + enrolment_list_map.get(keys).enrolment_list.get(0)+ "," +
					enrolment_list_map.get(keys).enrolment_list.get(1)+ "," +enrolment_list_map.get(keys).enrolment_list.get(2)+ "," +
					enrolment_list_map.get(keys).enrolment_list.get(3)+ "," +enrolment_list_map.get(keys).enrolment_list.get(4)+ "," +
					enrolment_list_map.get(keys).enrolment_list.get(5)+ ",";
			
			for(int i = 0; i < enrolment_list_map.get(keys).enrol_std.size(); i++) {
				line += enrolment_list_map.get(keys).enrol_std.get(i) + " ";
			}
			
			if(enrolment_list_map.get(keys).enrol_std.size() !=0) {
				line = line.substring(0, line.length()-1);
			} else {
				line += " ";
			}
			
			
			BW.write(line);
			BW.newLine();
		}
		BW.flush();
	}


}


/**
 * id
 * 현재 신청인원
 * 정원
 * 교과
 * 강의시간
 * 강의실
 * 담당교수
 */



