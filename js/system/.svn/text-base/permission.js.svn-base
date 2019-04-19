/**重新加载权限*/
$(function(){
	$(".btn_load").click(function(){
		var url = $(this).data("url");
		$.dialog({
			title:"温馨提示",
			content:"亲,重新加载权限可能需要耗费很长的时间,你确定加载吗?",
			icon:"face-smile",
			cancel:true,
			ok:function(){
				//向后台发送Ajax请求
				var dialog =  $.dialog();//初始化对话框
				$.get(url,function(){
					dialog.title("温馨提示").content("权限加载成功!").button({
						name:"确定",
						callback:function(){
							window.location.reload();
						}
					});
				});
			}
		});
	});
});