package com.joewang.sc_backend.web.service;


import com.joewang.sc_backend.web.domain.ScAdmin;

import java.util.List;

/**
 * 管理员Service接口
 * 
 * @author 王超浩
 * @date 2026-01-14
 */
public interface IScAdminService 
{
    /**
     * 查询管理员
     * 
     * @param id 管理员主键
     * @return 管理员
     */
    public ScAdmin selectScAdminById(Long id);

    /**
     * 查询管理员列表
     * 
     * @param scAdmin 管理员
     * @return 管理员集合
     */
    public List<ScAdmin> selectScAdminList(ScAdmin scAdmin);

    /**
     * 新增管理员
     * 
     * @param scAdmin 管理员
     * @return 结果
     */
    public int insertScAdmin(ScAdmin scAdmin);

    /**
     * 修改管理员
     * 
     * @param scAdmin 管理员
     * @return 结果
     */
    public int updateScAdmin(ScAdmin scAdmin);

    /**
     * 批量删除管理员
     * 
     * @param ids 需要删除的管理员主键集合
     * @return 结果
     */
    public int deleteScAdminByIds(Long[] ids);

    /**
     * 删除管理员信息
     * 
     * @param id 管理员主键
     * @return 结果
     */
    public int deleteScAdminById(Long id);
}
