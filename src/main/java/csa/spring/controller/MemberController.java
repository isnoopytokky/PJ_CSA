package csa.spring.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import csa.spring.model.CattleDetails;
import csa.spring.model.Festivity;
import csa.spring.model.Member;
import csa.spring.model.StatusNo;
import csa.spring.model.Typecow;
import csa.spring.service.CattleDetailsService;
import csa.spring.service.FestivityService;
import csa.spring.service.TypeCowService;


@Controller
public class MemberController {

	@Autowired
	FestivityService festivityService;
	
	@Autowired
	CattleDetailsService cattleDetailService;
	
	@Autowired
	TypeCowService typeCowService;

	/*   */
	@RequestMapping("/cow_member")////เธซเธ�เน�เธฒเน�เธชเธ”เธ�เน�เธ�
	public ModelAndView cm(HttpSession session,Map<String, Object> map){
		
		
		Integer userid = (Integer) session.getAttribute("userid");
		if(userid == null)
			return new ModelAndView("redirect:index");
		else
		{
		
			CattleDetails cattledetail = new CattleDetails();
			map.put("cattledetail", cattledetail);
			map.put("cowlist1",cattleDetailService.getCattleDetailByType(1,userid));
			map.put("cowlist2",cattleDetailService.getCattleDetailByType(2,userid));
			map.put("cowlist3",cattleDetailService.getCattleDetailByType(3,userid));
			
			
			Map<String,String> genList = new HashMap<String, String>();
			Map<String,String> sexList = new HashMap<String, String>();	
			
			List statusNoResult;
	//		statusNoResult = statusnoService.getAllStatusNo();		
	//		for(int i = 0;i<statusNoResult.size();i++)
	//		{	
	//			StatusNo statusNo =  (StatusNo) statusNoResult.get(i);
	//			statusNoList.put(statusNo.getIdstatusNo().toString(), statusNo.getStatusName());
	//		}
			genList.put("","");
			genList.put("วากิว","วากิว");
			genList.put("กำแพงแสน","กำแพงแสน");
			
			sexList.put("ผู้","ผู้");
			sexList.put("เมีย","เมีย");
			
			map.put("genList",genList);
			map.put("sexList",sexList);
			
			ModelAndView model = new ModelAndView("/csa/member/cow_member");
			return model;
		}
	}
	
	@RequestMapping(value = "/api/getCow", method = RequestMethod.POST) 
	@ResponseBody  
	public  Map<String, ? extends Object> getCow(@RequestParam("id") Integer id) 
	{
		Map<String,Object> model = new HashMap<String, Object>();
		
		CattleDetails cattledetailResult=new CattleDetails();
		CattleDetails cattledetail=new CattleDetails();
		cattledetail = cattleDetailService.getCattleDetail(id);
			
		cattledetailResult.setCName(cattledetail.getCName());
		cattledetailResult.setCBirth(cattledetail.getCBirth());
		cattledetailResult.setCAge(cattledetail.getCAge());
		cattledetailResult.setCSex(cattledetail.getCSex());
		cattledetailResult.setCColor(cattledetail.getCColor());
		cattledetailResult.setCGen(cattledetail.getCGen());
		cattledetailResult.setCPic(cattledetail.getCPic());
		cattledetailResult.setFather(cattledetail.getFather());
		cattledetailResult.setMother(cattledetail.getMother());
		cattledetailResult.setDevoloper(cattledetail.getDevoloper());
		cattledetailResult.setMemberId(cattledetail.getMemberId());
		 

		model.put("cattledetail", cattledetailResult);	
		
        return model;  
	}
	
	@RequestMapping(value = "/api/deleteCow", method = RequestMethod.POST) 
	@ResponseBody  
	public  String deleteCow(@RequestParam("id") Integer id) 
	{	
		cattleDetailService.delete(id);		
        return "success";  
	}
	
	@RequestMapping(value="/api/updateCow",method=RequestMethod.POST)
	@ResponseBody
	public String updateCow(HttpSession session,@ModelAttribute CattleDetails cattledetail,@RequestParam("flg") Integer flg) {	
		Integer userid = (Integer) session.getAttribute("userid");		
		cattledetail.setTypecow(typeCowService.getTypecow(flg));	
		cattledetail.setMemberId(userid);
		cattleDetailService.edit(cattledetail);			
		return "success";
	}
	
	@RequestMapping(value="/api/addCow",method=RequestMethod.POST)
	@ResponseBody
	public String addCow(HttpSession session,@ModelAttribute CattleDetails cattledetail,@RequestParam("flg") Integer flg) {	
		Integer userid = (Integer) session.getAttribute("userid");
		cattledetail.setTypecow(typeCowService.getTypecow(flg));
		cattledetail.setMemberId(userid);
		cattleDetailService.add(cattledetail);			
		return "success";
	}
	
	
	
