import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase/supabase.dart';

class Supabase {
  static SupabaseClient client = SupabaseClient(
    env['SUPABASE_URL'] ?? '',
    env['SUPABASE_SECRET'] ?? '',
  );
}
