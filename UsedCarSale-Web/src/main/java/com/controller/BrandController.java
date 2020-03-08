package com.controller;

import com.dao.BrandMapper;
import com.pojo.Carbrand;
import com.pojo.Employee;
import common.Assist;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import service.CarbrandService;
import service.EmployeeService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/brand")
public class BrandController {
    @Autowired
    EmployeeService employeeService;
    @Autowired
    BrandMapper brandMapper;
    @Autowired
    CarbrandService carbrandService;

    /**
     * 品牌信息
     *
     * @param model
     * @return
     */
    @RequestMapping("/list")
    public String brandInfo(Model model, String empId) {
        Employee employeeById = employeeService.selectEmployeeById(Integer.parseInt(empId));
        model.addAttribute("emp", employeeById);
        Assist assist = new Assist();
        List<Carbrand> carbrandList = carbrandService.selectCarbrand(assist);
        model.addAttribute("carbrandList", carbrandList);
        return "brandInfo";
    }

    @RequestMapping("/insertCarBrand")
    public String insertCarBrand(Carbrand carbrand, String empId) {
        carbrand.setBrandNum(((int) (Math.random() * 10)) + "");
        carbrandService.insertCarbrand(carbrand);
        return "redirect:/brand/list.action?empId=" + empId;
    }

    @RequestMapping("/delCarBrand")
    @ResponseBody
    public boolean delCarBrand(@RequestParam int id) {
        try {
            carbrandService.deleteCarbrandById(id);
        } catch (Exception e) {
            return false;
        }
        return true;
    }

    @RequestMapping("/existCarBrandName")
    @ResponseBody
    public Map<String, String> existCarBrandName(@RequestParam String name) {
        Map<String, String> map = new HashMap<String, String>();
        Carbrand carbrand = new Carbrand();
        carbrand.setBrandName(name);
        try {
            if (carbrandService.selectCarbrandByObj(carbrand) != null) {
                map.put("exist", "true");
            } else {
                map.put("exist", "false");
            }
        } catch (Exception e) {
            map.put("exist", "true");
        }
        return map;
    }

    @RequestMapping("/updateBrand")
    public String updateBrand(@RequestParam int id, @RequestParam String name, @RequestParam String empId) {
        Carbrand carbrand = new Carbrand();
        carbrand.setBrandId(id);
        carbrand.setBrandName(name);
        carbrandService.updateNonEmptyCarbrandById(carbrand);
        return "redirect:/brand/list.action?empId=" + empId;
    }

    /**
     * 热卖品牌
     *
     * @param model
     * @return
     */
    @RequestMapping("/hot")
    public String brandHot(Model model, String empId) {
        Employee employeeById = employeeService.selectEmployeeById(Integer.parseInt(empId));
        model.addAttribute("emp", employeeById);

        model.addAttribute("hotList", brandMapper.selectHotList());

        return "brandHot";
    }
}