	@RequestMapping("/mem_addcow")////เธซเธ�เน�เธฒเน€เธ�เธดเน�เธกเน�เธ�เธ�เธฃเธฐเธ�เธงเธ”
	public ModelAndView mem_addcow(Map<String, Object> map){
		CattleDetails cattledetail = new CattleDetails();
		map.put("cattledetail", cattledetail);
		
		
		Map<String,String> genList = new HashMap<String, String>();
		Map<String,String> sexList = new HashMap<String, String>();	
		
		genList.put("","");
		genList.put("วากิว","วากิว");
		genList.put("กำแพงแสน","กำแพงแสน");
		
		sexList.put("ผู้","ผู้");
		sexList.put("เมีย","เมีย");
		
		map.put("genList",genList);
		map.put("sexList",sexList);
		
		ModelAndView model = new ModelAndView("/csa/member/mem_addcow");
		return model;
	}
	
	@RequestMapping("/mem_addcow2")////เธซเธ�เน�เธฒเน€เธ�เธดเน�เธกเน�เธ�เธ�เธฑเธ�
	public ModelAndView mem_addcow2(Map<String, Object> map){
		CattleDetails cattledetail = new CattleDetails();
		map.put("cattledetail", cattledetail);
		ModelAndView model = new ModelAndView("/csa/member/mem_addcow2");
		return model;
	}
	
	@RequestMapping("/mem_addcow3")////เธซเธ�เน�เธฒเน€เธ�เธดเน�เธกเน�เธ�เธ�เธธเธ�
	public ModelAndView mem_addcow3(Map<String, Object> map){
		CattleDetails cattledetail = new CattleDetails();
		map.put("cattledetail", cattledetail);
		ModelAndView model = new ModelAndView("/csa/member/mem_addcow3");
		return model;
	}
	/*   */
	
	
	@RequestMapping("/festivity_mem")////เธซเธ�เน�เธฒเธ�เธฒเธ�เน�เธ�member
	public ModelAndView festivity(Map<String, Object> map) {
		Festivity festivity = new Festivity();//เธชเน�เธ�เธ�เน�เธฒเน�เธกเน€เธ”เธฅเน�เธ�
		map.put("festivity", festivity);
		map.put("festivitylist",festivityService.getAdmin1());
		
		ModelAndView model = new ModelAndView("/csa/member/festivity_mem");
		return model;
	}
	
		
//new
	@RequestMapping("/index_member")////เธซเธ�เน�เธฒเน�เธฃเธ�เธชเธกเธฒเธ�เธดเธ�
	public ModelAndView inmem(){
		ModelAndView model = new ModelAndView("/csa/member/index_member");
		return model;
	}
		
	
	
	@RequestMapping("/mem_addfes_sh")////เธซเธ�เน�เธฒเธ�เธณเน�เธ�เธ�เธฃเธฐเธ�เธงเธ”เน€เธ�เน�เธฒเธฃเน�เธงเธกเธ�เธฒเธ�
	public ModelAndView mem_addfes_sh(){
		ModelAndView model = new ModelAndView("/csa/member/mem_addfes_sh");
		return model;
	}
	
	@RequestMapping("/mem_addfes_2")////เธซเธ�เน�เธฒเธ�เธณเน�เธ�เธ�เธฑเธ�เน€เธ�เน�เธฒเธฃเน�เธงเธกเธ�เธฒเธ�
	public ModelAndView mem_addfes_2(){
		ModelAndView model = new ModelAndView("/csa/member/mem_addfes_2");
		return model;
	}
	
	@RequestMapping("/mem_addfes_3")////เธซเธ�เน�เธฒเธ�เธณเน�เธ�เธ�เธธเธ�เน€เธ�เน�เธฒเธฃเน�เธงเธกเธ�เธฒเธ�
	public ModelAndView mem_addfes_3(){
		ModelAndView model = new ModelAndView("/csa/member/mem_addfes_3");
		return model;
	}
	
	@RequestMapping("/mem_edit_cowsh")////เธซเธ�เน�เธฒเน�เธ�เน�เน�เธ�เน�เธ�เธ�เธฃเธฐเธ�เธงเธ”
	public ModelAndView mem_edit_cowsh(){
		ModelAndView model = new ModelAndView("/csa/member/mem_edit_cowsh");
		return model;
	}
	
	@RequestMapping("/mem_edit_cow2")////เธซเธ�เน�เธฒเน�เธ�เน�เน�เธ�เน�เธ�เธ�เธฑเธ�
	public ModelAndView mem_edit_cow2(){
		ModelAndView model = new ModelAndView("/csa/member/mem_edit_cow2");
		return model;
	}
	
	@RequestMapping("/mem_edit_cow3")////เธซเธ�เน�เธฒเน�เธ�เน�เน�เธ�เน�เธ�เธ�เธฑเธ�
	public ModelAndView mem_edit_cow3(){
		ModelAndView model = new ModelAndView("/csa/member/mem_edit_cow3");
		return model;
	}
	
	 
}
