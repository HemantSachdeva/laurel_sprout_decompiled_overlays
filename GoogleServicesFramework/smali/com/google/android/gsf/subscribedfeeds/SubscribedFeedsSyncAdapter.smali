.class public Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;
.super Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;
.source "SubscribedFeedsSyncAdapter.java"


# instance fields
.field private mAccountHasEntries:Z

.field private final mSubscribedFeedsClient:Lcom/google/wireless/gdata/subscribedfeeds/client/SubscribedFeedsClient;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V
    .locals 2

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;-><init>(Landroid/content/Context;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V

    const/4 p2, 0x1

    .line 60
    iput-boolean p2, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->mAccountHasEntries:Z

    .line 66
    new-instance p2, Lcom/google/wireless/gdata/subscribedfeeds/client/SubscribedFeedsClient;

    new-instance v0, Lcom/google/android/common/gdata/AndroidGDataClient;

    invoke-direct {v0, p1}, Lcom/google/android/common/gdata/AndroidGDataClient;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/google/wireless/gdata/subscribedfeeds/parser/xml/XmlSubscribedFeedsGDataParserFactory;

    new-instance v1, Lcom/google/android/common/gdata/AndroidXmlParserFactory;

    invoke-direct {v1}, Lcom/google/android/common/gdata/AndroidXmlParserFactory;-><init>()V

    invoke-direct {p1, v1}, Lcom/google/wireless/gdata/subscribedfeeds/parser/xml/XmlSubscribedFeedsGDataParserFactory;-><init>(Lcom/google/wireless/gdata/parser/xml/XmlParserFactory;)V

    invoke-direct {p2, v0, p1}, Lcom/google/wireless/gdata/subscribedfeeds/client/SubscribedFeedsClient;-><init>(Lcom/google/wireless/gdata/client/GDataClient;Lcom/google/wireless/gdata/client/GDataParserFactory;)V

    iput-object p2, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->mSubscribedFeedsClient:Lcom/google/wireless/gdata/subscribedfeeds/client/SubscribedFeedsClient;

    return-void
.end method

.method private hasEntries(Landroid/accounts/Account;)Z
    .locals 8

    const/4 v0, 0x0

    .line 76
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "_sync_account=? AND _sync_account_type=?"

    const/4 p0, 0x2

    new-array v5, p0, [Ljava/lang/String;

    iget-object p0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p0, v5, v7

    iget-object p0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 p1, 0x1

    aput-object p0, v5, p1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 82
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 89
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return p1

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return v7

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 91
    :cond_4
    throw p0
.end method


# virtual methods
.method protected cursorToEntry(Landroid/database/Cursor;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    const-string p3, "_sync_account"

    .line 214
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "_sync_account_type"

    .line 216
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    new-instance v1, Landroid/accounts/Account;

    invoke-direct {v1, p3, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "service"

    .line 218
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "_sync_id"

    .line 219
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "feed"

    .line 220
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_sync_local_id"

    .line 221
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 223
    new-instance v3, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;

    const-string v4, "fake_auth_token"

    invoke-direct {v3, v2, p3, v4}, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    check-cast p2, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;

    if-eqz v0, :cond_0

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->getFeedUrl(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/google/wireless/gdata/data/Entry;->setId(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Lcom/google/wireless/gdata/data/Entry;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/google/wireless/gdata/data/Entry;->setEditUri(Ljava/lang/String;)V

    .line 230
    :cond_0
    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mRoutingInfo:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->setRoutingInfo(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2, v3}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->setSubscribedFeed(Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;)V

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->setClientToken(Ljava/lang/String;)V

    const/4 p1, 0x0

    if-nez v0, :cond_1

    .line 236
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->getFeedUrl(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method protected deletedCursorToEntry(Landroid/database/Cursor;Lcom/google/wireless/gdata/data/Entry;)V
    .locals 2

    const-string v0, "_sync_id"

    .line 243
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 244
    invoke-virtual {p2, p1}, Lcom/google/wireless/gdata/data/Entry;->setId(Ljava/lang/String;)V

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->getFeedUrl(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/wireless/gdata/data/Entry;->setEditUri(Ljava/lang/String;)V

    return-void
.end method

.method protected getCursorForDeletedTable(Landroid/content/ContentProvider;Ljava/lang/Class;)Landroid/database/Cursor;
    .locals 6

    .line 204
    const-class p0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;

    if-ne p2, p0, :cond_0

    .line 207
    sget-object v1, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->DELETED_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 205
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unexpected entry class, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected getCursorForTable(Landroid/content/ContentProvider;Ljava/lang/Class;)Landroid/database/Cursor;
    .locals 6

    .line 196
    const-class p0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;

    if-ne p2, p0, :cond_0

    .line 199
    sget-object v1, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 197
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unexpected entry class, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected getFeedEntryClass()Ljava/lang/Class;
    .locals 0

    .line 160
    const-class p0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;

    return-object p0
.end method

.method protected getFeedUrl(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 0

    const-string p0, "https://android.clients.google.com/gsync/sub"

    return-object p0
.end method

.method protected getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->mSubscribedFeedsClient:Lcom/google/wireless/gdata/subscribedfeeds/client/SubscribedFeedsClient;

    return-object p0
.end method

.method public getServerDiffs(Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/SyncResult;)V
    .locals 1

    .line 180
    iget-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->mAccountHasEntries:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 186
    invoke-virtual {p2, v0}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->setContainsDiffs(Z)V

    .line 187
    invoke-super/range {p0 .. p5}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getServerDiffs(Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/SyncResult;)V

    return-void
.end method

.method protected handleAllDeletedUnavailable(Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;Ljava/lang/String;)Z
    .locals 0

    const-string p0, "Sync"

    const-string p1, "subscribed feeds don\'t use tombstones"

    .line 113
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method protected hasTooManyDeletions(Landroid/content/SyncStats;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected newEntry()Lcom/google/wireless/gdata/data/Entry;
    .locals 0

    .line 170
    new-instance p0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;

    invoke-direct {p0}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;-><init>()V

    return-object p0
.end method

.method public onAccountsChanged([Landroid/accounts/Account;)V
    .locals 0

    return-void
.end method

.method public onSyncStarting(Landroid/accounts/Account;ZLandroid/content/SyncResult;)V
    .locals 1

    .line 96
    invoke-direct {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->hasEntries(Landroid/accounts/Account;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapter;->mAccountHasEntries:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->onSyncStarting(Landroid/accounts/Account;ZLandroid/content/SyncResult;)V

    goto :goto_0

    .line 103
    :cond_0
    iput-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    :goto_0
    return-void
.end method

.method protected updateProvider(Lcom/google/wireless/gdata/data/Feed;Ljava/lang/Long;Lcom/google/wireless/gdata/data/Entry;Landroid/content/ContentProvider;Ljava/lang/Object;Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .line 127
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 128
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getAccount()Landroid/accounts/Account;

    move-result-object p0

    .line 129
    iget-object p5, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string p6, "_sync_account"

    invoke-virtual {p1, p6, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object p0, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string p5, "_sync_account_type"

    invoke-virtual {p1, p5, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "_sync_local_id"

    .line 131
    invoke-virtual {p1, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 132
    move-object p0, p3

    check-cast p0, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;

    .line 133
    invoke-virtual {p0}, Lcom/google/wireless/gdata/data/Entry;->getId()Ljava/lang/String;

    move-result-object p2

    .line 134
    invoke-virtual {p0}, Lcom/google/wireless/gdata/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object p5

    .line 136
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-nez p6, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-nez p6, :cond_0

    const/16 p6, 0x2f

    .line 137
    invoke-virtual {p2, p6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 138
    invoke-virtual {p5, p6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p6

    add-int/lit8 p6, p6, 0x1

    invoke-virtual {p5, p6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p5

    const-string p6, "_sync_id"

    .line 139
    invoke-virtual {p1, p6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "_sync_version"

    .line 140
    invoke-virtual {p1, p2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    .line 142
    :goto_0
    invoke-virtual {p3}, Lcom/google/wireless/gdata/data/Entry;->isDeleted()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 143
    sget-object p0, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->DELETED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p4, p0, p1}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1

    .line 145
    :cond_1
    invoke-virtual {p0}, Lcom/google/wireless/gdata/subscribedfeeds/data/SubscribedFeedsEntry;->getSubscribedFeed()Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/wireless/gdata/subscribedfeeds/data/FeedUrl;->getFeed()Ljava/lang/String;

    move-result-object p0

    const-string p2, "feed"

    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "_sync_time"

    .line 147
    invoke-virtual {p1, p0, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string p0, "_sync_dirty"

    const-string p2, "0"

    .line 149
    invoke-virtual {p1, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    sget-object p0, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p4, p0, p1}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :goto_1
    return-void
.end method

.method protected updateQueryParameters(Lcom/google/wireless/gdata/client/QueryParams;Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;)V
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mRoutingInfo:Ljava/lang/String;

    const-string p2, "routinginfo"

    invoke-virtual {p1, p2, p0}, Lcom/google/wireless/gdata/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
