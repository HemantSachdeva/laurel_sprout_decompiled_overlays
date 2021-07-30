.class public final Laqn;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static b:J

.field private static final c:Lacw;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "SettingsUtils"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Laqn;->c:Lacw;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Laqn;->a:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    sput-wide v0, Laqn;->b:J

    return-void
.end method

.method public static a(Landroid/content/Context;)J
    .locals 8

    sget-object v0, Laqn;->a:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    :try_start_0
    sget-wide v1, Laqn;->b:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 3
    monitor-exit v0

    return-wide v1

    :cond_0
    sget-object v1, Laqn;->c:Lacw;

    const-string v2, "Getting expected version from secure settings."

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v1, v2, v6}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "usb_migration_expected_version"

    .line 6
    invoke-static {p0, v2, v3, v4}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    sput-wide v6, Laqn;->b:J

    cmp-long v2, v6, v3

    if-eqz v2, :cond_1

    .line 7
    monitor-exit v0

    return-wide v6

    :cond_1
    const-string v2, "Putting expected version from secure settings."

    new-array v3, v5, [Ljava/lang/Object;

    .line 8
    invoke-virtual {v1, v2, v3}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v1, 0x1

    sput-wide v1, Laqn;->b:J

    const-string v3, "usb_migration_expected_version"

    .line 9
    invoke-static {p0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    sget-wide v1, Laqn;->b:J

    .line 10
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 17
    const-string v0, "_version"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 23
    const-string v0, "com.google.android.apps.pixelmigrate"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 24
    invoke-static {p0}, Laqn;->a(Landroid/content/Context;)J

    move-result-wide v1

    .line 25
    invoke-static {p1}, Laqn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 26
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x3

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 27
    const-string v0, "com.google.android.apps.pixelmigrate"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 28
    invoke-static {p0}, Laqn;->a(Landroid/content/Context;)J

    move-result-wide v1

    .line 29
    invoke-static {p1}, Laqn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 30
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 12
    const-string v0, "com.google.android.apps.pixelmigrate"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 13
    invoke-static {p0}, Laqn;->a(Landroid/content/Context;)J

    move-result-wide v1

    .line 14
    const-string p0, "esim_transfer_carrier_name"

    invoke-static {p0}, Laqn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 15
    const-wide/16 v4, -0x1

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const/4 v5, 0x0

    cmp-long v6, v3, v1

    if-eqz v6, :cond_0

    return-object v5

    .line 16
    :cond_0
    invoke-interface {v0, p0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 4

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 19
    invoke-static {p0}, Laqn;->a(Landroid/content/Context;)J

    move-result-wide v1

    .line 20
    const-string p0, "usb_migration_state"

    invoke-static {p0}, Laqn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 22
    const/4 v1, 0x6

    invoke-static {v0, p0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
