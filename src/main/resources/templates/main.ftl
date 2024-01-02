<#import "parts/common.ftl" as c>

<@c.page>
    <div class="form-row">
        <form method="get" action="/main" class="form-line">
            <input type="text" name="filter" class="form-control" value="${filter!}" placeholder="Search by tag">
            <button type="submit" class="btn btn-primary ml-2">Search</button>
        </form>
    </div>

    <#include "parts/messageEdit.ftl" />

<#include "parts/messageList.ftl" />
</@c.page>