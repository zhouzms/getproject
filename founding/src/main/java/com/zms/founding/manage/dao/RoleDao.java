package com.zms.founding.manage.dao;

import com.zms.founding.bean.Role;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface RoleDao {
    /**
     *
     * @return 角色总的数量
     */
    int queryroleCount();

    /**
     *
     * @return 角色中每项
     */
   List<Role> queryRoleList(@Param(value = "pagestart") int pagestart,@Param(value = "pagesize") int pagesize);

    /**
     *
     * @param map 只需要模糊查询的serchtext的值
     * @return
     */
   int queryFormValueCount(Map map);

    /**
     *
     * @param map pageno,pagesize,seachtext
     * @return 返回模糊查询加分页的值
     */
   List<Role> queryFormValueList(Map map);
}
