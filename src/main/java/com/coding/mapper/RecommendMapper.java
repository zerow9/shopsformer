package com.coding.mapper;

import com.coding.pojo.Recommend;
import org.apache.ibatis.annotations.Param;

public interface RecommendMapper {
    /**
     * 根据推荐表唯一ID删除推荐信息
     * @param recommendId 推荐表唯一ID
     * @return 是否删除成功 非0:成功   0:失败
     * @throws Exception
     */
    public int deleteRecommendByPrimaryKey(Integer recommendId)throws Exception;

    /**
     * 根据推荐表唯一ID组删除推荐信息
     * @param recommendIdArray 推荐表唯一ID组
     * @return 是否删除成功 非0:成功   0:失败
     * @throws Exception
     */
    public int deleteRecommendByPrimaryKeyArray(@Param("recommendIdArray") Integer[] recommendIdArray)throws Exception;

    /**
     * 按需插入推荐表信息
     * @param recommend 封装了推荐信息的 Recommend 类对象
     * @return 是否插入成功  非0:成功  0:失败
     * @throws Exception
     */
    public int insertRecommendSelective(Recommend recommend)throws Exception;

    /**
     * 根据用户唯一ID查推荐表信息
     * @param userUuid 用户唯一ID
     * @return 满足查询条件的推荐信息
     * @throws Exception
     */
    public Recommend selectRecommendByUserUuid(String userUuid)throws  Exception;

    /**
     * 根据推荐表唯一ID查询推荐表信息
     * @param recommendId 推荐表唯一ID
     * @return 满足查询条件的封装了推荐信息的 Recommend 类对象
     * @throws Exception
     */
    public Recommend selectRecommendByPrimaryKey(Integer recommendId)throws Exception;

    /**
     * 根据推荐表唯一ID对推荐信息进行按需更新
     * @param recommend
     * @return 封装了推荐信息的 Recommend 类对象
     * @throws Exception
     */
    public int updateRecommendByPrimaryKeySelective(Recommend recommend)throws Exception;

}