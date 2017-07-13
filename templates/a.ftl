你好,${user}!
----------------------------
测试if语句:
<#if user=="skywp">
    The current user is skywp.
</#if>
----------------------------
<#if random gte 90>
    优秀
<#elseif random gte 80>
    良好
<#elseif random gte 60>
    及格
<#else>
    不及格
</#if>
-----------------------------
测试list语句：
<#list list1 as address >
    ${address.city}
</#list>
-----------------------------
测试宏指令
定义宏：
<#macro  m1>
    aabbcc
</#macro>
调用宏：
<@m1 />
-----------------------------
