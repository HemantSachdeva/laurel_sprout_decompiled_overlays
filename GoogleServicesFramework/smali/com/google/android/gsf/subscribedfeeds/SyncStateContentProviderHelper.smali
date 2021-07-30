.class public Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;
.super Ljava/lang/Object;
.source "SyncStateContentProviderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper$Provider;
    }
.end annotation


# static fields
.field private static final ACCOUNT_PROJECTION:[Ljava/lang/String;

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static DB_VERSION:J

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final mInternalProviderInterface:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper$Provider;

.field final mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 39
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v0, "content://syncstate/state"

    .line 44
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v0, 0x3

    .line 51
    sput-wide v0, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->DB_VERSION:J

    const-string v0, "_sync_account"

    const-string v1, "_sync_account_type"

    .line 53
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "syncstate"

    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 62
    new-instance p1, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper$Provider;

    invoke-direct {p1, p0}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper$Provider;-><init>(Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;)V

    iput-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->mInternalProviderInterface:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper$Provider;

    return-void
.end method

.method static synthetic access$000()Landroid/content/UriMatcher;
    .locals 1

    .line 35
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->sURIMatcher:Landroid/content/UriMatcher;

    return-object v0
.end method

.method static synthetic access$100()Landroid/net/Uri;
    .locals 1

    .line 35
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public asContentProvider()Landroid/content/ContentProvider;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->mInternalProviderInterface:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper$Provider;

    return-object p0
.end method

.method public copySyncState(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)V
    .locals 12

    const/4 p0, 0x2

    new-array v4, p0, [Ljava/lang/String;

    .line 174
    iget-object v0, p3, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v0, v4, v8

    iget-object p3, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object p3, v4, v9

    const-string p3, "_sync_account"

    const-string v10, "_sync_account_type"

    const-string v11, "data"

    .line 175
    filled-new-array {p3, v10, v11}, [Ljava/lang/String;

    move-result-object v2

    const-string v1, "_sync_state"

    const-string v3, "_sync_account = ? AND _sync_account_type = ?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 179
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 181
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    invoke-virtual {v0, v11, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string p0, "_sync_state"

    .line 184
    invoke-virtual {p2, p0, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 188
    throw p0
.end method

.method public createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string p0, "DROP TABLE IF EXISTS _sync_state"

    .line 70
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE _sync_state (_id INTEGER PRIMARY KEY,_sync_account TEXT,_sync_account_type TEXT,data TEXT,UNIQUE(_sync_account, _sync_account_type));"

    .line 71
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "DROP TABLE IF EXISTS _sync_state_metadata"

    .line 79
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE _sync_state_metadata (version INTEGER);"

    .line 80
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 83
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 84
    sget-wide v0, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->DB_VERSION:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "version"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "_sync_state_metadata"

    .line 85
    invoke-virtual {p1, v0, v1, p0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public discardSyncData(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)V
    .locals 3

    const-string p0, "_sync_state"

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 219
    iget-object v2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p2, v0, v1

    const-string p2, "_sync_account = ? AND _sync_account_type = ?"

    invoke-virtual {p1, p0, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 221
    invoke-virtual {p1, p0, p2, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public matches(Landroid/net/Uri;)Z
    .locals 0

    .line 160
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string p1, "syncstate"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onAccountsChanged([Landroid/accounts/Account;)V
    .locals 9

    .line 192
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 193
    sget-object v2, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    const-string v1, "_sync_state"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 195
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 196
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 197
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 198
    new-instance v5, Landroid/accounts/Account;

    invoke-direct {v5, v2, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    array-length v6, p1

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, p1, v7

    .line 202
    invoke-virtual {v5, v8}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v5, v3

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_2
    if-nez v5, :cond_0

    const-string v5, "_sync_state"

    const-string v6, "_sync_account = ? AND _sync_account_type = ?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    aput-object v2, v7, v1

    aput-object v4, v7, v3

    .line 208
    invoke-virtual {p0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 213
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 214
    throw p0
.end method

.method protected onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    const-string v0, "select version from _sync_state_metadata"

    const/4 v1, 0x0

    .line 89
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 91
    sget-wide v2, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->DB_VERSION:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method
