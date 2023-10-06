/**
 * 
 */
console.log("Reply Module.....");

var reviewReplyService = (function() {

	function add(reply, callback, errorfn) {
		console.log("reply........");
		
		$.ajax({
			type : 'post',
			url : '/replies/new',
			data : JSON.stringify(reply),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
				if(callback) {
					callback(result);
				}
			},
			fail : function(xhr, status, err) {
				if(errorfn) {
					errorfn(err);
				}
			}
		})
	}
	
	function getList(param, callback, errorfn) {
		var r_id = param.r_id;
		var page = param.page || 1;
		

			$.getJSON("/replies/page/" + r_id + "/" + page + ".json", function(data){
    if(callback) {
        var replyCount = parseInt(data.replyCount);
        var list = data.list;
        callback(replyCount, list);
                   
    }
})
.fail(function(event, jqxhr, exception) {
       
    if (jqxhr.status == 404) {
        alert("error occurred ");
    }
})
.fail(function(xhr, status, err) {
     
    if(errorfn){
        errorfn();
    }
});
	}
	
	function remove(r_r_id, callback, errorfn) {
		$.ajax({
			type : 'delete',
			url : '/replies/' + r_r_id,
			success : function(deleteResult, status, xhr) {
				if(callback) {
					callback(deleteResult);
				}
			},
			fail : function(xhr, status, err) {
				if(errorfn) {
					errorfn(err);
				}
			}
		});	
	}
	
	function update(reply, callback, errorfn) {
	
		console.log("RNO: " + reply.r_r_id);
		
		$.ajax({
			type : 'put',
			url : '/replies/' + reply.r_r_id,
			data : JSON.stringify(reply),
			contentType : "application/json; charset=utf-8",
			success : function(result, status, xhr) {
				if(callback) {
					callback(result);
				}
			},
			fail : function(xhr, status, err) {
				if(errorfn) {
					errorfn(err);
				}
			}
		});
	}
	
	function get(r_r_id, callback, errorfn) {
		$.get("/replies/" + r_r_id + ".json", function(result) {
			if(callback) {
				callback(result);
			}
		}).fail(function(xhr, status, err) {
			if(errorfn) {
				errorfn();
			}
		});
	}
	
	function displayTime(timeValue) {
		var today = new Date();
		var gap = today.getTime() - timeValue;
		var dateObj = new Date(timeValue);
		var str = "";
		
		if(gap < (1000 * 60 * 60 * 24)) {
			var hh = dateObj.getHours();
			var mi = dateObj.getMinutes();
			var ss = dateObj.getSeconds();
			
			return [(hh > 9 ? '' : '0') + hh, ":", (mi > 9 ? '' : '0') + mi, ":", (ss > 9 ? '' : '0') + ss].join('');
		} else {
			var yy = dateObj.getFullYear();
			var mm = dateObj.getMonth() + 1;
			var dd = dateObj.getDate();
	
			return [yy, "/", (mm > 9 ? '' : '0') + mm, "/", (dd > 9 ? '' : '0') + dd].join('');
		}
	}
	
	return {
		add : add,
		getList : getList,
		remove : remove,
		update : update,
		get : get,
		displayTime : displayTime
	};
})();