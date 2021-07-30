.class public Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable;
.super Ljava/lang/Object;
.source "GoogleSettingsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field static sCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable;->sCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureCacheInitializedLocked(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;
    .locals 4

    .line 62
    sget-object v0, Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;

    invoke-direct {v0}, Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;-><init>()V

    .line 65
    sget-object v1, Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable;->sCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 74
    new-instance v2, Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable$1;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable$1;-><init>(Landroid/os/Handler;Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;)V

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object p0, v0, Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;->invalidateCache:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 90
    monitor-enter v0

    .line 91
    :try_start_0
    iget-object p0, v0, Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;->valueCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 92
    new-instance p0, Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;->versionToken:Ljava/lang/Object;

    .line 93
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method protected static getString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 112
    const-class v0, Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable;

    monitor-enter v0

    .line 113
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable;->ensureCacheInitializedLocked(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;

    move-result-object v1

    .line 114
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 117
    monitor-enter v1

    .line 118
    :try_start_1
    iget-object v0, v1, Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;->versionToken:Ljava/lang/Object;

    .line 119
    iget-object v2, v1, Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;->valueCache:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    iget-object p0, v1, Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;->valueCache:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v1

    return-object p0

    .line 122
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v2, 0x0

    :try_start_2
    const-string v3, "value"

    .line 127
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "name=?"

    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v8, v3

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_2

    .line 130
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 135
    :cond_1
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-static {v1, v0, p2, v2}, Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable;->putCache(Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_5

    .line 141
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 131
    :cond_2
    :goto_0
    :try_start_4
    invoke-static {v1, v0, p2, v2}, Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable;->putCache(Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p0, :cond_3

    .line 141
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v2

    :catchall_0
    move-exception p1

    move-object v2, p0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v10, v2

    move-object v2, p0

    move-object p0, v10

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object p0, v2

    :goto_1
    :try_start_5
    const-string v1, "GoogleSettings"

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " from "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_4

    .line 141
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v2, p0

    :cond_5
    :goto_2
    return-object v2

    :goto_3
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_6
    throw p1

    :catchall_2
    move-exception p0

    .line 122
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    .line 114
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0
.end method

.method private static putCache(Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 181
    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;->versionToken:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 186
    iget-object p1, p0, Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;->valueCache:Ljava/util/HashMap;

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected static putString(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 149
    const-class v0, Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable;

    monitor-enter v0

    .line 150
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable;->ensureCacheInitializedLocked(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;

    move-result-object v1

    .line 151
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-static {v1, p2}, Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable;->removeCachedValue(Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 157
    :try_start_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "name"

    .line 158
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "value"

    .line 159
    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 168
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t set key "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " in "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GoogleSettings"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    :catch_1
    move-exception p0

    .line 163
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t set key "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " in "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GoogleSettings"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    :catchall_0
    move-exception p0

    .line 151
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static removeCachedValue(Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;Ljava/lang/String;)V
    .locals 1

    .line 174
    monitor-enter p0

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;->valueCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
