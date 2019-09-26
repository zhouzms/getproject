package com.zms.founding.manage.serviceImpl;

import com.zms.founding.bean.Role;
import com.zms.founding.common.Page;
import com.zms.founding.manage.dao.RoleDao;
import com.zms.founding.manage.service.RoleService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service
public class RoleServiceImpl implements RoleService {
    /**
     * 所有的dao层的接口对象
     */

    @Resource
    private RoleDao roleDao;
    @Override
    public Page queryRoleList(int pageno, int pagesize) {
        //返会总的数据
        int pagestart=(pageno-1)*pagesize;
        int count = roleDao.queryroleCount();
        System.out.println(count);
        //返回记录
        List<Role> list = roleDao.queryRoleList(pagestart, pagesize);
        //封装page返回到controller中
        Page<Role> page=new Page<Role>();
        page.setCount(count);
        page.setPageno(pageno);
        page.setPagesize(pagesize);
        page.setList(list);

        return page;
    }

    @Override
    public Page queryFormValue(Map map) {
        //返回查询的数量
        int count = roleDao.queryFormValueCount(map);
        //重新封装map
        int pageno=(int)map.get("pageno");
        int pagesize=(int)map.get("pagesize");
        int pagestart=(pageno-1)*pagesize;
        map.put("pagestart",pagestart);
        //返回模糊查询结果
        List<Role> roleList = roleDao.queryFormValueList(map);
        Page page=new Page();
        page.setList(roleList);
        page.setPagesize(pagesize);
        page.setPageno(pageno);
        page.setCount(count);
        return page;
    }
}
