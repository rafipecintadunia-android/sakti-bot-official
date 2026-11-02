import 'dart:convert';
import 'package:http/http.dart' as http;

class GithubOrderService {
  static const String repoOwner = "rafipecintadunia-android";
  static const String repoName = "sakti-bot-official";

  static Future<int> getBintangSaatIni() async {
    try {
      final url = Uri.parse('https://api.github.com/repos/$repoOwner/$repoName');
      final res = await http.get(url);
      if (res.statusCode == 200) {
        final data = json.decode(res.body);
        return data['stargazers_count'] ?? 0;
      }
      return 0;
    } catch (e) { return 0; }
  }
}
