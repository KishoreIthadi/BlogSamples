using System;
using System.Linq;

namespace N2NRelation
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("\n");

            using (N2NRELATIONEntities db = new N2NRELATIONEntities())
            {
                var tblAuthors = db.tblAuthors.ToList();

                foreach (var author in tblAuthors)
                {
                    Console.WriteLine("ID :" + author.AuthorID + " Name : " + author.Name + "\n");

                    foreach (var book in author.tblBooks)
                    {
                        Console.WriteLine("     ID :" + book.BookID + " Name : " + book.Name);
                    }
                    Console.WriteLine("\n");
                }

                Console.WriteLine("\n***************************************************************\n");

                var tblBooks = db.tblBooks.ToList();

                foreach (var book in tblBooks)
                {
                    Console.WriteLine("ID :" + book.BookID + " Name : " + book.Name + "\n");

                    foreach (var author in book.tblAuthors)
                    {
                        Console.WriteLine("     ID :" + author.AuthorID + " Name : " + author.Name);
                    }
                    Console.WriteLine("\n");
                }
            }

            using (N2NRELATIONEntities db = new N2NRELATIONEntities())
            {
                //Creating new book
                var book = new tblBook
                {
                    Name = "Book3"
                };

                //Creating new author
                var author = new tblAuthor
                {
                    Name = "Author4"
                };

                //Adding author to book
                book.tblAuthors.Add(author);

                db.tblBooks.Add(book);

                //Saving the changes
                db.SaveChanges();
            }
        }
    }
}