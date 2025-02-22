import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://aytfvzcdhdlmupalerlg.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImF5dGZ2emNkaGRsbXVwYWxlcmxnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTk4NzI5NDgsImV4cCI6MjAzNTQ0ODk0OH0.8oXHoZtJ-xbJc9a9rsxouIIsZHCqAmfT9KBo2sdX1rw';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
