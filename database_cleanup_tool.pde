void setup()
{
  size(500, 500);
  loadScores();
  cleanUp();
  saveData();
}


ArrayList<dataset> data = new ArrayList<dataset>();

void loadScores()
{
  Table lines = loadTable("Pokemon.csv", "header");
  
  for(TableRow row : lines.rows())
  {
    int number = row.getInt("#");
    String name = row.getString("Name");
    String type1 = row.getString("Type 1");
    String type2 = row.getString("Type 2");
    int total = row.getInt("Total");
    int HP = row.getInt("HP");
    int attack = row.getInt("Attack");
    int defense = row.getInt("Defense");
    int sp_Atk = row.getInt("Sp. Atk");
    int sp_Def = row.getInt("Sp. Def");
    int speed = row.getInt("Speed");
    int generation = row.getInt("Generation");
    String legendary = row.getString("Legendary");
    
    dataset d = new dataset(number,
    name,
    type1,
    type2,
    total,
    HP,
    attack,
    defense,
    sp_Atk,
    sp_Def,
    speed,
    generation,
    legendary);
    
    data.add(d);
    
    println("ID: " + number +", Name: " + name + ".");
  }
}

void cleanUp()
{
  for(int i = 0; i < data.size(); i++)
  {
    data.get(i).number = (i+1);
  }
}

void saveData()
{
  Table table;
    table = new Table();
    table.addColumn("Number");
    table.addColumn("Name");
    table.addColumn("Type 1");
    table.addColumn("Type 2");
    table.addColumn("Total");
    table.addColumn("HP");
    table.addColumn("Attack");
    table.addColumn("Defense");
    table.addColumn("Sp. Atk");
    table.addColumn("Sp. Def");
    table.addColumn("Speed");
    table.addColumn("Generation");
    table.addColumn("Legendary");
    
  
  for(int i = 0; i < data.size(); i++)
  {
    TableRow newrow = table.addRow();
    newrow.setInt("Number", data.get(i).number);
    newrow.setString("Name", data.get(i).name);
    newrow.setString("Type 1", data.get(i).type1);
    newrow.setString("Type 2", data.get(i).type2);
    newrow.setInt("Total", data.get(i).total);
    newrow.setInt("HP", data.get(i).HP);
    newrow.setInt("Attack", data.get(i).attack);
    newrow.setInt("Defense", data.get(i).defense);
    newrow.setInt("Sp. Atk", data.get(i).sp_Atk);
    newrow.setInt("Sp. Def", data.get(i).sp_Def);
    newrow.setInt("Speed", data.get(i).speed);
    newrow.setInt("Generation", data.get(i).generation);
    newrow.setString("Legendary", data.get(i).legendary);
  }
  saveTable(table, "data/Pokemon.csv");
}

