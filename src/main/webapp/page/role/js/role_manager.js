layui.use(['layer'],function () {
    var layer=layui.layer;
    $.post("../../loadRoleList.do", function (data) {
        var rolehtml = '';
        $.each(data.department, function (index, department) {
            rolehtml += '<div class="col-md-4">\n' +
                '            <div class="panel">\n' +
                '                <header class="panel-heading text-center">\n' +
                '                    ' + department.DepartmentName + '\n' +
                '                        <button class="btn btn-success btn-xs pull-left addrole" id="'+department.pk_Department+'"><i\n' +
                '                                class="fa fa-plus"></i> 新增\n' +
                '                        </button>\n' +
                '                    <span class="tools pull-right">\n' +
                '                    <a href="javascript:;" class="fa fa-chevron-down"></a>\n' +
                '                    <a href="javascript:;" class="fa fa-times"></a>\n' +
                '                    </span>\n' +
                '                </header>\n'
            var roletr = '';
            $.each(data.role, function (index, role) {
                if (department.pk_Department == role.pk_Department) {
                    roletr += '<tr>\n' +
                        '            <td>' + role.RoleName_CHS + '</td>\n' +
                        '            <td>\n' +
                        '               <button class="btn btn-primary btn-xs settingRole" rolename="' + role.RoleName_CHS + '" departmentname="' + department.DepartmentName + '" department="'+role.pk_Department+'" id="'+role.pk_Name+'"><i\n' +
                        '                  class="fa fa-cogs"></i> 权限\n' +
                        '               </button>\n' +
                        '               <button class="btn btn-info btn-xs updaterole" name="'+role.RoleName_CHS+'" id="'+role.pk_Name+'"><i\n' +
                        '                  class="fa fa-edit"></i> 修改\n' +
                        '               </button>\n' +
                        '               <button class="btn btn-danger btn-xs deleterole" id="'+role.pk_Name+'"><i\n' +
                        '                   class="fa fa-times"></i> 删除\n' +
                        '               </button>\n' +
                        '            </td>\n' +
                        '         </tr>\n'
                }
            })
            if (roletr == '') {
                rolehtml += '<div class="panel-body text-center">\n' +
                    '                    <table class="table table-hover">\n' +
                    '<tr colspan="2"><b>暂无权限角色</b></tr>'
            } else {
                rolehtml += '<div class="panel-body text-center">\n' +
                    '                    <table class="table table-hover">\n' +
                    '                        <tr>\n' +
                    '                            <td style="width: 40%"><b>权限名称</b></td>\n' +
                    '                            <td style="width: 60%"><b>操作</b></td>\n' +
                    '                        </tr>' + roletr
            }
            rolehtml += '</table>\n' +
                '                </div>\n' +
                '            </div>\n' +
                '        </div>'
        })
        $("#role_list").append(rolehtml);
        $(".addrole").each(function () {
            $(this).click(function () {
                $(".modal-title").text("新增权限角色");
                $("#changeID").val($(this).attr("id"));
                $('#myModal').modal('show');
            })
        })
        $(".updaterole").each(function () {
            $(this).click(function () {
                var a=$(this).attr("id");
                var b=$(this).attr("name");
                $(".modal-title").text("修改权限角色");
                $("#changeID").val(a);
                $("input[name='roleName']").val(b);
                $('#myModal').modal('show');
            })
        })
        $(".deleterole").each(function () {
            $(this).click(function () {
                var pkName=$(this).attr("id");
                layer.confirm('确认删除此权限角色？', {
                    btn: ['确认', '取消'],
                    icon:3
                }, function(index, layero){
                    layer.close(index);
                    $.post("../../deleteDepartRole.do",{pkName:pkName},function (data) {
                        if(data>0){
                            layer.msg("成功删除权限角色");
                            location.reload();
                        }else{
                            layer.msg("删除权限角色失败,可能已存在正在使用该角色用户");

                        }
                    },"text");
                });
            })
        })
        //设置权限
        $(".settingRole").each(function () {
            $(this).click(function () {
                var pk_name=$(this).attr("id");
                var pk_department=$(this).attr("department");
                var dename=$(this).attr("departmentname");
                var roname=$(this).attr("rolename");
                sessionStorage.setItem('pk_name', pk_name);
                sessionStorage.setItem('pk_department', pk_department);
                layer.open({
                    area:["100%","100%"],
                    title:false,
                    type: 2,
                    closeBtn: 0,
                    content: 'settingrole.jsp',
                    id: "role",
                    success: function (layero, index) {
                        //var body = layer.getChildFrame('body', index);
                        //var iframeWin = window[layero.find('iframe')[0]['name']]; //得到iframe页的窗口对象，执行iframe页的方法：iframeWin.method();
                        top.window.parent.childPagechange(dename,roname);
                    }
                });
            });
        })
        $.getScript("../../js/scripts.js");
    }, "json");
    $(".bs_submit").click(function () {
        if($(".modal-title").text()=="修改权限角色"){
            $.post("../../updateDepartRole.do",$("form").serialize(),function (data) {
                $('#myModal').modal('hide');
                if(data>0){
                    layer.msg("成功修改权限角色");
                    location.reload();
                }else{
                    layer.msg("修改权限角色失败");
                }
            },"text");
            return false;
        };
        $.post("../../addDepartRole.do",$("form").serialize(),function (data) {
            $('#myModal').modal('hide');
            if(data>0){
                layer.msg("成功添加权限角色");
                location.reload();
            }else{
                layer.msg("添加权限角色失败");
            }
        },"text");
    });
})