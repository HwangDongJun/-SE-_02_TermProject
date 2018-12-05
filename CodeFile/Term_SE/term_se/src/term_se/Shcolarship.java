package term_se;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.ArrayList;

public class Shcolarship {

	// 관리자_장학생목록 불러오기
	public ArrayList Adm_Sch_load() throws IOException {
		String filePath = "C:\\Users\\Sims\\workspace\\term_se\\WebContent\\Scholarship\\Sch_list.txt";
		BufferedReader BR = new BufferedReader(new InputStreamReader(new FileInputStream(filePath), "UTF8"));
		String line = null;
		ArrayList Sch_list = new ArrayList();
		String[] temp;

		while ((line = BR.readLine()) != null) {
			temp = line.split(",");
			SchNode sch = new SchNode();
			sch.std_id = temp[0];
			sch.std_name = temp[1];
			sch.std_type = temp[2];
			sch.std_money = temp[3];

			Sch_list.add(sch);
		}
		return Sch_list;
	}

	// 관리자-장학생 조회
	public ArrayList Adm_Sch_search() throws IOException {
		ArrayList std_sch_list = Adm_Sch_load();

		return std_sch_list;
	}

	// 학생-장학생 조회
	public ArrayList Std_Sch_search(String id) throws IOException {
		ArrayList std_sch_list = Adm_Sch_load();
		ArrayList sch_list = new ArrayList();

		for (int i = 0; i < sch_list.size(); i++) {

			if (id.equals(((SchNode) std_sch_list.get(i)).std_id)) {

				SchNode temp = new SchNode();
				temp.std_id = ((SchNode) std_sch_list.get(i)).std_id;
				temp.std_name = ((SchNode) std_sch_list.get(i)).std_name;
				temp.std_type = ((SchNode) std_sch_list.get(i)).std_type;
				temp.std_money = ((SchNode) std_sch_list.get(i)).std_money;
				sch_list.add(temp);

				return sch_list;
			}
		}
		return sch_list;
	}

	// 장학생 등록
	public boolean Sch_reg(String id, String name, String type, String money) throws IOException {
		ArrayList<SchNode> std_sch_list = Adm_Sch_load();

		for (int i = 0; i < std_sch_list.size(); i++) {
			// 중복시 false
			if ((std_sch_list.get(i).std_id).equals(id)) {
				return false;

			}
		}

		SchNode temp = new SchNode();
		temp.std_id = id;
		temp.std_name = name;
		temp.std_type = type;
		temp.std_money = money;

		std_sch_list.add(temp);

		Sch_add(std_sch_list);

		return true;
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

class SchNode {
	String std_name = null;
	String std_id = null;
	String std_type = null;
	String std_money = null;
}
