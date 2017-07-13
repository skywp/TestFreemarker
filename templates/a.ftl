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
测试include指令:
<#include "included.txt"/><br/>
-----------------------------
定义带参数的宏指令:
<#macro m2 a b c >
    ${a}--${b}--${c}
</#macro>
------------------------------
<@m2 a="skywp" b="yagaowp" c="wp"/>
------------------------------------
测试nested指令：
<#macro border>
    <table border="4" cellspacing="=0" cellpadding="4">
        <tr>
            <td>
                <@nested></@nested>
            </td>
        </tr>
    </table>
</#macro>
--------------------------
测试命名空间:
<#import "b.ftl" as bb/>
<@bb.copyright date="2011-2017"/>
${bb.mail}
<#assign mail="my@gmail.com"/>
${mail}
----------------------------
