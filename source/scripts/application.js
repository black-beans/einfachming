/*
 *=require_tree ./plugins
 */

$(function() {
    $('#customers').accordion({
        heightStyle: 'content',
        event: "mouseover",
        collapsible: true,
        active: false
    })

    var date = new Date();
    var monthNames = [ "Januar", "Februar", "März", "April", "Mai", "Juni", "Juli", "August", "September", "Oktober", "November", "Dezember" ];
    var currentTime = date.getDate() + '. '
    currentTime += monthNames[date.getMonth()] + ' '
    currentTime += date.getFullYear();
    $('.current').html(currentTime);
})
