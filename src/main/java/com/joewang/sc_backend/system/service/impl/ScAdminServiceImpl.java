package com.joewang.sc_backend.system.service.impl;

import com.joewang.sc_backend.system.domain.ScAdmin;
import com.joewang.sc_backend.system.mapper.ScAdminMapper;
import com.joewang.sc_backend.system.service.IScAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 管理员Service业务层处理
 * 
 * @author 王超浩
 * @date 2026-01-14
 */
@Service
public class ScAdminServiceImpl implements IScAdminService 
{
    @Autowired
    private ScAdminMapper scAdminMapper;

    /**
     * 查询管理员
     * 
     * @param id 管理员主键
     * @return 管理员
     */
    @Override
    public ScAdmin selectScAdminById(Long id)
    {
        return scAdminMapper.selectScAdminById(id);
    }

    /**
     * 查询管理员列表
     * 
     * @param scAdmin 管理员
     * @return 管理员
     */
    @Override
    public List<ScAdmin> selectScAdminList(ScAdmin scAdmin)
    {
        return scAdminMapper.selectScAdminList(scAdmin);
    }

    /**
     * 新增管理员
     * 
     * @param scAdmin 管理员
     * @return 结果
     */
    @Override
    public int insertScAdmin(ScAdmin scAdmin)
    {
        return scAdminMapper.insertScAdmin(scAdmin);
    }

    /**
     * 修改管理员
     * 
     * @param scAdmin 管理员
     * @return 结果
     */
    @Override
    public int updateScAdmin(ScAdmin scAdmin)
    {
        return scAdminMapper.updateScAdmin(scAdmin);
    }

    /**
     * 批量删除管理员
     * 
     * @param ids 需要删除的管理员主键
     * @return 结果
     */
    @Override
    public int deleteScAdminByIds(Long[] ids)
    {
        return scAdminMapper.deleteScAdminByIds(ids);
    }

    /**
     * 删除管理员信息
     * 
     * @param id 管理员主键
     * @return 结果
     */
    @Override
    public int deleteScAdminById(Long id)
    {
        return scAdminMapper.deleteScAdminById(id);
    }
}
