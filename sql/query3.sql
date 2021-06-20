select title from books b,subjects s,books_subjects bs where book=b.id and subject=s.id and name in ('Technology','Politics');
