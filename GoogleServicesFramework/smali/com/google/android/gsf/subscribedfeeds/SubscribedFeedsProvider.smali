.class public Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;
.super Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;
.source "SubscribedFeedsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;
    }
.end annotation


# static fields
.field private static final ACCOUNTS_PROJECTION_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDeletedFeedsTable:Ljava/lang/String;

.field private static sDeletedFeedsUrl:Landroid/net/Uri;

.field private static sFeedsTable:Ljava/lang/String;

.field private static sFeedsUrl:Landroid/net/Uri;

.field private static final sURLMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 54
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v0, "feeds"

    .line 57
    sput-object v0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sFeedsTable:Ljava/lang/String;

    const-string v1, "content://subscribedfeeds/feeds/"

    .line 59
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sFeedsUrl:Landroid/net/Uri;

    const-string v1, "_deleted_feeds"

    .line 60
    sput-object v1, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sDeletedFeedsTable:Ljava/lang/String;

    const-string v1, "content://subscribedfeeds/deleted_feeds/"

    .line 62
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sDeletedFeedsUrl:Landroid/net/Uri;

    .line 69
    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v2, "subscribedfeeds"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "feeds/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 71
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "deleted_feeds"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "accounts"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 392
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 393
    sput-object v0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->ACCOUNTS_PROJECTION_MAP:Ljava/util/Map;

    const-string v1, "_count"

    const-string v2, "COUNT(*) AS _count"

    .line 394
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "_sync_account"

    .line 395
    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "_sync_account_type"

    .line 396
    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 65
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sFeedsUrl:Landroid/net/Uri;

    const-string v1, "subscribedfeeds.db"

    const/16 v2, 0xb

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;-><init>(Ljava/lang/String;ILandroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sFeedsTable:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Landroid/net/Uri;
    .locals 1

    .line 42
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sFeedsUrl:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sDeletedFeedsTable:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Landroid/net/Uri;
    .locals 1

    .line 42
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sDeletedFeedsUrl:Landroid/net/Uri;

    return-object v0
.end method

.method private static addIdToWhereClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, " AND ("

    .line 300
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    .line 302
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method


# virtual methods
.method protected bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 96
    invoke-super {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v0, "CREATE TABLE feeds (_id INTEGER PRIMARY KEY,_sync_account TEXT,_sync_account_type TEXT,_sync_id TEXT,_sync_time TEXT,_sync_version TEXT,_sync_local_id INTEGER,_sync_dirty INTEGER,_sync_mark INTEGER,feed TEXT,authority TEXT,service TEXT);"

    .line 97
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TRIGGER feed_cleanup DELETE ON feeds WHEN old._sync_id is not null BEGIN INSERT INTO _deleted_feeds (_sync_id, _sync_account, _sync_account_type, _sync_version) VALUES (old._sync_id, old._sync_account, old._sync_account_type, old._sync_version);END"

    .line 115
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE _deleted_feeds (_sync_version TEXT,_sync_id TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->isTemporary()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "_sync_local_id INTEGER,"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_sync_account TEXT,_sync_account_type TEXT,_sync_mark INTEGER, UNIQUE(_sync_id))"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 124
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public deleteInternal(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 250
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 253
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 258
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 261
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot delete that URL: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p1, 0x0

    .line 265
    :goto_0
    invoke-static {p1, p2}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->addIdToWhereClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 266
    sget-object p2, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sFeedsTable:Ljava/lang/String;

    invoke-virtual {p0, p2, p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected getMergers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;",
            ">;"
        }
    .end annotation

    .line 151
    new-instance v0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;-><init>(Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 156
    sget-object p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const-string p0, "vnd.android.cursor.item/subscribedfeed"

    return-object p0

    .line 163
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown URL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "vnd.android.cursor.dir/subscribedfeeds"

    return-object p0
.end method

.method public insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5

    .line 212
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 216
    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->isTemporary()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 232
    sget-object p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sDeletedFeedsTable:Ljava/lang/String;

    const-string p1, "_sync_id"

    invoke-virtual {v0, p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    cmp-long p2, p0, v2

    if-lez p2, :cond_3

    .line 235
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "content://subscribedfeeds/deleted_feeds/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    .line 230
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    .line 241
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot insert into URL: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 219
    :cond_2
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 220
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "_sync_dirty"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 221
    sget-object p1, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sFeedsTable:Ljava/lang/String;

    const-string p2, "feed"

    invoke-virtual {v0, p1, p2, p0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    cmp-long p2, p0, v2

    if-lez p2, :cond_3

    .line 223
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "content://subscribedfeeds/feeds/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected onAccountsChanged([Landroid/accounts/Account;)V
    .locals 4

    .line 136
    invoke-super {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->onAccountsChanged([Landroid/accounts/Account;)V

    .line 137
    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v1, p1, v0

    .line 138
    iget-object v2, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v3, "com.google"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "subscribedfeeds"

    const/4 v3, 0x1

    .line 139
    invoke-static {v1, v2, v3}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreate()Z
    .locals 2

    .line 77
    new-instance v0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;-><init>(Landroid/content/Context;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->setTempProviderSyncAdapter(Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;)V

    .line 78
    invoke-super {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->onCreate()Z

    move-result p0

    return p0
.end method

.method protected onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string p0, "feeds"

    const-string v0, "_deleted_feeds"

    .line 146
    invoke-virtual {p1, p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->markTableSyncable(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 170
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 174
    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    .line 190
    sget-object p1, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sFeedsTable:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 192
    sget-object p1, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->ACCOUNTS_PROJECTION_MAP:Ljava/util/Map;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 193
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v6, 0x0

    const-string v5, "_sync_account_type,_sync_account"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 202
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown URL "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->isTemporary()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 187
    sget-object p1, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sDeletedFeedsTable:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    .line 197
    :cond_3
    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sFeedsTable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sFeedsTable:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "._id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 199
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 181
    :cond_4
    sget-object p1, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sFeedsTable:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 206
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public updateInternal(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 272
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 273
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    const/4 p2, 0x1

    .line 274
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_sync_dirty"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 277
    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    if-eq v1, p2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 283
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 287
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot update URL: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p1, 0x0

    .line 291
    :goto_0
    invoke-static {p1, p3}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->addIdToWhereClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 292
    sget-object p2, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->sFeedsTable:Ljava/lang/String;

    invoke-virtual {p0, p2, v0, p1, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;II)Z
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upgrading database from version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", which will destroy all old data"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SubscribedFeedsProvider"

    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "DROP TRIGGER IF EXISTS feed_cleanup"

    .line 87
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS _deleted_feeds"

    .line 88
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS feeds"

    .line 89
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 p0, 0x0

    return p0
.end method
