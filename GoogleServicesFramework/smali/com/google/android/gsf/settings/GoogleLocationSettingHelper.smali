.class public Lcom/google/android/gsf/settings/GoogleLocationSettingHelper;
.super Ljava/lang/Object;
.source "GoogleLocationSettingHelper.java"


# static fields
.field private static final GOOGLE_SETTINGS_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.google.settings/partner"

    .line 56
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/settings/GoogleLocationSettingHelper;->GOOGLE_SETTINGS_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public static getUseLocationForServices(Landroid/content/Context;)I
    .locals 7

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 p0, 0x0

    .line 90
    :try_start_0
    sget-object v1, Lcom/google/android/gsf/settings/GoogleLocationSettingHelper;->GOOGLE_SETTINGS_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "value"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "name=?"

    const-string v4, "use_location_for_services"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 92
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 93
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 99
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v6, v0

    move-object v0, p0

    move-object p0, v6

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v0, p0

    :goto_2
    :try_start_2
    const-string v2, "GoogleLocationSettingHelper"

    const-string v3, "Failed to get \'Use My Location\' setting"

    .line 96
    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_3
    const/4 v0, 0x2

    if-nez p0, :cond_2

    return v0

    .line 107
    :cond_2
    :try_start_3
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    return v0

    :catchall_1
    move-exception p0

    :goto_4
    if-eqz v0, :cond_3

    .line 99
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 101
    :cond_3
    throw p0
.end method
