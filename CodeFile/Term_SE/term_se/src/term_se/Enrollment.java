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
		
		ArrayList<subject_Node> subject_list = new ArrayList<subject_Node>();
		
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
			enrolment_list.add(temp[7]);
			
			// 학번
			temp2 = temp[8].split(" ");
			
			for(int i = 0 ; i< temp2.length; i++) {
				enrol_std.add(temp2[i]);
			}
			enrolment_map.put(id, new enroll_AL(enrolment_list, enrol_std));
		}
		return enrolment_map;
	}
	

	// 신청
	public boolean Enrol(String p_sub_num, String p_std_id) throws IOException {
		HashMap<String, enroll_AL> enrolment_map = enrolment_list_load();

		// 신청 조건
		if(enrolment_map.containsKey(p_sub_num) &&
				enrolment_map.get(p_sub_num).enrol_std.size() < ((int)enrolment_map.get(p_sub_num).enrolment_list.get(2))
				&& !enrolment_map.get(p_sub_num).enrol_std.contains(p_std_id)) {
			
			// 학생 리스트에 추가
			enrolment_map.get(p_sub_num).enrol_std.add(p_std_id);
			// index 1 : 현재 정원을 현재 인원으로 최신화
			enrolment_map.get(p_sub_num).enrolment_list.set(1, enrolment_map.get(p_sub_num).enrol_std.size());
			
			enrolment_list_add(enrolment_map);
			
			return true;
		}
		
		return false;
		
	}
	
	

	// 장학생 삭제
	public boolean Sch_del(String id) throws IOException {
		ArrayList<SchNode> std_sch_list = Adm_Sch_load();

		int i = 0;
		for (i = 0; i < std_sch_list.size(); i++) {
			// 중복시 제거
			if ((std_sch_list.get(i).std_id).equals(id)) {
				std_sch_list.remove(i);
				break;
			}

		}
		// 없다면 false
		if (i == std_sch_list.size()) {
			return false;
		}

		Sch_add(std_sch_list);

		return true;
	}

	// 장학생 수정
	public boolean Sch_mod(String id, String name, String type, String money) throws IOException {
		ArrayList<SchNode> std_sch_list = Adm_Sch_load();

		int i = 0;
		for (i = 0; i < std_sch_list.size(); i++) {
			// 중복시 수정
			if ((std_sch_list.get(i).std_id).equals(id)) {
				std_sch_list.get(i).std_name = name;
				std_sch_list.get(i).std_type = type;
				std_sch_list.get(i).std_money = money;
				break;
			} else {
				// 없다면 false
				if (i == std_sch_list.size()) {
					return false;
				}

			}
		}

		Sch_add(std_sch_list);

		return true;
	}

	public void Sch_add(ArrayList<SchNode> p_std_sch_list) throws IOException {
		String filePath = "C:\\Users\\Sims\\workspace\\term_se\\WebContent\\Scholarship\\Sch_list.txt";
		BufferedWriter BW = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(filePath), "UTF8"));
		String line;
		for (int i = 0; i < p_std_sch_list.size(); i++) {

			line = p_std_sch_list.get(i).std_id + "," + p_std_sch_list.get(i).std_name + ","
					+ p_std_sch_list.get(i).std_type + "," + p_std_sch_list.get(i).std_money;
			BW.write(line);
			BW.newLine();

		}
		BW.flush();
	}


}

class enroll_AL{
	ArrayList enrolment_list = new ArrayList();
	ArrayList enrol_std = new ArrayList();
	
	enroll_AL(ArrayList enrolment_list, ArrayList enrol_std){
		this.enrolment_list = enrolment_list;
		this.enrol_std = enrol_std;
	}
	
	enroll_AL(){}
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



