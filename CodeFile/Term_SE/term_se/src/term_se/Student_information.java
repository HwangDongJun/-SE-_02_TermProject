package term_se;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Hashtable;

public class Student_information {
	static HashMap<String, String> MajorTable = new HashMap<String, String>() {
		{
			put("Advertising", "02");
			put("Animal Science", "03");
			put("Anthropology", "04");
			put("Biochemistry", "05");
			put("Molecular Biology", "06");
			put("Chemical Engineering", "07");
			put("Chemistry", "08");
			put("Civil Engineering", "09");
			put("Computer Science", "10");
			put("Criminal Justice", "11");
			put("Economics", "12");
			put("Electrical Engineering", "13");
			put("Entomology", "14");
			put("Food Science", "15");
			put("Geography", "16");
			put("History", "17");
			put("Mathematics", "18");
			put("Physiology", "19");
			put("Zoology", "20");
		}
	};

	// 학생 불러
	public ArrayList Std_infolist_load() throws IOException {
		String filePath = "C:\\Users\\Sims\\workspace\\term_se\\WebContent\\Student_info\\std_info.txt";
		BufferedReader BR = new BufferedReader(new InputStreamReader(new FileInputStream(filePath), "UTF8"));
		String line = null;
		ArrayList<Student> std_info_list = new ArrayList<Student>();
		String[] temp;

		while ((line = BR.readLine()) != null) {
			temp = line.split(",");
			Student std = new Student();
			std.std_id = temp[0];
			std.std_name = temp[1];
			std.std_major = temp[2];
			std.std_image = temp[3];
			std.std_phone_number = temp[4];
			std.std_private_num = temp[5];
			std.std_address = temp[6];

			std_info_list.add(std);
		}
		return std_info_list;
	}

	// 학부
	public String std_id_assign(String p_std_private_num, String p_std_major, String p_entrance) throws IOException {
		ArrayList<Student> std_info_list = Std_infolist_load();

		String[] s1 = p_std_private_num.split("-");

		int result = Integer.parseInt(s1[1]) % Integer.parseInt(s1[0]);
		
		while(result < 100) {
			result =  result*10;
		}
		
		String id = p_entrance + MajorTable.get(p_std_major) + Integer.toString(result).substring(0, 3);

		return id;
	}

	// 학적 등록
	public boolean std_info_reg(String p_std_name, String p_std_private_num, String p_std_major, String p_std_image,
			String p_std_address, String p_std_phone_num, String p_entrance) throws IOException {
		ArrayList<Student> std_info_list = Std_infolist_load();

		String std_id = std_id_assign(p_std_private_num, p_std_major, p_entrance);

		int i = 0;
		for (i = 0; i < std_info_list.size(); i++) {

			if (p_std_private_num.equals(((Student) std_info_list.get(i)).std_private_num)) {

				return false;
			}
		}

		Student std = new Student();

		std.std_id = std_id;
		std.std_name = p_std_name;
		std.std_major = p_std_major;
		std.std_image = p_std_image;
		std.std_phone_number = p_std_phone_num;
		std.std_private_num = p_std_private_num;
		std.std_address = p_std_address;

		std_info_list.add(std);
		Std_info_add(std_info_list);

		return true;
	}

	// 학적 수정
	public boolean Std_info_modi(String p_std_id, String p_std_address, String p_std_image, String p_std_phone_num)
			throws IOException {
		ArrayList<Student> std_info_list = Std_infolist_load();
		int i = 0;
		for (i = 0; i < std_info_list.size(); i++) {
			// 중복시 false
			if ((std_info_list.get(i).std_id).equals(p_std_id)) {

				std_info_list.get(i).std_image = p_std_image;
				std_info_list.get(i).std_phone_number = p_std_phone_num;
				std_info_list.get(i).std_address = p_std_address;
				Std_info_add(std_info_list);
				return true;
			}
		}

		return false;
	}

	public boolean Adm_info_modi(String p_std_id, String p_std_name, String p_std_private_num, String p_std_major,
			String p_std_address, String p_std_image, String p_std_phone_num) throws IOException {
		ArrayList<Student> std_info_list = Std_infolist_load();
		int i = 0;
		for (i = 0; i < std_info_list.size(); i++) {
			// 중복시 false
			if ((std_info_list.get(i).std_id).equals(p_std_id)) {
				std_info_list.get(i).std_major = p_std_major;
				std_info_list.get(i).std_name = p_std_name;
				std_info_list.get(i).std_image = p_std_image;
				std_info_list.get(i).std_phone_number = p_std_phone_num;
				std_info_list.get(i).std_address = p_std_address;
				Std_info_add(std_info_list);
				return true;
			}
		}

		return false;
	}

	// 장학생 삭제
	public boolean info_del(String p_std_id) throws IOException {
		ArrayList<Student> std_info_list = Std_infolist_load();
		int i = 0;

		for (i = 0; i < std_info_list.size(); i++) {

			if ((std_info_list.get(i).std_id).equals(p_std_id)) {
				std_info_list.remove(i);
				Std_info_add(std_info_list);

				return true;
			}
		}
		return false;
		// 없다면 false

	}

	public ArrayList info_search(String p_std_id) throws IOException {
		ArrayList<Student> std_info_list = Std_infolist_load();
		ArrayList sch_list = new ArrayList();

		for (int i = 0; i < std_info_list.size(); i++) {
			if ((std_info_list.get(i).std_id).equals(p_std_id)) {
				Student std = new Student();
				std.std_id = std_info_list.get(i).std_id;
				std.std_name =std_info_list.get(i).std_name;
				std.std_address=std_info_list.get(i).std_address;
				std.std_image=std_info_list.get(i).std_image;
				std.std_major=std_info_list.get(i).std_major;
				std.std_phone_number=std_info_list.get(i).std_phone_number;
				std.std_private_num=std_info_list.get(i).std_private_num;
				
				sch_list.add(std);

				return sch_list;
			}
		}
		return sch_list;
	}

	
	public void Std_info_add(ArrayList<Student> p_std_info_list) throws IOException {
		String filePath = "C:\\Users\\Sims\\workspace\\term_se\\WebContent\\Student_info\\std_info.txt";
		BufferedWriter BW = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(filePath), "UTF8"));
		String line;
		for (int i = 0; i < p_std_info_list.size(); i++) {

			line = p_std_info_list.get(i).std_id + "," + p_std_info_list.get(i).std_name + ","
					+ p_std_info_list.get(i).std_major + "," + p_std_info_list.get(i).std_image+","
					+p_std_info_list.get(i).std_phone_number+","+p_std_info_list.get(i).std_private_num+","
					+p_std_info_list.get(i).std_address;
			BW.write(line);
			BW.newLine();
			}
		BW.flush();
	}

}
