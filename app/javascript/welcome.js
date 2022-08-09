const ready = () => {
    const links = document.getElementsByClassName("wikiLink")

    for (const link of links) {
        console.log(link.outerHTML)
        link.addEventListener("click", e => {

            e.preventDefault();
            if (!confirm("Are you sure want to view this article?")) {
                return
            }
            window.location.href = link.href
        })
    }
}

window.addEventListener("DOMContentLoaded", ready)
