.class public abstract Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;
.super Ljava/lang/Object;
.source "AbstractTableMerger.java"


# static fields
.field private static TRACE:Z

.field protected static mSyncMarkValues:Landroid/content/ContentValues;

.field private static final syncDirtyProjection:[Ljava/lang/String;

.field private static final syncIdAndVersionProjection:[Ljava/lang/String;


# instance fields
.field protected mDb:Landroid/database/sqlite/SQLiteDatabase;

.field protected mDeletedTable:Ljava/lang/String;

.field protected mDeletedTableURL:Landroid/net/Uri;

.field private volatile mIsMergeCancelled:Z

.field protected mTable:Ljava/lang/String;

.field protected mTableURL:Landroid/net/Uri;

.field private mValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 54
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mSyncMarkValues:Landroid/content/ContentValues;

    const/4 v1, 0x1

    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_sync_mark"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x0

    .line 56
    sput-boolean v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->TRACE:Z

    const-string v0, "_sync_dirty"

    const-string v1, "_id"

    const-string v2, "_sync_id"

    const-string v3, "_sync_version"

    .line 60
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->syncDirtyProjection:[Ljava/lang/String;

    .line 62
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->syncIdAndVersionProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 85
    iput-object p2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mTable:Ljava/lang/String;

    .line 86
    iput-object p3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mTableURL:Landroid/net/Uri;

    .line 87
    iput-object p4, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    .line 88
    iput-object p5, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDeletedTableURL:Landroid/net/Uri;

    .line 89
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    iput-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mValues:Landroid/content/ContentValues;

    return-void
.end method

.method private static findInCursor(Landroid/database/Cursor;ILjava/lang/String;)Z
    .locals 2

    .line 124
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 127
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private findLocalChanges(Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/accounts/Account;Landroid/content/SyncResult;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v3, "_id"

    const-string v4, "AbstractTableMerger"

    const/4 v5, 0x2

    .line 543
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "generating client updates"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 545
    iget-object v8, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v2, v6, v7

    .line 550
    iget-object v7, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v8, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mTable:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v10, "(_sync_account IS NULL OR (_sync_account=? and _sync_account_type=?)) and (_sync_id IS NULL OR (_sync_dirty > 0 and _sync_version IS NOT NULL))"

    move-object v11, v6

    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 553
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    int-to-long v14, v7

    .line 554
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 555
    iget-boolean v7, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mIsMergeCancelled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v7, :cond_1

    .line 570
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-void

    .line 558
    :cond_1
    :try_start_1
    iget-object v7, v1, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    if-nez v7, :cond_2

    .line 560
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->getTemporaryInstance()Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-result-object v7

    iput-object v7, v1, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    .line 562
    :cond_2
    iget-object v7, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 563
    iget-object v7, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v2, v7}, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 564
    iget-object v7, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v7, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 565
    iget-object v7, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mValues:Landroid/content/ContentValues;

    const-string v8, "_sync_local_id"

    invoke-static {v2, v3, v7, v8}, Landroid/database/DatabaseUtils;->cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 567
    iget-object v7, v1, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    iget-object v8, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mTableURL:Landroid/net/Uri;

    iget-object v9, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 570
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 574
    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "generating client deletions"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_4
    iget-object v2, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mTable:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    .line 577
    iget-object v8, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    if-eqz v8, :cond_8

    .line 578
    iget-object v7, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v9, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->syncIdAndVersionProjection:[Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_sync_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v10, "_sync_account=? AND _sync_account_type=? AND _sync_id IS NOT NULL"

    move-object v11, v6

    move-wide v15, v14

    move-object v14, v4

    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 584
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    int-to-long v5, v5

    .line 585
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 586
    iget-boolean v7, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mIsMergeCancelled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_5

    .line 596
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-void

    .line 587
    :cond_5
    :try_start_3
    iget-object v7, v1, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    if-nez v7, :cond_6

    .line 589
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->getTemporaryInstance()Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-result-object v7

    iput-object v7, v1, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    .line 591
    :cond_6
    iget-object v7, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 592
    iget-object v7, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mValues:Landroid/content/ContentValues;

    invoke-static {v4, v7}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 593
    iget-object v7, v1, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    iget-object v8, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDeletedTableURL:Landroid/net/Uri;

    iget-object v9, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 596
    :cond_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-object/from16 v0, p4

    move-wide v4, v5

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 597
    throw v0

    :cond_8
    move-wide v15, v14

    move-object/from16 v0, p4

    .line 600
    :goto_2
    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v0, Landroid/content/SyncStats;->numDeletes:J

    add-long/2addr v6, v4

    iput-wide v6, v0, Landroid/content/SyncStats;->numDeletes:J

    .line 601
    iget-wide v4, v0, Landroid/content/SyncStats;->numUpdates:J

    add-long/2addr v4, v15

    iput-wide v4, v0, Landroid/content/SyncStats;->numUpdates:J

    .line 602
    iget-wide v4, v0, Landroid/content/SyncStats;->numEntries:J

    add-long/2addr v4, v2

    iput-wide v4, v0, Landroid/content/SyncStats;->numEntries:J

    return-void

    :catchall_1
    move-exception v0

    .line 570
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 571
    throw v0
.end method

.method private fullyDeleteMatchingRows(Landroid/database/Cursor;Landroid/accounts/Account;Landroid/content/SyncResult;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "_sync_id"

    .line 490
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 491
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    const/4 v6, 0x0

    const-string v7, "_id"

    const/4 v8, 0x0

    if-eqz v4, :cond_0

    const/4 v9, 0x3

    :try_start_0
    new-array v9, v9, [Ljava/lang/String;

    .line 498
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v8

    iget-object v1, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v1, v9, v5

    const/4 v1, 0x2

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v2, v9, v1

    .line 500
    iget-object v10, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v11, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mTable:Ljava/lang/String;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v12

    const-string v13, "_sync_id=? and _sync_account=? and _sync_account_type=?"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v14, v9

    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v6, v1

    goto :goto_0

    :cond_0
    const-string v2, "_sync_local_id"

    .line 503
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    new-array v3, v5, [Ljava/lang/String;

    .line 504
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v8

    .line 505
    iget-object v9, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v10, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mTable:Ljava/lang/String;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v11

    const-string v12, "_id=?"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v13, v3

    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v6, v1

    move-object v9, v3

    .line 508
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 509
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    .line 510
    invoke-virtual {v0, v6}, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->deleteRow(Landroid/database/Cursor;)V

    move-object/from16 v1, p3

    .line 511
    iget-object v2, v1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v2, Landroid/content/SyncStats;->numDeletes:J

    const-wide/16 v10, 0x1

    add-long/2addr v7, v10

    iput-wide v7, v2, Landroid/content/SyncStats;->numDeletes:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    if-eqz v6, :cond_2

    .line 514
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v4, :cond_3

    .line 516
    iget-object v1, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 517
    iget-object v0, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "_sync_id=? and _sync_account=? and _sync_account_type=?"

    invoke-virtual {v0, v1, v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 514
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 515
    :cond_4
    throw v0
.end method


# virtual methods
.method protected cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    .locals 0

    .line 525
    invoke-static {p1, p2}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    return-void
.end method

.method public abstract deleteRow(Landroid/database/Cursor;)V
.end method

.method public abstract insertRow(Landroid/content/ContentProvider;Landroid/database/Cursor;)V
.end method

.method public merge(Landroid/accounts/Account;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;Landroid/content/SyncResult;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V
    .locals 1

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mIsMergeCancelled:Z

    if-eqz p2, :cond_1

    .line 151
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mergeServerDiffs(Landroid/accounts/Account;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/content/SyncResult;)V

    .line 155
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->notifyChanges()V

    goto :goto_0

    .line 152
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "this must be called from within a DB transaction"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 159
    invoke-direct {p0, p3, p5, p1, p4}, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->findLocalChanges(Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/accounts/Account;Landroid/content/SyncResult;)V

    :cond_2
    const/4 p0, 0x2

    const-string p1, "AbstractTableMerger"

    .line 161
    invoke-static {p1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "merge complete"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public mergeServerDiffs(Landroid/accounts/Account;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/content/SyncResult;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "_sync_version"

    const-string v1, "."

    const-string v11, "_sync_id"

    .line 169
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->getContainsDiffs()Z

    move-result v12

    .line 172
    iget-object v2, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mTable:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mSyncMarkValues:Landroid/content/ContentValues;

    const/4 v13, 0x0

    invoke-virtual {v2, v3, v4, v13, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 173
    iget-object v2, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 174
    iget-object v3, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v4, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mSyncMarkValues:Landroid/content/ContentValues;

    invoke-virtual {v3, v2, v4, v13, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    const/4 v14, 0x2

    :try_start_0
    new-array v2, v14, [Ljava/lang/String;

    .line 182
    iget-object v3, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v2, v6

    iget-object v3, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 183
    iget-object v15, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mTable:Ljava/lang/String;

    sget-object v17, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->syncDirtyProjection:[Ljava/lang/String;

    const-string v18, "_sync_mark> 0 and _sync_account=? and _sync_account_type=?"

    const/16 v20, 0x0

    const/16 v21, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mTable:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v16, v3

    move-object/from16 v19, v2

    invoke-virtual/range {v15 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 186
    :try_start_1
    iget-object v3, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-eqz v3, :cond_1

    .line 187
    :try_start_2
    iget-object v15, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    sget-object v17, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->syncIdAndVersionProjection:[Ljava/lang/String;

    const-string v18, "_sync_mark> 0 and _sync_account=? and _sync_account_type=?"

    const/16 v20, 0x0

    const/16 v21, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v16, v3

    move-object/from16 v19, v2

    invoke-virtual/range {v15 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v14, v5

    move-object v15, v13

    goto/16 :goto_1a

    .line 191
    :cond_1
    :try_start_3
    iget-object v2, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select \'a\' as _sync_id, \'b\' as _sync_version limit 0"

    .line 192
    invoke-virtual {v2, v3, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :goto_0
    move-object v15, v2

    .line 196
    :try_start_4
    iget-object v2, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mTableURL:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mTable:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object/from16 v1, p2

    move-object v14, v5

    move-object v5, v6

    const/4 v7, 0x0

    move-object v6, v13

    :try_start_5
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 198
    :try_start_6
    invoke-interface {v15, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 199
    invoke-interface {v15, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 200
    invoke-interface {v13, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 201
    invoke-interface {v13, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v1, "_sync_local_id"

    .line 202
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 207
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 208
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move v1, v7

    move v3, v1

    const/4 v7, 0x0

    .line 209
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move/from16 v19, v3

    const-string v3, "_sync_id=?"

    const-wide/16 v20, 0x1

    const-string v8, "AbstractTableMerger"

    if-eqz v18, :cond_2f

    move/from16 v18, v2

    .line 210
    :try_start_7
    iget-boolean v2, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mIsMergeCancelled:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v2, :cond_5

    if-eqz v13, :cond_2

    .line 462
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v14, :cond_3

    .line 463
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v15, :cond_4

    .line 464
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void

    .line 213
    :cond_5
    :try_start_8
    iget-object v2, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContended()Z

    .line 214
    invoke-interface {v13, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v22, v11

    .line 215
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-wide/16 v25, 0x0

    add-int/lit8 v1, v1, 0x1

    move/from16 v23, v4

    const/4 v4, 0x2

    .line 220
    invoke-static {v8, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v27

    if-eqz v27, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v10

    const-string v10, "processing server entry "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    move-object/from16 v27, v10

    .line 223
    :goto_2
    sget-boolean v4, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->TRACE:Z

    if-eqz v4, :cond_8

    const/16 v4, 0xa

    if-ne v1, v4, :cond_7

    const-string v4, "atmtrace"

    .line 225
    invoke-static {v4}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    :cond_7
    const/16 v4, 0x14

    if-ne v1, v4, :cond_8

    .line 228
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    :cond_8
    const/4 v4, 0x2

    .line 236
    invoke-static {v8, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "found event with serverSyncID "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v2, 0x2

    .line 240
    invoke-static {v8, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v2, "server entry doesn\'t have a serverSyncID"

    .line 241
    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 249
    :cond_a
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v2, 0x2

    .line 250
    invoke-static {v8, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skipping record with duplicate remote server id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_3
    move-object/from16 v8, p2

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v11, v22

    move/from16 v4, v23

    move-object/from16 v10, v27

    goto/16 :goto_1

    .line 260
    :cond_c
    :goto_4
    invoke-interface {v14}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 261
    iget-boolean v4, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mIsMergeCancelled:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v4, :cond_10

    if-eqz v13, :cond_d

    .line 462
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_d
    if-eqz v14, :cond_e

    .line 463
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_e
    if-eqz v15, :cond_f

    .line 464
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_f
    return-void

    :cond_10
    add-int/lit8 v19, v19, 0x1

    const/4 v4, 0x2

    .line 265
    :try_start_9
    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 270
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    const-string v4, "local record "

    if-eqz v10, :cond_12

    const/4 v7, 0x2

    .line 271
    :try_start_a
    invoke-static {v8, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 272
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v24, v5

    const/4 v10, 0x1

    .line 273
    invoke-interface {v14, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " has no _sync_id, ignoring"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 272
    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_11
    move/from16 v24, v5

    const/4 v10, 0x1

    .line 276
    :goto_5
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move/from16 v5, v24

    goto :goto_4

    :cond_12
    move/from16 v24, v5

    const/4 v10, 0x1

    .line 281
    invoke-virtual {v2, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    const-string v10, " has _sync_id "

    if-lez v5, :cond_16

    const/4 v5, 0x2

    .line 285
    :try_start_b
    invoke-static {v8, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v28

    if-eqz v28, :cond_13

    .line 286
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v28, v1

    const/4 v4, 0x1

    .line 287
    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " that is < server _sync_id "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_13
    move/from16 v28, v1

    :goto_6
    if-eqz v12, :cond_14

    .line 292
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-object/from16 v0, p0

    goto :goto_7

    :cond_14
    move-object/from16 v0, p0

    .line 294
    invoke-virtual {v0, v14}, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->deleteRow(Landroid/database/Cursor;)V

    .line 295
    iget-object v1, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 296
    iget-object v1, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v10, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v7, v10, v5

    invoke-virtual {v1, v4, v3, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 299
    :cond_15
    iget-object v1, v9, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v1, Landroid/content/SyncStats;->numDeletes:J

    add-long v4, v4, v20

    iput-wide v4, v1, Landroid/content/SyncStats;->numDeletes:J

    .line 300
    iget-object v1, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContended()Z

    :goto_7
    move/from16 v5, v24

    move/from16 v1, v28

    goto/16 :goto_4

    :cond_16
    move/from16 v28, v1

    if-gez v5, :cond_18

    const/4 v1, 0x2

    .line 308
    invoke-static {v8, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v29

    if-eqz v29, :cond_17

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v30, v3

    move-object/from16 v31, v4

    move/from16 v29, v12

    const/4 v12, 0x1

    .line 310
    invoke-interface {v14, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " that is > server _sync_id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 309
    invoke-static {v8, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_17
    move-object/from16 v30, v3

    move-object/from16 v31, v4

    move/from16 v29, v12

    :goto_8
    const/4 v7, 0x0

    goto :goto_9

    :cond_18
    move-object/from16 v30, v3

    move-object/from16 v31, v4

    move/from16 v29, v12

    :goto_9
    if-nez v5, :cond_1b

    const/4 v1, 0x2

    .line 319
    invoke-static {v8, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v31

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    .line 321
    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " that matches the server _sync_id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-static {v8, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    const/4 v1, 0x0

    .line 325
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v1, 0x1

    goto :goto_a

    :cond_1a
    const/4 v1, 0x0

    :goto_a
    const/4 v3, 0x1

    .line 326
    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    const/4 v3, 0x3

    .line 327
    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 328
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_b

    :cond_1b
    const/4 v1, 0x0

    const/4 v3, 0x0

    goto :goto_b

    :cond_1c
    move/from16 v28, v1

    move-object/from16 v30, v3

    move/from16 v24, v5

    move/from16 v29, v12

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 338
    :goto_b
    invoke-static {v15, v6, v2}, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->findInCursor(Landroid/database/Cursor;ILjava/lang/String;)Z

    move-result v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    const-string v5, "remote record "

    if-eqz v4, :cond_20

    const/4 v1, 0x2

    .line 339
    :try_start_c
    invoke-static {v8, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is in the deleted table"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    move/from16 v10, v24

    .line 343
    invoke-interface {v15, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-static {v1, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    const/4 v1, 0x2

    .line 345
    invoke-static {v8, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setting version of deleted record "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_1e
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v12, v27

    .line 350
    invoke-virtual {v1, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v3, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v7, v5

    move-object/from16 v5, v30

    invoke-virtual {v3, v4, v1, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_c

    :cond_1f
    move-object/from16 v12, v27

    :goto_c
    move-object/from16 v8, p2

    move-object/from16 v24, v2

    move/from16 v25, v18

    move/from16 v7, v23

    move/from16 v11, v28

    move/from16 v18, v6

    goto/16 :goto_13

    :cond_20
    move/from16 v4, v18

    move/from16 v10, v24

    move-object/from16 v12, v27

    .line 362
    invoke-interface {v13, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-nez v18, :cond_22

    move/from16 v18, v6

    .line 363
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v1, 0x2

    .line 364
    invoke-static {v8, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the remote record with sync id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has a local sync id, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    move-object/from16 v24, v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    goto :goto_d

    :cond_22
    move/from16 v18, v6

    move-object/from16 v24, v7

    move-wide/from16 v6, v25

    .line 373
    :goto_d
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_2a

    if-eqz v3, :cond_24

    if-eqz v11, :cond_24

    .line 379
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-nez v25, :cond_23

    goto :goto_e

    :cond_23
    const/16 v25, 0x0

    goto :goto_f

    :cond_24
    :goto_e
    const/16 v25, 0x1

    :goto_f
    if-eqz v25, :cond_28

    const-string v3, ", local _id "

    if-eqz v1, :cond_26

    const/4 v1, 0x2

    .line 382
    :try_start_d
    invoke-static {v8, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_25

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " conflicts with local _sync_id "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v24

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    const/4 v1, 0x1

    goto :goto_10

    :cond_26
    move-object/from16 v11, v24

    const/4 v1, 0x2

    .line 389
    invoke-static {v8, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_27

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " updates local _sync_id "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const/4 v1, 0x0

    const/4 v3, 0x1

    goto :goto_11

    :cond_28
    const/4 v1, 0x2

    .line 400
    invoke-static {v8, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping update: localSyncVersion: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", serverSyncVersion: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    const/4 v1, 0x0

    :goto_10
    const/4 v3, 0x0

    :goto_11
    const/4 v5, 0x0

    goto :goto_12

    :cond_2a
    const/4 v1, 0x2

    .line 408
    invoke-static {v8, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is new, inserting"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    :goto_12
    if-eqz v3, :cond_2c

    move-object/from16 v8, p2

    .line 415
    invoke-virtual {v0, v6, v7, v8, v13}, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->updateRow(JLandroid/content/ContentProvider;Landroid/database/Cursor;)V

    .line 416
    iget-object v1, v9, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v5, v1, Landroid/content/SyncStats;->numUpdates:J

    add-long v5, v5, v20

    iput-wide v5, v1, Landroid/content/SyncStats;->numUpdates:J

    move-object/from16 v24, v2

    move/from16 v25, v4

    move/from16 v7, v23

    move/from16 v11, v28

    goto :goto_13

    :cond_2c
    move-object/from16 v8, p2

    if-eqz v1, :cond_2d

    move/from16 v11, v28

    move-object/from16 v1, p0

    move-object/from16 v24, v2

    move/from16 v25, v4

    move-wide v2, v6

    move/from16 v7, v23

    move-object/from16 v4, v24

    move-object/from16 v5, p2

    move-object v6, v13

    .line 418
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->resolveRow(JLjava/lang/String;Landroid/content/ContentProvider;Landroid/database/Cursor;)V

    .line 419
    iget-object v1, v9, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numUpdates:J

    add-long v2, v2, v20

    iput-wide v2, v1, Landroid/content/SyncStats;->numUpdates:J

    goto :goto_13

    :cond_2d
    move-object/from16 v24, v2

    move/from16 v25, v4

    move/from16 v7, v23

    move/from16 v11, v28

    if-eqz v5, :cond_2e

    .line 421
    invoke-virtual {v0, v8, v13}, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->insertRow(Landroid/content/ContentProvider;Landroid/database/Cursor;)V

    .line 422
    iget-object v1, v9, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numInserts:J

    add-long v2, v2, v20

    iput-wide v2, v1, Landroid/content/SyncStats;->numInserts:J

    :cond_2e
    :goto_13
    move v4, v7

    move v5, v10

    move v1, v11

    move-object v10, v12

    move/from16 v6, v18

    move/from16 v3, v19

    move/from16 v11, v22

    move-object/from16 v7, v24

    move/from16 v2, v25

    move/from16 v12, v29

    goto/16 :goto_1

    :cond_2f
    move-object v5, v3

    move-object v2, v8

    move/from16 v29, v12

    move-object/from16 v8, p2

    const/4 v3, 0x2

    .line 426
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 427
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " server entries"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    move/from16 v3, v19

    if-nez v29, :cond_38

    .line 435
    :goto_14
    invoke-interface {v14}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_38

    const/4 v1, 0x2

    .line 436
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 437
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 438
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_14

    .line 441
    :cond_31
    iget-boolean v1, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mIsMergeCancelled:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-eqz v1, :cond_35

    if-eqz v13, :cond_32

    .line 462
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_32
    if-eqz v14, :cond_33

    .line 463
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_33
    if-eqz v15, :cond_34

    .line 464
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_34
    return-void

    :cond_35
    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x2

    .line 445
    :try_start_e
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleting local record "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    .line 448
    invoke-interface {v14, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " _sync_id "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 446
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_36
    invoke-virtual {v0, v14}, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->deleteRow(Landroid/database/Cursor;)V

    .line 452
    iget-object v1, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    if-eqz v1, :cond_37

    .line 453
    iget-object v1, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v6, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    const/4 v7, 0x1

    new-array v10, v7, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-virtual {v1, v6, v5, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_15

    :cond_37
    const/4 v7, 0x1

    const/4 v11, 0x0

    .line 455
    :goto_15
    iget-object v1, v9, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v1, Landroid/content/SyncStats;->numDeletes:J

    add-long v7, v7, v20

    iput-wide v7, v1, Landroid/content/SyncStats;->numDeletes:J

    .line 456
    iget-object v1, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContended()Z

    move-object/from16 v8, p2

    goto :goto_14

    :cond_38
    const/4 v1, 0x2

    .line 459
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_39

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checked "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " local entries"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :cond_39
    if-eqz v13, :cond_3a

    .line 462
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_3a
    if-eqz v14, :cond_3b

    .line 463
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_3b
    if-eqz v15, :cond_3c

    .line 464
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_3c
    const/4 v1, 0x2

    .line 468
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3d

    const-string v1, "applying deletions from the server"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_3d
    iget-object v2, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDeletedTableURL:Landroid/net/Uri;

    if-eqz v2, :cond_40

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p2

    .line 472
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 474
    :goto_16
    :try_start_f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 475
    iget-boolean v2, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mIsMergeCancelled:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-eqz v2, :cond_3e

    .line 483
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    :cond_3e
    move-object/from16 v2, p1

    .line 479
    :try_start_10
    invoke-direct {v0, v1, v2, v9}, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->fullyDeleteMatchingRows(Landroid/database/Cursor;Landroid/accounts/Account;Landroid/content/SyncResult;)V

    .line 480
    iget-object v3, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContended()Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_16

    .line 483
    :cond_3f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_17

    :catchall_1
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 484
    throw v0

    :cond_40
    :goto_17
    return-void

    :catchall_2
    move-exception v0

    goto :goto_1a

    :catchall_3
    move-exception v0

    goto :goto_18

    :catchall_4
    move-exception v0

    move-object v14, v5

    :goto_18
    const/4 v13, 0x0

    goto :goto_1a

    :catchall_5
    move-exception v0

    move-object v14, v5

    const/4 v13, 0x0

    goto :goto_19

    :catchall_6
    move-exception v0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_19
    const/4 v15, 0x0

    :goto_1a
    if-eqz v13, :cond_41

    .line 462
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_41
    if-eqz v14, :cond_42

    .line 463
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_42
    if-eqz v15, :cond_43

    .line 464
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 465
    :cond_43
    throw v0
.end method

.method protected abstract notifyChanges()V
.end method

.method public abstract resolveRow(JLjava/lang/String;Landroid/content/ContentProvider;Landroid/database/Cursor;)V
.end method

.method public abstract updateRow(JLandroid/content/ContentProvider;Landroid/database/Cursor;)V
.end method
