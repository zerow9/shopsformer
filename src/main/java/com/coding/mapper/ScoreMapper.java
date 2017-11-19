package com.coding.mapper;

import com.coding.paging.PagingCustomScore;
import com.coding.pojo.Score;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ScoreMapper {

    /**
     * 根据主键信息查询积分明细信息
     * @param scoreId
     * @return
     * @throws Exception
     */
    public Score selectScoreByPrimaryKey(Integer scoreId)throws Exception;

    /**
     * 根据主键删除积分明细
     * @param scoreId
     * @return
     * @throws Exception
     */
    public int deleteScoreByPrimaryKey(Integer scoreId)throws Exception;

    /**
     * 根据主键ID数组批量删除积分明细
     * @param scoreIdArrary
     * @return
     * @throws Exception
     */
    public int deleteScoreByPrimaryKeyArray(@Param("scoreIdArrary") Integer[] scoreIdArrary)throws Exception;

    /**
     * 按需插入积分明细
     * @param score
     * @return
     * @throws Exception
     */
    public int insertScoreSelective(Score score)throws Exception;

    /**
     * 按需修改积分明细
     * @param score
     * @return
     * @throws Exception
     */
    public int updateScoreByPrimaryKeySelective(Score score)throws Exception;

    /**
     * 积分明细表综合查询
     * 实现:主键ID，用户ID，积分详细，积分明细创建时间范围
     * @param pagingCustomScore
     * @return
     * @throws Exception
     */
    public List<Score> selectScore (PagingCustomScore pagingCustomScore)throws Exception;

    /**
     * 用于查找当前用户最近的一次积分明细信息
     * @param score
     * @return
     * @throws Exception
     */
    public List<Score> selectScoreRecentChange (Score score)throws Exception;
    /**
     * 查询积分明细总数
     * @return
     * @throws Exception
     */
    public int selectScoreCount()throws Exception;

    /**
     * 获取 Score 表的所有字段名
     * @return Score 表中所有的字段名
     * @throws Exception
     */
    public String selectScoreTableColumns()throws Exception;

}