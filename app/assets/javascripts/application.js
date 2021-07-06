const debounce = (func, delay) => {
    let debounceTimer
    return function() {
        const context = this
        const args = arguments
            clearTimeout(debounceTimer)
                debounceTimer
            = setTimeout(() => func.apply(context, args), delay)
    }
} 
function fooo() {
    $.ajax({
        url: '/search', 
        data: {search: $(this).val()},
        success: function(res) {
            $("#searchResults").html(res)
        }
    });
}
$(document).ready(function() {
    $(".search_users").keyup(debounce(fooo, 1000));
});