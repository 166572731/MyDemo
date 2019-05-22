var pk_name = sessionStorage.getItem('pk_name');
var pk_department = sessionStorage.getItem('pk_department');
layui.use(['layer', 'form'], function () {
    var layer = layui.layer, form = layui.form;

    $.post("../../loadMenus.do", function (data) {
        var menushtml = "";
        var onlymenus = '<div class="col-sm-6">\n' +
            '        <section class="panel">\n' +
            '            <header class="panel-heading">\n' +
            '                单项菜单汇总\n' +
            '                <span class="tools pull-right">\n' +
            '                    <a href="javascript:;" class="fa fa-chevron-down"></a>\n' +
            '                    <a href="javascript:;" class="fa fa-times"></a>\n' +
            '                </span>\n' +
            '            </header>\n' +
            '            <div class="panel-body">\n' +
            '<form class="layui-form">\n' +
            '                <table class="table  table-hover general-table text-center">\n' +
            '                   <thead>\n' +
            '                        <tr>\n' +
            '                            <td style="width:10%"> 编号</td>\n' +
            '                            <td style="width:40%"> 菜单名称</td>\n' +
            '                            <td style="width: 50%"> 权限</td>\n' +
            '                        </tr>\n' +
            '                    </thead>';
        $.each(data.main, function (index, main) {
            var childhtml = "";
            $.each(data.child, function (index, child) {
                if (main.LevelID == child.ParentID) {
                    childhtml += '' +
                        '                    <tbody>\n' +
                        '                        <tr>\n' +
                        '                            <td class="pk_Menu"><a href="#">' + child.pk_Menu + '</a></td>\n' +
                        '                            <td>' + child.Name_CHS + '</td>\n' +
                        '                            <td class="td">\n' +
                        '<div style="margin-top: -10px">'+
                        '<input type="checkbox" lay-filter="add' + child.pk_Menu + '" value="role:add" name="' + child.pk_Menu + '" lay-skin="switch" lay-text="增|增">\n' +
                        '<input type="checkbox" lay-filter="delete' + child.pk_Menu + '" value="role:delete" name="' + child.pk_Menu + '" lay-skin="switch" lay-text="删|删">\n' +
                        '<input type="checkbox" lay-filter="update' + child.pk_Menu + '" value="role:update" name="' + child.pk_Menu + '" lay-skin="switch" lay-text="改|改">\n' +
                        '<input type="checkbox" lay-filter="query' + child.pk_Menu + '" value="role:query" name="' + child.pk_Menu + '" lay-skin="switch" lay-text="查|查">\n' +
                        '</div>'+
                        '                            </td>\n' +
                        '                        </tr>\n' +
                        '                    </tbody>';
                }
            })
            if (childhtml == "") {
                onlymenus += '               <tbody>\n' +
                        '                        <tr>\n' +
                        '                            <td class="pk_Menu"><a href="#">' + main.pk_Menu + '</a></td>\n' +
                        '                            <td>' + main.Name_CHS + '</td>\n' +
                        '                            <td class="td">\n' +
                        '<div style="margin-top: -10px">'+
                        '<input type="checkbox" lay-filter="add' + main.pk_Menu + '" value="role:add" name="' + main.pk_Menu + '" lay-skin="switch" lay-text="增|增">\n' +
                        '<input type="checkbox" lay-filter="delete' + main.pk_Menu + '" value="role:delete" name="' + main.pk_Menu + '" lay-skin="switch" lay-text="删|删">\n' +
                        '<input type="checkbox" lay-filter="update' + main.pk_Menu + '" value="role:update" name="' + main.pk_Menu + '" lay-skin="switch" lay-text="改|改">\n' +
                        '<input type="checkbox" lay-filter="query' + main.pk_Menu + '" value="role:query" name="' + main.pk_Menu + '" lay-skin="switch" lay-text="查|查">\n' +
                        '</div>' +
                        '                            </td>\n' +
                        '                        </tr>\n' +
                        '                    </tbody>';
            } else {
                menushtml += '<div class="col-sm-6">\n' +
                    '        <section class="panel">\n' +
                    '            <header class="panel-heading">\n' +
                    '                ' + main.Name_CHS + '\n' +
                    '                <span class="tools pull-right">\n' +
                    '                    <a href="javascript:;" class="fa fa-chevron-down"></a>\n' +
                    '                    <a href="javascript:;" class="fa fa-times"></a>\n' +
                    '                </span>\n' +
                    '            </header>\n' +
                    '            <div class="panel-body">\n' +
                    '<form class="layui-form">\n' +
                    '                <table class="table  table-hover general-table text-center">\n' +
                    '                   <thead>\n' +
                    '                        <tr>\n' +
                    '                            <td style="width:10%"> 编号</td>\n' +
                    '                            <td style="width:40%"> 子菜单名称</td>\n' +
                    '                            <td style="width: 50%"> 权限</td>\n' +
                    '                        </tr>\n' +
                    '                    </thead>\n' + childhtml;
            }
            menushtml += '                </table>\n' +
                '</form>' +
                '            </div>\n' +
                '        </section>\n' +
                '    </div>';

        })
        onlymenus += '                </table>\n' +
            '            </div>\n' +
            '        </section>\n' +
            '    </div>';
        $(".menus_list").append(menushtml);
        $(".menus_list").append(onlymenus);
        $.post("../../loadRoleName.do", {"pkname": pk_name, "pkdepartment": pk_department}, function (event) {
            $.each(event.roles, function (index, role) {
                var a = role.role_name.split(',');
                for (var i = 0; i < a.length; i++) {
                    $("input[name=" + role.fk_Menu + "]").each(function () {
                        if (a[i] == $(this).val()) {
                            $(this).attr("checked", "checked");
                        }
                    })
                }
            });
            form.render();
        }, "json");
        $(".pk_Menu").each(function () {
            var pk_menu = $(this).text();
            $("input[name=" + pk_menu + "]").each(function () {
                var filter = $(this).attr("lay-filter");
                form.on('switch(' + filter + ')', function (data) {
                    console.log(data.elem.checked); //开关是否开启，true或者false
                    console.log(data.value); //开关value值，也可以通过data.elem.value得到
                    var code=0;
                    if (data.elem.checked) {
                        code=1;
                    }
                    $.post("../../saverole.do", {
                        "pk_name": pk_name,
                        "pk_department": pk_department,
                        "pk_menu": pk_menu,
                        "role_name":data.value,
                        "code":code
                    }, function (data) {
                        if (data > 0) {
                            parent.layer.msg("权限修改成功！");
                        } else {
                            parent.layer.msg("权限修改失败！");
                        }
                    }, "text")
                });
            })
        });
        $.getScript("../../js/scripts.js");  //重新载入js文件
    }, "json");
});