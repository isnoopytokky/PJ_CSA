package csa.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class OfficialController {

	
	@RequestMapping("/index_official")////หน้าแรกเจ้าหน้าที่
	public ModelAndView inoff(){
		ModelAndView model = new ModelAndView("/csa/official/index_official");
		return model;
	}
	
	@RequestMapping("/report_official")////หน้าออกรายงานเจ้าหน้าที่
	public ModelAndView reoff(){
		ModelAndView model = new ModelAndView("/csa/official/report_official");
		return model;
	}
	
	@RequestMapping("/work_official")////หน้างานโคเจ้าหน้าที่
	public ModelAndView woff(){
		ModelAndView model = new ModelAndView("/csa/official/work_official");
		return model;
	}
	
	@RequestMapping("/newfestivity_official")////หน้าเพิ่มงานโคเจ้าหน้าที่
	public ModelAndView newwoff(){
		ModelAndView model = new ModelAndView("/csa/official/newfestivity_official");
		return model;
	}
	
	@RequestMapping("/official_viewcowsh")////หน้ารายชื่อโคประกวด
	public ModelAndView official_viewcowsh(){
		ModelAndView model = new ModelAndView("/csa/official/official_viewcowsh");
		return model;
	}
	
	@RequestMapping("/official_viewcow2")////หน้ารายชื่อโคพัน
	public ModelAndView official_viewcow2(){
		ModelAndView model = new ModelAndView("/csa/official/official_viewcow2");
		return model;
	}
	
	@RequestMapping("/official_viewcow3")////หน้ารายชื่อโคขุน
	public ModelAndView official_viewcow3(){
		ModelAndView model = new ModelAndView("/csa/official/official_viewcow3");
		return model;
	}
	
	@RequestMapping("/official_setlist")////หน้ารายตั้งค่าเจ้าหน้าที่
	public ModelAndView official_setlist(){
		ModelAndView model = new ModelAndView("/csa/official/official_setlist");
		return model;
	}
	
	@RequestMapping("/official_addfes_sh")////หน้าเพิ่มโคประกวดเข้าร่วมงาน
	public ModelAndView official_addfes_sh(){
		ModelAndView model = new ModelAndView("/csa/official/official_addfes_sh");
		return model;
	}
	
	@RequestMapping("/official_addfes_2")////หน้าเพิ่มโคพันเข้าร่วมงาน
	public ModelAndView official_addfes_2(){
		ModelAndView model = new ModelAndView("/csa/official/official_addfes_2");
		return model;
	}
	
	@RequestMapping("/official_addfes_3")////หน้าเพิ่มโคขุนเข้าร่วมงาน
	public ModelAndView official_addfes_3(){
		ModelAndView model = new ModelAndView("/csa/official/official_addfes_3");
		return model;
	}
	
	@RequestMapping("/official_addcow")////หน้าลงทะเบียนโคประกวด
	public ModelAndView official_addcow(){
		ModelAndView model = new ModelAndView("/csa/official/official_addcow");
		return model;
	}
	
	@RequestMapping("/official_addcow2")////หน้าลงทะเบียนโคพัน
	public ModelAndView official_addcow2(){
		ModelAndView model = new ModelAndView("/csa/official/official_addcow2");
		return model;
	}
	
	@RequestMapping("/official_addcow3")////หน้าลงทะเบียนโคขุน
	public ModelAndView official_addcow3(){
		ModelAndView model = new ModelAndView("/csa/official/official_addcow3");
		return model;
	}
	
	@RequestMapping("/official_edit_cowsh")////หน้าแก้ไขโคประกวด
	public ModelAndView official_edit_cowsh(){
		ModelAndView model = new ModelAndView("/csa/official/official_edit_cowsh");
		return model;
	}
	
	@RequestMapping("/official_edit_cow2")////หน้าแก้ไขโคพัน
	public ModelAndView official_edit_cow2(){
		ModelAndView model = new ModelAndView("/csa/official/official_edit_cow2");
		return model;
	}
	
	@RequestMapping("/official_edit_cow3")////หน้าแก้ไขโคขุน
	public ModelAndView official_edit_cow3(){
		ModelAndView model = new ModelAndView("/csa/official/official_edit_cow3");
		return model;
	}
	
}
