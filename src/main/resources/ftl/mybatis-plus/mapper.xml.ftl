<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE mapper PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN" "http://mybatis.org/dtd/mybatis-3-mapper.dtd">

<mapper namespace="${package.Entity}Mapper">

    <!-- 通用查询结果列 -->
    <sql id="Base_Column_List">
        ${table.fieldNames}
    </sql>

    <!-- 通用查询映射结果 -->
    <resultMap id="BaseResultMap" type="${entity}">
        <#list table.fields as field>
            <result column="${field.columnName}" property="${field.propertyName}" />
        </#list>
    </resultMap>

    <!-- 查询 -->
    <select id="selectById" resultMap="BaseResultMap">
        SELECT
        <include refid="Base_Column_List" />
        FROM ${table.name} WHERE id = <#noparse>#{id}</#noparse>
    </select>

    <!-- 插入 -->
    <insert id="insert">
        INSERT INTO ${table.name} (${table.fieldNames})
        VALUES (
        <#list table.fields as field>
            <#if field_index != 0>,</#if><#noparse>#{</#noparse>${field.propertyName}<#noparse>}</#noparse>
        </#list>
        )
    </insert>

    <!-- 更新 -->
    <update id="updateById">
        UPDATE ${table.name} a
        SET <#list table.fields as field>
            <if test="${field.propertyName} != null and ${field.propertyName} != ''">
                <#if field_index != 0>,</#if>a.${field.name}= <#noparse>#{</#noparse>${field.propertyName}<#noparse>}</#noparse>
            </if>
        </#list>
        WHERE id =  <#noparse>#{id}</#noparse>
    </update>

    <!-- 删除 -->
    <delete id="deleteById">
        DELETE FROM ${table.name} WHERE id = <#noparse>#{id}</#noparse>
    </delete>

</mapper>
