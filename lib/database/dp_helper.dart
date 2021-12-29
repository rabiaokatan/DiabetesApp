class DBHelper {
    static final DBHelper instance = DBHelper._init();

    static Database? _database;

    DBHelper._init();

    Future<Database> get database async {
        if(_database !=null) return _database!;

        _database = await _initDB('water.db');
        return _database!;
    }
    Future<Database> _initDB(String filePath) async {
        final dbPath = await getDatabasesPath();
        final path = join(dbPath, filePath);
        return await openDatabase(path, version: 1; onCreate: _createDB);
    }

    Future _createDB(Database db, int version) async{

        await db.execute('CREATE TABLE water_table(id INTEGER PRIMARY KEY, totalGlass INTEGER, glassCounter INTEGER)');
    }

    Future close() async{
        final db= await instance.database;
        db.close();
    }

}