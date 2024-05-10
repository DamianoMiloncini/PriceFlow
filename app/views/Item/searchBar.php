<!-- <link rel="stylesheet" href="\app\views\Styles\homeStyle.css">

<div class='navBar'>
    <!-- <a id='filterButton' href="">
                    <i class="bi bi-funnel"></i>
                    Filter
                </a> -->
    <textarea id="search" name="searchBar" placeholder='Search products and recipes'></textarea></textarea>
    <a id="searchButton" href="/localhost/Item/search/">
        Search
    </a>
</div>

<script>
    // Get references to the search textarea and the search button
    const searchTextArea = document.getElementById('search');
    const searchButton = document.getElementById('searchButton');

    // Add an event listener to the search textarea
    searchTextArea.addEventListener('input', function() {
        // Get the value of the textarea and replace spaces with '+'
        const searchText = searchTextArea.value.trim().replace(/ /g, '+');

        // Update the href attribute of the search button
        searchButton.href = searchText ? '/Item/search/' + searchText : '';
    });
</script> -->