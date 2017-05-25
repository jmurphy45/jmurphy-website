$('#download-resume').on('click',function(){
    ga('send', {
        hitType: 'event',
        eventCategory: 'Button Click',
        eventAction: 'download-resume',
        eventLabel: 'resume.pdf'
    });
});

$('.works-item a').on('click',function(){
    ga('send', {
        hitType: 'event',
        eventCategory: 'Portfolio Click',
        eventAction: 'View portfolio page',
        eventLabel: 'portfolio view'
    });
});