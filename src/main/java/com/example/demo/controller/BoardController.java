package com.example.demo.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.annotation.MultipartConfig;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.model.BoardModel;
import com.example.demo.service.BoardService;

@Controller
@RequestMapping("/test/")
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	@RequestMapping("list1.do")
	public String list1() {
		return "test/list1";
	}
	
	/*
	 * @RequestMapping("hello.do") public ModelAndView hello(ModelAndView mav) {
	 * return mav; }
	 */
	
	
	@RequestMapping("ajax/ListAjax.do")
	@ResponseBody
	public Map<String,Object> ListAjax(BoardModel boardModel)throws Exception {
		
		Map<String, Object> rtnMap = new HashMap<String, Object>();
		List<BoardModel> list = boardService.printBoard();
		rtnMap.put("data", list);
		return rtnMap;
	}
	
	@RequestMapping("/Detail.do")
	public ModelAndView Detail(ModelAndView mav,BoardModel boardModel)throws Exception {
		BoardModel result = boardService.Detail(boardModel);
		mav.addObject("list",result);
		return mav;
	}
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String register(ModelAndView mav, BoardModel boardModel, RedirectAttributes rttr, @RequestPart MultipartFile files) throws Exception {
		
		String sourceFileName = files.getOriginalFilename(); 
		System.out.println(sourceFileName);
        String sourceFileNameExtension = FilenameUtils.getExtension(sourceFileName).toLowerCase(); 
        File destinationFile;
        String destinationFileName;
        String fileUrl = "C:\\eclipse\\eclipse-workspace\\testproject\\src\\main\\resources\\static\\upload\\";
 
        do { 
            destinationFileName = RandomStringUtils.randomAlphanumeric(32) + "." + sourceFileNameExtension; 
            destinationFile = new File(fileUrl + destinationFileName); 
            System.out.println("file경로"+destinationFile);
            boardModel.setFileUrl(fileUrl+destinationFile);
            boardModel.setFileOriName(sourceFileName);
            boardModel.setFileName(destinationFileName);
        } while (destinationFile.exists());
        
        destinationFile.getParentFile().mkdirs(); 
        files.transferTo(destinationFile);
        
		boardService.register(boardModel);
		rttr.addFlashAttribute("msg", "SUCCESS");
		return "redirect:/test/list1.do";
	}
	
	@GetMapping("/register")
	public void register() {
	}
	
	@RequestMapping("/modify")
	public ModelAndView modify(ModelAndView mav, @ModelAttribute("boardModel")BoardModel boardModel)throws Exception {
		BoardModel result = boardService.read(boardModel);
		mav.addObject("list", result);
		return mav;
	}
	
	@RequestMapping(value="/modify", method=RequestMethod.POST)
	public String modify(ModelAndView mav, BoardModel boardModel, RedirectAttributes rttr) throws Exception {
		boardService.modify(boardModel);
		rttr.addFlashAttribute("msg", "SUCCESS");
		return "redirect:/test/list1.do";
	}
	
	@RequestMapping(value="/delete")
	public String delete(@RequestParam("id") int id, RedirectAttributes rttr)throws Exception {
		boardService.delete(id);
		rttr.addFlashAttribute("msg", "SUCCESS");
		return "redirect:/test/list1.do";
	}
	

}
