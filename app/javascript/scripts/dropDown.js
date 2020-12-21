const dropDown = () => {
  const backwareMenu = document.querySelector('.backware')

  if (backwareMenu) {
    const items = document.querySelectorAll('.backware-item');
    const descriptions = document.querySelectorAll('#description')

    const addActive = (element) => {
      element.classList.add('active')
    }
    const removeActive = (element) => {
      element.classList.remove('active')
    }


    items.forEach(item => {
      item.addEventListener('mouseover', (e) => {
        addActive(item.nextSibling)
      })
    })
    items.forEach(item => {
      item.addEventListener('mouseout', (e) => {
        removeActive(item.nextSibling)
      })
    })
  }
}


export { dropDown }
