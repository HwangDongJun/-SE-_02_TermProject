package term_se;

import java.io.IOException;
import java.util.HashMap;

public class Schedular {
	
	public HashMap<String, enroll_AL> schedular_create(String std_id) throws IOException {
		
		Enrollment EN = new Enrollment();
		
		HashMap<String, enroll_AL> sch_map = EN.Std_Enrol_search(std_id);
		
		return sch_map;
	}
}
