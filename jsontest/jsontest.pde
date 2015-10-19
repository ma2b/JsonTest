Investment[] invests;
JSONObject json;

void setup() {
  json = loadJSONObject("investments.json");
  JSONArray investData = json.getJSONArray("investments");
  invests = new Investment[investData.size()];
  for (int i = 0; i < investData.size(); i++) {
    JSONObject invest = investData.getJSONObject(i);
//    JSONObject nameJson = invest.getJSONObject("name");
//    JSONObject amountJson = invest.getJSONObject("amount");
    String name = invest.getString("name");
    int amount = invest.getInt("amount");
    println("No:"+i+", "+name + ", " + amount);
  }
}
