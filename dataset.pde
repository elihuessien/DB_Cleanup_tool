class dataset
{
  int number;
  String name;
  String type1;
  String type2;
  int total;
  int HP;
  int attack;
  int defense;
  int sp_Atk;
  int sp_Def;
  int speed;
  int generation;
  String legendary;
  
  dataset()
  {
    number = 0;
    name = "No name";
    type1 = "";
    type2 = "";
    total = 0;
    HP = 0;
    attack = 0;
    defense = 0;
    sp_Atk = 0;
    sp_Def = 0;
    speed = 0;
    generation = 0;
    legendary = "FALSE";
  }
  
  dataset(int number,
  String name,
  String type1,
  String type2,
  int total,
  int HP,
  int attack,
  int defense,
  int sp_Atk,
  int sp_Def,
  int speed,
  int generation,
  String legendary)
  {
    this.number = number;
    this.name = name;
    this.type1 = type1;
    this.type2 = type2;
    this.total = total;
    this.HP = HP;
    this.attack = attack;
    this.defense = defense;
    this.sp_Atk = sp_Atk;
    this.sp_Def = sp_Def;
    this.speed = speed;
    this.generation = generation;
    this.legendary = legendary;
  }
}
