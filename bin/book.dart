class Book {
  String title;
  String author;
  String isbn;
  bool isBorrowed;

  Book(this.title, this.author, this.isbn) : isBorrowed = false;

  // Method สำหรับยืมหนังสือ
  void borrow() {
    if (!isBorrowed) {
      isBorrowed = true;
      print('The book "$title" has been borrowed.');
    } else {
      print('The book "$title" is already borrowed.');
    }
  }

  // Method สำหรับคืนหนังสือ
  void returnBook() {
    if (isBorrowed) {
      isBorrowed = false;
      print('The book "$title" has been returned.');
    } else {
      print('The book "$title" was not borrowed.');
    }
  }

  // Method สำหรับแสดงข้อมูลของหนังสือ
  void displayInfo() {
    print('Title: $title');
    print('Author: $author');
    print('ISBN: $isbn');
    print('Is Borrowed: ${isBorrowed ? "Yes" : "No"}');
  }
}

void main() {
  // สร้างออบเจ็กต์จากคลาส Book
  Book book = Book('Dart Programming', 'John Smith', '1234567890');

  // แสดงข้อมูลของหนังสือ
  book.displayInfo();

  // ยืมหนังสือ
  book.borrow();

  // แสดงข้อมูลของหนังสือหลังจากยืม
  book.displayInfo();

  // ลองยืมหนังสือที่ถูกยืมแล้ว
  book.borrow();

  // คืนหนังสือ
  book.returnBook();

  // แสดงข้อมูลของหนังสือหลังจากคืน
  book.displayInfo();

  // ลองคืนหนังสือที่ไม่ได้ถูกยืม
  book.returnBook();
}
