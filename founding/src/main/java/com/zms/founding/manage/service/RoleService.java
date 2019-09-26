package com.zms.founding.manage.service;

import com.zms.founding.common.Page;

import java.util.Map;

public interface RoleService {
    /**
     *
     * @return 返回查询的数据
     */
    Page queryRoleList(int pageno, int pagesize);

    /**
     *
     * @param map pageno,pagesize,seachtext
     * @return 返回模糊查询的值
     */
   Page queryFormValue(Map map);
}
