import java.io.File;

public class Main {
    public static void main(String[] args) {
        FileCreator();
        Database database = new Database();
        Menu menu = new Menu(database);
        menu.displayMenu();
    }



    public static void FileCreator()
    {
        try {
            File f = new File("base/database.xml");
             // Убедитесь, что файл не существует 
            if (f.createNewFile())
                System.out.println("Файл создан");
            }
        catch (Exception e) {
            System.err.println(e);
        }
    }
}
