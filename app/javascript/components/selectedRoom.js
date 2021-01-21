const selectedRoom = () => {
  let roomNumber = document.querySelector('.room-number')
  let rooms = document.querySelectorAll('.room')

  rooms.forEach(function (room, index) {
    room.addEventListener('click', () => {
      roomNumber.value = room.id
    })
  })
}

export { selectedRoom }
