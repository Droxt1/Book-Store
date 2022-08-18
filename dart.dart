import 'dart:async';
import 'dart:ffi';
import 'dart:io';
import 'dart:mirrors';


void main() {
   while(true){
    print("ـــــــــــــــــــــــــــــــــــــــــ");
    print('Welcome To The Library Management System\n' );
    
    LibraryManager();
    }
  }


class LibraryManager{
  String?  book, author;
      double? rate;
  
      
      List<Map> _b1 = [
        {
          'book': "Magellan's Terrifying Circumnavigation Of The Globe",
          'author': " Laurence Bergreen",
          'rate': 4.5
        }
      ];
      
  
   
  LibraryManager(){
    Options();
  }
  
   
  void Options(){
    int? ch;
    print("1- Display all books");
    print("2- Display books with rate +4");
    print("3- Add book");
    print("4- Update book");
    print("5- Delete book");
    print("6- Search");
    print("7- Exit");
    stdout.write("Write your choice: ");
   
    
    ch = int.parse(stdin.readLineSync()!);
    if(ch==1){
      display();
    }
    else if(ch==2){
      
        HighRate();
      
    }
    else if(ch==3){
      insertnewbook();


    }
    else if(ch==4){
      UpdateExistingBook();
    }
    else if(ch==5){
      DeleteBook();
    }
    else if(ch==6){
      Searchbook();
    }
    else if(ch==7){
      exit(0);
    }
    else{
      print("Invalid Choice");
    
  }}
  void display(){
    for(var i=0; i<_b1.length; i++){
      print("Book: ${_b1[i]['book']}");
      print("Author: ${_b1[i]['author']}");
      print("Rate: ${_b1[i]['rate']}");
      print("\n");}}
    
  
  
  void HighRate(){
      for(var i=0; i<_b1.length; i++){
        if(_b1[i]['rate']>4){
          print("Book: ${_b1[i]['book']}");
          print("Author: ${_b1[i]['author']}");
          print("Rate: ${_b1[i]['rate']}");
          print("\n");
        }
      } Options();
      }
    
    
    
    void insertnewbook(){
      print("Enter book name: ");
      book = stdin.readLineSync()!;
      print("Enter author name: ");
      author = stdin.readLineSync()!;
      print("Enter rate: ");
      rate = double.parse(stdin.readLineSync()!);
      Map<String, dynamic> newbook = {
        'book': book,
        'author': author,
        'rate': rate
      };
      _b1.add(newbook);
      print("Book added successfully");
      Options();
    
    
      
    }

    void Searchbook(){
      print("Enter book name: ");
      book = stdin.readLineSync()!;
      for(var i=0; i<_b1.length; i++){
        if(_b1[i]['book']==book){
          print("Book: ${_b1[i]['book']}");
          print("Author: ${_b1[i]['author']}");
          print("Rate: ${_b1[i]['rate']}");
          print("\n");
        }  
    }}
      
      
      void DeleteBook(){
        print("Enter book name: ");
        book = stdin.readLineSync()!;
        for(var i=0; i<_b1.length; i++){
          if(_b1[i]['book']==book){
            _b1.removeAt(i);
            print("Book deleted successfully");
            Options();
          }
        }

      }





      void UpdateExistingBook(){
        print("Enter book name: ");
        book = stdin.readLineSync()!;
        for(var i=0; i<_b1.length; i++){
          if(_b1[i]['book']==book){
            print("Enter new book name: ");
            book = stdin.readLineSync()!;
            _b1[i]['book'] = book;
            print("Enter new author name: ");
            author = stdin.readLineSync()!;
            _b1[i]['author'] = author;
            print("Enter new rate: ");
            rate = double.parse(stdin.readLineSync()!);
            _b1[i]['rate'] = rate;
            print("Book updated successfully");
            Options();
          }
        }

      }
      
      
      
      
      
      
      }
     


  


