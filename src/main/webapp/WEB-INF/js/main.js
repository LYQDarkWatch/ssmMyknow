$(funciton)
{
    GetData();

    funciton
    GetData()
    {
        $.ajax({
            url:'/mystudy_war_exploded/knowledge/getalldata',
            type: get,
            success: function (data) {
                if (data.success()) {
                    var html = '';
                    data.knowledge.map(function (item, index) {
                        html += '<td >' +
                            item.kname +
                            '</td><td >' +
                            item.pnitro +
                            '</td><td >' +
                            item.username +
                            '</td><td >' +
                            item.typename +
                            '</td>'
                    });
                    $('#test').html(html);
                }
            }
        });
    }

};
