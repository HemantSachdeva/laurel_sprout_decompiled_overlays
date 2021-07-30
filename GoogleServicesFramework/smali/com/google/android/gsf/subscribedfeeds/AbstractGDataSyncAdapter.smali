.class public abstract Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;
.super Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;
.source "AbstractGDataSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;,
        Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;
    }
.end annotation


# static fields
.field private static final SYNC_STATE_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field protected mAccount:Landroid/accounts/Account;

.field protected mAuthToken:Ljava/lang/String;

.field protected mServerEntries:I

.field protected mServerQueries:I

.field protected volatile mSyncCanceled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://syncstate/state"

    .line 469
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->SYNC_STATE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;-><init>(Landroid/content/Context;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V

    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    .line 69
    iput-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mSyncCanceled:Z

    return-void
.end method

.method private getSingleEntry(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/wireless/gdata/data/Entry;
    .locals 2

    .line 1202
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p0}, Lcom/google/wireless/gdata/client/GDataServiceClient;->getEntry(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata/data/Entry;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error while fetching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " as type "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Sync"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static newBytesFromGDataSyncData(Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;)[B
    .locals 2

    .line 550
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 552
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 553
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 556
    throw p0
.end method

.method public static newGDataSyncDataFromBytes([B)Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;
    .locals 3

    if-eqz p0, :cond_0

    .line 529
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 530
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 531
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 533
    :try_start_0
    sget-object p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 539
    throw p0

    .line 538
    :catch_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected abstract cursorToEntry(Landroid/database/Cursor;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation
.end method

.method protected abstract deletedCursorToEntry(Landroid/database/Cursor;Lcom/google/wireless/gdata/data/Entry;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation
.end method

.method protected getAccount()Landroid/accounts/Account;
    .locals 0

    .line 453
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    return-object p0
.end method

.method protected getAccountAllowsSyncing(Landroid/accounts/Account;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method protected abstract getCursorForDeletedTable(Landroid/content/ContentProvider;Ljava/lang/Class;)Landroid/database/Cursor;
.end method

.method protected abstract getCursorForTable(Landroid/content/ContentProvider;Ljava/lang/Class;)Landroid/database/Cursor;
.end method

.method protected getFeedData(Ljava/lang/String;Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;)Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    .locals 1

    .line 832
    check-cast p2, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;

    .line 833
    iget-object p0, p2, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;->feedData:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;

    if-nez p0, :cond_0

    const-string p0, "^https://"

    const-string v0, "http://"

    .line 836
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 837
    iget-object p1, p2, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;->feedData:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;

    :cond_0
    return-object p0
.end method

.method protected abstract getFeedEntryClass()Ljava/lang/Class;
.end method

.method protected abstract getFeedUrl(Landroid/accounts/Account;)Ljava/lang/String;
.end method

.method protected abstract getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;
.end method

.method public getIsSyncable(Landroid/accounts/Account;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .line 94
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getAccountAllowsSyncing(Landroid/accounts/Account;)Z

    move-result p0

    return p0
.end method

.method public getMaxEntriesPerSync()I
    .locals 0

    const/16 p0, 0xc8

    return p0
.end method

.method public getServerDiffs(Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/SyncResult;)V
    .locals 9

    .line 569
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getFeedUrl(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_0

    const-string v1, "feed"

    .line 570
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 571
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    :cond_0
    move-object v4, v0

    .line 573
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getFeedEntryClass()Ljava/lang/Class;

    move-result-object v3

    .line 574
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getMaxEntriesPerSync()I

    move-result v6

    move-object v7, p1

    check-cast v7, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;

    move-object v1, p0

    move-object v2, p2

    move-object v5, p4

    move-object v8, p5

    .line 573
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getServerDiffsImpl(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;ILcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;Landroid/content/SyncResult;)V

    return-void
.end method

.method protected getServerDiffsImpl(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;ILcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;Landroid/content/SyncResult;)V
    .locals 36

    move-object/from16 v9, p0

    move-object/from16 v10, p3

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    const-string v13, "Sync"

    .line 592
    iget-boolean v0, v9, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mSyncCanceled:Z

    if-eqz v0, :cond_0

    return-void

    .line 594
    :cond_0
    invoke-virtual {v9, v10, v11}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getFeedData(Ljava/lang/String;Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;)Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;

    move-result-object v8

    const-wide/16 v14, 0x0

    if-eqz v8, :cond_1

    .line 598
    iget-wide v0, v8, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->lastUpdatedTime:J

    move-wide v6, v0

    goto :goto_0

    :cond_1
    move-wide v6, v14

    .line 602
    :goto_0
    new-instance v5, Landroid/text/format/Time;

    const-string v0, "UTC"

    invoke-direct {v5, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 604
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v0

    .line 606
    invoke-virtual {v0}, Lcom/google/wireless/gdata/client/GDataServiceClient;->createQueryParams()Lcom/google/wireless/gdata/client/QueryParams;

    move-result-object v1

    .line 607
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->getContainsDiffs()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    cmp-long v2, v6, v14

    if-lez v2, :cond_2

    .line 609
    invoke-virtual {v5, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 610
    invoke-virtual {v5, v4}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/wireless/gdata/client/QueryParams;->setUpdatedMin(Ljava/lang/String;)V

    const-string v2, "requirealldeleted"

    const-string v3, "true"

    .line 611
    invoke-virtual {v1, v2, v3}, Lcom/google/wireless/gdata/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v8, :cond_4

    .line 617
    iget-boolean v2, v8, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->hasMoreEntriesToFetch:Z

    if-eqz v2, :cond_4

    .line 627
    iget v2, v8, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->endIndex:I

    if-lez v2, :cond_3

    .line 634
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/google/wireless/gdata/client/QueryParams;->setStartIndex(Ljava/lang/String;)V

    add-int/lit8 v14, p5, 0x1

    .line 636
    iget-object v15, v8, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->lastId:Ljava/lang/String;

    move/from16 v35, v14

    move v14, v2

    move-object v2, v15

    move/from16 v15, v35

    goto :goto_1

    .line 629
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad startIndex, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", it must be greater than 0, SyncData is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move/from16 v15, p5

    const/4 v2, 0x0

    const/4 v14, 0x1

    .line 639
    :goto_1
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/gdata/client/QueryParams;->setMaxResults(Ljava/lang/String;)V

    const-wide/16 v18, 0x1

    .line 646
    :try_start_0
    invoke-virtual {v9, v1, v8}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->updateQueryParameters(Lcom/google/wireless/gdata/client/QueryParams;Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;)V

    .line 647
    invoke-virtual {v1, v10}, Lcom/google/wireless/gdata/client/QueryParams;->generateQueryUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_1d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1c
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_0 .. :try_end_0} :catch_1b
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 650
    :try_start_1
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_19
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_1 .. :try_end_1} :catch_1d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1c
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_1 .. :try_end_1} :catch_1b
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    const/4 v4, 0x2

    .line 656
    :try_start_2
    invoke-static {v13, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 657
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting feed "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_5
    iget-object v3, v9, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    move-object/from16 v4, p2

    invoke-virtual {v0, v4, v1, v3}, Lcom/google/wireless/gdata/client/GDataServiceClient;->getParserForFeed(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata/parser/GDataParser;

    move-result-object v3
    :try_end_2
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_2 .. :try_end_2} :catch_1d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1c
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_2 .. :try_end_2} :catch_1b
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 660
    :try_start_3
    iget v0, v9, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerQueries:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v9, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerQueries:I

    .line 661
    invoke-interface {v3}, Lcom/google/wireless/gdata/parser/GDataParser;->init()Lcom/google/wireless/gdata/data/Feed;

    move-result-object v21

    .line 662
    invoke-virtual/range {v21 .. v21}, Lcom/google/wireless/gdata/data/Feed;->getLastUpdated()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v22, v1

    move-wide/from16 v23, v6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v29, 0x0

    .line 666
    :goto_2
    invoke-interface {v3}, Lcom/google/wireless/gdata/parser/GDataParser;->hasMoreData()Z

    move-result v16

    if-eqz v16, :cond_f

    if-ge v0, v15, :cond_f

    .line 667
    iget-boolean v4, v9, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mSyncCanceled:Z
    :try_end_3
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_3 .. :try_end_3} :catch_18
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_16
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_3 .. :try_end_3} :catch_15
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v4, :cond_7

    if-eqz v3, :cond_6

    .line 821
    invoke-interface {v3}, Lcom/google/wireless/gdata/parser/GDataParser;->close()V

    :cond_6
    return-void

    .line 668
    :cond_7
    :try_start_4
    iget v4, v9, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerEntries:I

    const/16 v16, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v9, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerEntries:I
    :try_end_4
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_4 .. :try_end_4} :catch_18
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_16
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_4 .. :try_end_4} :catch_15
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    add-int/lit8 v4, v0, 0x1

    .line 671
    :try_start_5
    invoke-interface {v3, v1}, Lcom/google/wireless/gdata/parser/GDataParser;->readNextEntry(Lcom/google/wireless/gdata/data/Entry;)Lcom/google/wireless/gdata/data/Entry;

    move-result-object v0
    :try_end_5
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_16
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_5 .. :try_end_5} :catch_15
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    const/4 v1, 0x2

    .line 678
    :try_start_6
    invoke-static {v13, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v16
    :try_end_6
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_6 .. :try_end_6} :catch_18
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_16
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_6 .. :try_end_6} :catch_15
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v16, :cond_8

    .line 679
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v25, v3

    :try_start_8
    const-string v3, "Read entry: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/wireless/gdata/data/Entry;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_8 .. :try_end_8} :catch_e
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v25, v3

    :goto_3
    move-object/from16 v2, v25

    goto/16 :goto_1d

    :catch_1
    move-exception v0

    move-object/from16 v25, v3

    goto/16 :goto_b

    :catch_2
    move-object/from16 v25, v3

    :catch_3
    move-object/from16 v2, v25

    goto/16 :goto_19

    :catch_4
    move-exception v0

    move-object/from16 v25, v3

    :goto_4
    move-object/from16 v2, v25

    goto/16 :goto_1b

    :cond_8
    move-object/from16 v25, v3

    .line 681
    :goto_5
    :try_start_9
    invoke-virtual {v0}, Lcom/google/wireless/gdata/data/Entry;->getId()Ljava/lang/String;

    move-result-object v3
    :try_end_9
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_9 .. :try_end_9} :catch_10
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_9 .. :try_end_9} :catch_e
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    const/4 v1, 0x1

    if-ne v4, v1, :cond_a

    if-eqz v2, :cond_a

    .line 687
    :try_start_a
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_a

    const/4 v3, 0x0

    .line 693
    iput-boolean v3, v8, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->hasMoreEntriesToFetch:Z
    :try_end_a
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_a .. :try_end_a} :catch_10
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_f
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move v3, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v14, v3

    move-object/from16 v17, v25

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move v6, v15

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 694
    :try_start_b
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getServerDiffsImpl(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;ILcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;Landroid/content/SyncResult;)V
    :try_end_b
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_b .. :try_end_b} :catch_14
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_17
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    if-eqz v17, :cond_9

    .line 821
    invoke-interface/range {v17 .. v17}, Lcom/google/wireless/gdata/parser/GDataParser;->close()V

    :cond_9
    return-void

    :catch_5
    move-exception v0

    move v5, v14

    goto/16 :goto_15

    :catch_6
    move-exception v0

    move-object/from16 v17, v25

    goto/16 :goto_a

    :cond_a
    move-object/from16 v16, v3

    move-object/from16 v17, v25

    const/4 v3, 0x0

    const/4 v3, 0x2

    .line 699
    :try_start_c
    invoke-static {v13, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v25
    :try_end_c
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_c .. :try_end_c} :catch_14
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_17
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_c .. :try_end_c} :catch_d
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    if-eqz v25, :cond_b

    .line 700
    :try_start_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServerDiffs: updating provider with entry "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    invoke-virtual {v0}, Lcom/google/wireless/gdata/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 700
    invoke-static {v13, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v26

    .line 705
    invoke-virtual/range {v26 .. v26}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_e

    .line 708
    invoke-virtual/range {v26 .. v26}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_d
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_d .. :try_end_d} :catch_14
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_17
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_d .. :try_end_d} :catch_13
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    const/4 v3, 0x0

    move-object/from16 v31, v22

    move-object/from16 v1, p0

    move-object/from16 v22, v2

    move-object/from16 v2, v21

    const/16 v20, 0x2

    const/16 v25, 0x0

    move/from16 v20, v4

    move-object v4, v0

    move-object/from16 v32, v5

    move-object/from16 v5, p1

    move-wide/from16 v33, v6

    move-object/from16 v6, p4

    move-object v7, v8

    .line 710
    :try_start_e
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->updateProvider(Lcom/google/wireless/gdata/data/Feed;Ljava/lang/Long;Lcom/google/wireless/gdata/data/Entry;Landroid/content/ContentProvider;Ljava/lang/Object;Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;)V

    .line 713
    iget-object v1, v12, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numEntries:J

    add-long v2, v2, v18

    iput-wide v2, v1, Landroid/content/SyncStats;->numEntries:J

    .line 715
    invoke-virtual {v0}, Lcom/google/wireless/gdata/data/Entry;->getUpdateDate()Ljava/lang/String;

    move-result-object v1
    :try_end_e
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v1, :cond_c

    move-object/from16 v2, v32

    .line 717
    :try_start_f
    invoke-virtual {v2, v1}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z
    :try_end_f
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_f .. :try_end_f} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    const/4 v3, 0x0

    .line 718
    :try_start_10
    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    cmp-long v1, v4, v23

    if-lez v1, :cond_d

    move-wide/from16 v23, v4

    goto :goto_6

    :cond_c
    move-object/from16 v2, v32

    const/4 v3, 0x0

    .line 723
    :cond_d
    :goto_6
    invoke-virtual/range {v26 .. v26}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_10
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_10 .. :try_end_10} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 731
    :goto_7
    :try_start_11
    invoke-virtual/range {v26 .. v26}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_11
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_11 .. :try_end_11} :catch_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_17
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_11 .. :try_end_11} :catch_13
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_9

    :catch_7
    move-object/from16 v2, v32

    :catch_8
    const/4 v3, 0x0

    .line 729
    :catch_9
    :try_start_12
    iget-object v1, v12, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v1, Landroid/content/SyncStats;->numSkippedEntries:J

    add-long v4, v4, v18

    iput-wide v4, v1, Landroid/content/SyncStats;->numSkippedEntries:J

    goto :goto_7

    :catch_a
    move-object/from16 v2, v32

    :catch_b
    const/4 v3, 0x0

    .line 726
    :catch_c
    iget-object v1, v12, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v1, Landroid/content/SyncStats;->numSkippedEntries:J

    add-long v4, v4, v18

    iput-wide v4, v1, Landroid/content/SyncStats;->numSkippedEntries:J
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto :goto_7

    :goto_8
    move-object/from16 v4, p2

    move-object v1, v0

    move-object v5, v2

    move-object/from16 v29, v16

    goto :goto_c

    .line 731
    :goto_9
    :try_start_13
    invoke-virtual/range {v26 .. v26}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 732
    throw v0

    .line 706
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "we should not be in a transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_d
    move-exception v0

    :goto_a
    move v5, v1

    goto/16 :goto_15

    :catchall_3
    move-exception v0

    move-object/from16 v17, v25

    goto/16 :goto_18

    :catch_e
    move-exception v0

    :goto_b
    move-object/from16 v17, v25

    goto/16 :goto_11

    :catch_f
    move-object/from16 v17, v25

    goto/16 :goto_12

    :catch_10
    move-exception v0

    move-object/from16 v17, v25

    goto/16 :goto_13

    :catch_11
    move-exception v0

    move-object/from16 v17, v3

    move/from16 v20, v4

    move-wide/from16 v33, v6

    move-object/from16 v31, v22

    const/4 v3, 0x0

    move-object/from16 v22, v2

    move-object v2, v5

    move-object v4, v0

    .line 673
    iget-object v0, v12, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v5, v0, Landroid/content/SyncStats;->numSkippedEntries:J

    add-long v5, v5, v18

    iput-wide v5, v0, Landroid/content/SyncStats;->numSkippedEntries:J

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error while parsing entry from account "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getAccount()Landroid/accounts/Account;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", feed "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", skipping"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v4, p2

    move-object v5, v2

    :goto_c
    move-object/from16 v3, v17

    move/from16 v0, v20

    move-object/from16 v2, v22

    move-object/from16 v22, v31

    move-wide/from16 v6, v33

    goto/16 :goto_2

    :cond_f
    move-object/from16 v17, v3

    move-object v2, v5

    move-wide/from16 v33, v6

    const/4 v3, 0x0

    move-object/from16 v1, v22

    if-nez v1, :cond_10

    const-wide/16 v6, 0x0

    goto :goto_d

    .line 743
    :cond_10
    invoke-virtual {v2, v1}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 744
    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 745
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x493e0

    add-long/2addr v6, v1

    cmp-long v4, v6, v4

    if-gez v4, :cond_11

    const-wide/16 v4, 0x3e8

    add-long/2addr v1, v4

    :cond_11
    move-wide v6, v1

    :goto_d
    if-ne v0, v15, :cond_12

    const/4 v4, 0x1

    goto :goto_e

    :cond_12
    move v4, v3

    .line 760
    :goto_e
    new-instance v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    :try_end_13
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_13 .. :try_end_13} :catch_14
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_17
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_13 .. :try_end_13} :catch_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    if-eqz v4, :cond_13

    move-wide/from16 v24, v33

    goto :goto_f

    :cond_13
    move-wide/from16 v24, v6

    :goto_f
    int-to-long v2, v0

    add-int/2addr v14, v0

    const/4 v5, 0x1

    add-int/lit8 v30, v14, -0x1

    move-object/from16 v23, v1

    move-wide/from16 v26, v2

    move/from16 v28, v4

    .line 762
    :try_start_14
    invoke-direct/range {v23 .. v30}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;-><init>(JJZLjava/lang/String;I)V

    if-eqz v8, :cond_15

    if-nez v4, :cond_14

    .line 766
    iget-wide v2, v8, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->newWindowEnd:J

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-lez v0, :cond_14

    .line 768
    iget-wide v2, v8, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->newWindowEnd:J

    iput-wide v2, v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->windowEnd:J

    .line 769
    iput-wide v6, v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->newWindowEnd:J

    move-wide/from16 v2, v33

    .line 773
    iput-wide v2, v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->lastUpdatedTime:J

    goto :goto_10

    .line 776
    :cond_14
    iget-wide v2, v8, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->windowEnd:J

    iput-wide v2, v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->windowEnd:J

    .line 777
    iget-wide v2, v8, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->newWindowEnd:J

    iput-wide v2, v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->newWindowEnd:J

    .line 780
    :cond_15
    :goto_10
    iget-boolean v0, v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->hasMoreEntriesToFetch:Z

    iput-boolean v0, v12, Landroid/content/SyncResult;->moreRecordsToGet:Z

    .line 781
    iget-object v0, v11, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;->feedData:Ljava/util/Map;

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 782
    invoke-static {v13, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This call to getServerDiffsImpl for feed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is returning "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_14 .. :try_end_14} :catch_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_17
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_14 .. :try_end_14} :catch_12
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    :cond_16
    if-eqz v17, :cond_1a

    goto/16 :goto_17

    :catch_12
    move-exception v0

    goto :goto_15

    :catch_13
    move-exception v0

    goto :goto_11

    :catch_14
    move-exception v0

    goto :goto_13

    :catchall_4
    move-exception v0

    move-object/from16 v17, v3

    goto/16 :goto_18

    :catch_15
    move-exception v0

    move-object/from16 v17, v3

    :goto_11
    const/4 v5, 0x1

    goto :goto_15

    :catch_16
    move-object/from16 v17, v3

    :catch_17
    :goto_12
    move-object/from16 v2, v17

    goto/16 :goto_19

    :catch_18
    move-exception v0

    move-object/from16 v17, v3

    :goto_13
    move-object/from16 v2, v17

    goto/16 :goto_1b

    :catch_19
    move-exception v0

    const/4 v5, 0x1

    .line 652
    :try_start_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the feed url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not a valid URI"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 653
    iget-object v0, v12, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numParseExceptions:J

    add-long v1, v1, v18

    iput-wide v1, v0, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_15
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_15 .. :try_end_15} :catch_1d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_1c
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_15 .. :try_end_15} :catch_1a
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    return-void

    :catch_1a
    move-exception v0

    goto :goto_14

    :catchall_5
    move-exception v0

    const/4 v2, 0x0

    goto/16 :goto_1d

    :catch_1b
    move-exception v0

    const/4 v5, 0x1

    :goto_14
    const/16 v17, 0x0

    .line 793
    :goto_15
    :try_start_16
    invoke-virtual {v0}, Lcom/google/wireless/gdata/client/HttpException;->getStatusCode()I

    move-result v0

    const/16 v1, 0x191

    if-eq v0, v1, :cond_19

    const/16 v1, 0x193

    if-eq v0, v1, :cond_19

    const/16 v1, 0x19a

    if-eq v0, v1, :cond_17

    .line 817
    iget-object v0, v12, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    add-long v1, v1, v18

    iput-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_16

    .line 800
    :cond_17
    invoke-virtual {v9, v11, v10}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->handleAllDeletedUnavailable(Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move v6, v15

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 805
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getServerDiffsImpl(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;ILcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;Landroid/content/SyncResult;)V

    goto :goto_16

    .line 812
    :cond_18
    iput-boolean v5, v12, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    goto :goto_16

    .line 796
    :cond_19
    iget-object v0, v12, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    invoke-virtual {v9, v0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->invalidateAndUpdateAuthTokenWithStats(Landroid/content/SyncStats;)Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    :goto_16
    if-eqz v17, :cond_1a

    .line 821
    :goto_17
    invoke-interface/range {v17 .. v17}, Lcom/google/wireless/gdata/parser/GDataParser;->close()V

    goto :goto_1c

    :catchall_6
    move-exception v0

    :goto_18
    move-object/from16 v2, v17

    goto :goto_1d

    :catch_1c
    const/4 v2, 0x0

    .line 791
    :goto_19
    :try_start_17
    iget-object v0, v12, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v0, Landroid/content/SyncStats;->numIoExceptions:J

    add-long v3, v3, v18

    iput-wide v3, v0, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    if-eqz v2, :cond_1a

    .line 821
    :goto_1a
    invoke-interface {v2}, Lcom/google/wireless/gdata/parser/GDataParser;->close()V

    goto :goto_1c

    :catchall_7
    move-exception v0

    goto :goto_1d

    :catch_1d
    move-exception v0

    const/4 v2, 0x0

    :goto_1b
    :try_start_18
    const-string v1, "Unable to process gdata feed"

    .line 787
    invoke-static {v13, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 788
    iget-object v0, v12, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v3, v0, Landroid/content/SyncStats;->numParseExceptions:J

    add-long v3, v3, v18

    iput-wide v3, v0, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    if-eqz v2, :cond_1a

    goto :goto_1a

    :cond_1a
    :goto_1c
    return-void

    :goto_1d
    if-eqz v2, :cond_1b

    .line 821
    invoke-interface {v2}, Lcom/google/wireless/gdata/parser/GDataParser;->close()V

    .line 822
    :cond_1b
    throw v0
.end method

.method protected getStatsString(Ljava/lang/StringBuffer;Landroid/content/SyncResult;)V
    .locals 4

    .line 123
    iget v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerQueries:I

    if-lez v0, :cond_0

    const-string v0, "Q"

    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerQueries:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 126
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerEntries:I

    if-lez v0, :cond_1

    const-string v0, "E"

    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerEntries:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 129
    :cond_1
    iget-object p0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, p0, Landroid/content/SyncStats;->numUpdates:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_2

    const-string p0, "u"

    .line 130
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, p0, Landroid/content/SyncStats;->numUpdates:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 132
    :cond_2
    iget-object p0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, p0, Landroid/content/SyncStats;->numInserts:J

    cmp-long p0, v0, v2

    if-lez p0, :cond_3

    const-string p0, "i"

    .line 133
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, p0, Landroid/content/SyncStats;->numInserts:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 135
    :cond_3
    iget-object p0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, p0, Landroid/content/SyncStats;->numDeletes:J

    cmp-long p0, v0, v2

    if-lez p0, :cond_4

    const-string p0, "d"

    .line 136
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, p0, Landroid/content/SyncStats;->numDeletes:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 138
    :cond_4
    invoke-virtual {p2}, Landroid/content/SyncResult;->toDebugString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected abstract handleAllDeletedUnavailable(Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;Ljava/lang/String;)Z
.end method

.method protected invalidateAndUpdateAuthToken()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .line 1159
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    const-string v2, "com.google"

    invoke-virtual {v0, v2, v1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    .line 1162
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/gdata/client/GDataServiceClient;->getServiceName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 1161
    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    return-void
.end method

.method protected invalidateAndUpdateAuthTokenWithStats(Landroid/content/SyncStats;)Z
    .locals 5

    const/4 v0, 0x0

    const-wide/16 v1, 0x1

    .line 1136
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->invalidateAndUpdateAuthToken()V

    .line 1137
    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 1138
    iget-wide v3, p1, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v3, v1

    iput-wide v3, p1, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 1140
    :cond_0
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 1147
    :catch_0
    iget-wide v3, p1, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v3, v1

    iput-wide v3, p1, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_0

    .line 1145
    :catch_1
    iget-wide v3, p1, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v3, v1

    iput-wide v3, p1, Landroid/content/SyncStats;->numAuthExceptions:J

    goto :goto_0

    .line 1143
    :catch_2
    iget-wide v3, p1, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v3, v1

    iput-wide v3, p1, Landroid/content/SyncStats;->numIoExceptions:J

    :goto_0
    return v0
.end method

.method public isReadOnly()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected abstract newEntry()Lcom/google/wireless/gdata/data/Entry;
.end method

.method public newSyncData()Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;
    .locals 0

    .line 494
    new-instance p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;

    invoke-direct {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newSyncData()Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->newSyncData()Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;

    move-result-object p0

    return-object p0
.end method

.method protected onLogSyncDetails(JJLandroid/content/SyncResult;)V
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 113
    invoke-virtual {p0, v0, p5}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getStatsString(Ljava/lang/StringBuffer;Landroid/content/SyncResult;)V

    const/4 p5, 0x4

    new-array p5, p5, [Ljava/lang/Object;

    .line 115
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/wireless/gdata/client/GDataServiceClient;->getServiceName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, p5, v1

    .line 116
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, p5, p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, p5, p1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, p5, p1

    const p0, 0x318f9

    .line 114
    invoke-static {p0, p5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public onSyncCanceled()V
    .locals 1

    const/4 v0, 0x1

    .line 560
    iput-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mSyncCanceled:Z

    return-void
.end method

.method public onSyncEnding(Z)V
    .locals 0

    return-void
.end method

.method public onSyncStarting(Landroid/accounts/Account;ZLandroid/content/SyncResult;)V
    .locals 4

    const/4 p2, 0x0

    .line 1220
    iput-boolean p2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mSyncCanceled:Z

    .line 1221
    iput p2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerQueries:I

    .line 1222
    iput p2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerEntries:I

    const-wide/16 v0, 0x1

    .line 1226
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->onAccountsChanged([Landroid/accounts/Account;)V

    .line 1228
    iput-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    .line 1230
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    .line 1231
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/gdata/client/GDataServiceClient;->getServiceName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 1230
    invoke-virtual {p1, p2, v2, v3}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 1233
    iget-object p0, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide p1, p0, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1240
    :catch_0
    iget-object p0, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide p1, p0, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_0

    .line 1238
    :catch_1
    iget-object p0, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide p1, p0, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Landroid/content/SyncStats;->numAuthExceptions:J

    goto :goto_0

    .line 1236
    :catch_2
    iget-object p0, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide p1, p0, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Landroid/content/SyncStats;->numIoExceptions:J

    :cond_0
    :goto_0
    return-void
.end method

.method public readSyncData(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;
    .locals 6

    .line 479
    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->SYNC_STATE_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v4, v3

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v0, v4, v2

    const/4 v2, 0x0

    const-string v3, "_sync_account = ? AND _sync_account_type = ?"

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 483
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "data"

    .line 484
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->newGDataSyncDataFromBytes([B)Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p0

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 489
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->newSyncData()Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 487
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 488
    throw p0
.end method

.method public bridge synthetic readSyncData(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->readSyncData(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;

    move-result-object p0

    return-object p0
.end method

.method public sendClientDiffs(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/content/SyncResult;Z)V
    .locals 7

    .line 856
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->initTempProvider(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V

    .line 857
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->createSyncInfo()Ljava/lang/Object;

    move-result-object v3

    .line 858
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->newEntry()Lcom/google/wireless/gdata/data/Entry;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .line 859
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->sendClientDiffsImpl(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Object;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/content/SyncResult;Z)V

    return-void
.end method

.method protected sendClientDiffsImpl(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Object;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/content/SyncResult;Z)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    const-string v10, "_sync_local_id"

    .line 880
    iget-object v1, v7, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    const-string v11, "Sync"

    if-nez v1, :cond_0

    const-string v0, "no username, so skipping the merge"

    .line 881
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 892
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getCursorForDeletedTable(Landroid/content/ContentProvider;Ljava/lang/Class;)Landroid/database/Cursor;

    move-result-object v12

    .line 896
    :try_start_0
    invoke-interface {v12, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 897
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    :cond_1
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v14, 0x1

    const-string v6, "stopping since the sync was cancelled"

    if-eqz v1, :cond_4

    :try_start_1
    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->madeSomeProgress()Z

    move-result v1

    if-nez v1, :cond_4

    .line 898
    iget-boolean v1, v7, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mSyncCanceled:Z

    if-eqz v1, :cond_2

    .line 899
    invoke-static {v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 902
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/gdata/data/Entry;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 904
    :try_start_2
    invoke-virtual {v7, v12, v8}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->deletedCursorToEntry(Landroid/database/Cursor;Lcom/google/wireless/gdata/data/Entry;)V
    :try_end_2
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, 0x1

    .line 914
    :try_start_3
    invoke-virtual {v8, v1}, Lcom/google/wireless/gdata/data/Entry;->setDeleted(Z)V

    if-nez p6, :cond_3

    .line 916
    sget-object v2, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->DELETE:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/gdata/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->sendSingleClientDiff(Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;Landroid/content/SyncResult;Z)Lcom/google/wireless/gdata/data/Entry;

    move-result-object v1

    move-object v3, v1

    goto :goto_1

    :cond_3
    move-object v3, v8

    :goto_1
    if-eqz v3, :cond_1

    .line 923
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    .line 922
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->updateProviderInTransaction(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Long;Ljava/lang/Object;Landroid/content/SyncResult;)V

    goto :goto_0

    .line 910
    :catch_0
    iget-object v1, v9, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numParseExceptions:J

    add-long/2addr v2, v14

    iput-wide v2, v1, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 927
    :cond_4
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->deactivate()V

    .line 934
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getCursorForTable(Landroid/content/ContentProvider;Ljava/lang/Class;)Landroid/database/Cursor;

    move-result-object v12

    .line 936
    :try_start_4
    invoke-interface {v12, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 937
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    .line 938
    :goto_3
    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->madeSomeProgress()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 939
    iget-boolean v0, v7, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mSyncCanceled:Z

    if-eqz v0, :cond_5

    .line 940
    invoke-static {v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 944
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/gdata/data/Entry;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v13, p3

    .line 950
    :try_start_5
    invoke-virtual {v7, v12, v8, v13}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->cursorToEntry(Landroid/database/Cursor;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 952
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/gdata/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v0

    .line 953
    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->UPDATE:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    goto :goto_4

    .line 955
    :cond_6
    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->INSERT:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;
    :try_end_5
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_4
    move-object v3, v0

    move-object v2, v1

    const/4 v0, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move-object/from16 v16, v6

    move v6, v0

    .line 969
    :try_start_6
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->sendSingleClientDiff(Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;Landroid/content/SyncResult;Z)Lcom/google/wireless/gdata/data/Entry;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 973
    invoke-interface {v12, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    .line 972
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->updateProviderInTransaction(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Long;Ljava/lang/Object;Landroid/content/SyncResult;)V

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v16, v6

    const-string v1, "skip"

    .line 958
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_5

    .line 961
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to convert row to an Entry, skipping. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_id"

    .line 962
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 961
    invoke-static {v11, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 963
    iget-object v0, v9, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numParseExceptions:J

    add-long/2addr v1, v14

    iput-wide v1, v0, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_8
    :goto_5
    move-object/from16 v6, v16

    goto/16 :goto_3

    .line 977
    :cond_9
    :goto_6
    invoke-interface {v12}, Landroid/database/Cursor;->deactivate()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v12}, Landroid/database/Cursor;->deactivate()V

    .line 978
    throw v0

    :catchall_1
    move-exception v0

    .line 927
    invoke-interface {v12}, Landroid/database/Cursor;->deactivate()V

    .line 928
    throw v0
.end method

.method public sendSingleClientDiff(Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;Landroid/content/SyncResult;Z)Lcom/google/wireless/gdata/data/Entry;
    .locals 14

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    const-string v6, " of "

    const-string v7, "Sync"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v10, 0x1

    .line 1003
    :try_start_0
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$1;->$SwitchMap$com$google$android$gsf$subscribedfeeds$AbstractGDataSyncAdapter$ClientDiffType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v0, v0, v12

    const/4 v12, 0x2

    if-eq v0, v8, :cond_5

    if-eq v0, v12, :cond_2

    const/4 v12, 0x3

    if-eq v0, v12, :cond_0

    goto/16 :goto_0

    .line 1029
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/gdata/data/Entry;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1033
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v0

    iget-object v12, v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v0, v3, v12}, Lcom/google/wireless/gdata/client/GDataServiceClient;->deleteEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    iget-object v0, v5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v12, v0, Landroid/content/SyncStats;->numDeletes:J

    add-long/2addr v12, v10

    iput-wide v12, v0, Landroid/content/SyncStats;->numDeletes:J

    goto :goto_0

    .line 1030
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v12, "entry is not marked as deleted but op is DELETE"

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1017
    :cond_2
    invoke-static {v7, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Inserting entry "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/gdata/data/Entry;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1024
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v0

    iget-object v12, v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v0, v3, v12, v4}, Lcom/google/wireless/gdata/client/GDataServiceClient;->createEntry(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;)Lcom/google/wireless/gdata/data/Entry;

    move-result-object v4

    .line 1025
    iget-object v0, v5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v12, v0, Landroid/content/SyncStats;->numInserts:J

    add-long/2addr v12, v10

    iput-wide v12, v0, Landroid/content/SyncStats;->numInserts:J

    goto :goto_0

    .line 1021
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v12, "entry is marked as deleted but op is INSERT"

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1005
    :cond_5
    invoke-static {v7, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Updating entry "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    :cond_6
    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/gdata/data/Entry;->isDeleted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1012
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v0

    iget-object v12, v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v0, v4, v12}, Lcom/google/wireless/gdata/client/GDataServiceClient;->updateEntry(Lcom/google/wireless/gdata/data/Entry;Ljava/lang/String;)Lcom/google/wireless/gdata/data/Entry;

    move-result-object v4

    .line 1013
    iget-object v0, v5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v12, v0, Landroid/content/SyncStats;->numUpdates:J

    add-long/2addr v12, v10

    iput-wide v12, v0, Landroid/content/SyncStats;->numUpdates:J

    :goto_0
    return-object v4

    .line 1009
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v12, "entry is marked as deleted but op is UPDATE"

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 1055
    invoke-virtual {v0}, Lcom/google/wireless/gdata/client/HttpException;->getStatusCode()I

    move-result v0

    const/16 v6, 0x190

    if-eq v0, v6, :cond_10

    const/16 v6, 0x191

    if-eq v0, v6, :cond_d

    const/16 v6, 0x193

    if-eq v0, v6, :cond_10

    const/16 v6, 0x194

    if-eq v0, v6, :cond_b

    const/16 v6, 0x199

    if-eq v0, v6, :cond_8

    .line 1128
    iget-object v0, v5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v1, v10

    iput-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    return-object v9

    .line 1098
    :cond_8
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->INSERT:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    if-ne v2, v0, :cond_9

    .line 1100
    iget-object v0, v5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    add-long/2addr v1, v10

    iput-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    return-object v9

    .line 1111
    :cond_9
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getSingleEntry(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/wireless/gdata/data/Entry;

    move-result-object v0

    if-nez v0, :cond_a

    .line 1117
    iget-object v0, v5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    add-long/2addr v1, v10

    iput-wide v1, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    return-object v9

    .line 1120
    :cond_a
    iget-object v1, v5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numUpdates:J

    add-long/2addr v2, v10

    iput-wide v2, v1, Landroid/content/SyncStats;->numUpdates:J

    return-object v0

    .line 1076
    :cond_b
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->UPDATE:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    if-ne v2, v0, :cond_c

    .line 1077
    invoke-virtual {v4, v8}, Lcom/google/wireless/gdata/data/Entry;->setDeleted(Z)V

    .line 1079
    :cond_c
    iget-object v0, v5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    add-long/2addr v1, v10

    iput-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    return-object v4

    :cond_d
    if-eqz p5, :cond_f

    .line 1086
    iget-object v0, v5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->invalidateAndUpdateAuthTokenWithStats(Landroid/content/SyncStats;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    .line 1087
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->sendSingleClientDiff(Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;Landroid/content/SyncResult;Z)Lcom/google/wireless/gdata/data/Entry;

    move-result-object v0

    return-object v0

    :cond_e
    return-object v9

    .line 1093
    :cond_f
    iget-object v0, v5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v1, v10

    iput-wide v1, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    return-object v9

    .line 1058
    :cond_10
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->UPDATE:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    if-ne v2, v0, :cond_12

    .line 1060
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v4}, Lcom/google/wireless/gdata/data/Entry;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getSingleEntry(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/wireless/gdata/data/Entry;

    move-result-object v4

    if-nez v4, :cond_11

    .line 1062
    iget-object v0, v5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v1, v10

    iput-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    return-object v9

    .line 1065
    :cond_11
    iget-object v0, v5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numUpdates:J

    add-long/2addr v1, v10

    iput-wide v1, v0, Landroid/content/SyncStats;->numUpdates:J

    goto :goto_1

    .line 1066
    :cond_12
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->INSERT:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    if-ne v2, v0, :cond_13

    .line 1068
    invoke-virtual {v4, v8}, Lcom/google/wireless/gdata/data/Entry;->setDeleted(Z)V

    .line 1069
    iget-object v0, v5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    add-long/2addr v1, v10

    iput-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    goto :goto_1

    .line 1070
    :cond_13
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->DELETE:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    if-ne v2, v0, :cond_14

    .line 1071
    iget-object v0, v5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    add-long/2addr v1, v10

    iput-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    :cond_14
    :goto_1
    return-object v4

    :catch_1
    move-exception v0

    .line 1050
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "object "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " caught an exception during "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1050
    invoke-static {v7, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1052
    iget-object v0, v5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numSkippedEntries:J

    add-long/2addr v1, v10

    iput-wide v1, v0, Landroid/content/SyncStats;->numSkippedEntries:J

    return-object v9

    .line 1047
    :catch_2
    iget-object v0, v5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v1, v10

    iput-wide v1, v0, Landroid/content/SyncStats;->numIoExceptions:J

    return-object v9

    :catch_3
    move-exception v0

    .line 1039
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse error during "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", skipping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1040
    iget-object v0, v5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numParseExceptions:J

    add-long/2addr v1, v10

    iput-wide v1, v0, Landroid/content/SyncStats;->numParseExceptions:J

    return-object v9
.end method

.method protected abstract updateProvider(Lcom/google/wireless/gdata/data/Feed;Ljava/lang/Long;Lcom/google/wireless/gdata/data/Entry;Landroid/content/ContentProvider;Ljava/lang/Object;Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation
.end method

.method updateProviderInTransaction(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Long;Ljava/lang/Object;Landroid/content/SyncResult;)V
    .locals 9

    const-string v0, "Sync"

    .line 1173
    invoke-virtual {p1}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1174
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v2, 0x2

    .line 1176
    :try_start_0
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendClientDiffs: updating provider with entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p3

    move-object v5, p2

    move-object v6, p1

    move-object v7, p4

    .line 1179
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->updateProvider(Lcom/google/wireless/gdata/data/Feed;Ljava/lang/Long;Lcom/google/wireless/gdata/data/Entry;Landroid/content/ContentProvider;Ljava/lang/Object;Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;)V

    .line 1181
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1184
    :catch_0
    :try_start_1
    iget-object p0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide p1, p0, Landroid/content/SyncStats;->numSkippedEntries:J

    const-wide/16 p3, 0x1

    add-long/2addr p1, p3

    iput-wide p1, p0, Landroid/content/SyncStats;->numSkippedEntries:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1186
    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1187
    throw p0
.end method

.method protected abstract updateQueryParameters(Lcom/google/wireless/gdata/client/QueryParams;Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;)V
.end method

.method public writeSyncData(Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V
    .locals 5

    .line 503
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->SYNC_STATE_CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v3, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "_sync_account = ? AND _sync_account_type = ?"

    invoke-virtual {p2, v0, v2, v1}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "_sync_account_type"

    const-string v1, "_sync_account"

    const-string v2, "data"

    if-nez p1, :cond_0

    .line 507
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x0

    .line 508
    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object p0, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    sget-object p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->SYNC_STATE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, p0, p1}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void

    .line 514
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 515
    check-cast p1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;

    invoke-static {p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->newBytesFromGDataSyncData(Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;)[B

    move-result-object p1

    invoke-virtual {v3, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 516
    iget-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object p0, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    sget-object p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->SYNC_STATE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, p0, v3}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method
