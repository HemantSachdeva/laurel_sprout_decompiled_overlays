.class public abstract Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;
.super Lcom/google/android/common/LoggingThreadedSyncAdapter;
.source "TempProviderSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;
    }
.end annotation


# instance fields
.field private volatile mAdapterSyncStarted:Z

.field private final mContext:Landroid/content/Context;

.field private volatile mIsCanceled:Z

.field private final mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

.field private volatile mProviderSyncStarted:Z

.field protected mRoutingInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V
    .locals 1

    const/4 v0, 0x1

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/google/android/common/LoggingThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mIsCanceled:Z

    .line 46
    iput-object p2, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    .line 47
    iput-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private runSyncLoop(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/SyncResult;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 266
    new-instance v10, Landroid/util/TimingLogger;

    const-string v1, "SyncProfiling"

    const-string v2, "sync"

    invoke-direct {v10, v1, v2}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "start"

    .line 267
    invoke-virtual {v10, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    const-string v1, "deletions_override"

    const/4 v11, 0x0

    .line 272
    invoke-virtual {v8, v1, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    const-string v1, "discard_deletions"

    .line 275
    invoke-virtual {v8, v1, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    const-string v1, "upload"

    .line 276
    invoke-virtual {v8, v1, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 279
    new-instance v14, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;

    invoke-direct {v14}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;-><init>()V

    const-string v15, "runSyncLoop: result: "

    const-string v6, "stop"

    const/4 v4, 0x2

    const-string v2, "Sync"

    if-nez v1, :cond_17

    move v1, v11

    const/16 v16, 0x0

    .line 290
    :goto_0
    :try_start_0
    iget-boolean v3, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mIsCanceled:Z

    if-nez v3, :cond_16

    add-int/lit8 v17, v1, 0x1

    const/16 v3, 0x14

    if-ne v1, v3, :cond_0

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runSyncLoop: Hit max loop count while getting server diffs "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    move-object/from16 v5, v16

    const/4 v1, 0x1

    const/4 v11, 0x1

    move-object v4, v2

    move-object v2, v6

    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_0
    if-eqz v16, :cond_1

    .line 304
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 305
    :cond_1
    iget-object v1, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    invoke-virtual {v1}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->getTemporaryInstance()Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 308
    :try_start_1
    invoke-virtual {v0, v3}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->initTempProvider(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->createSyncInfo()Ljava/lang/Object;

    move-result-object v16

    .line 310
    invoke-virtual {v0, v3}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->readSyncData(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez v1, :cond_2

    .line 314
    :try_start_2
    iget-object v1, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    invoke-virtual {v1, v7}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->wipeAccount(Landroid/accounts/Account;)V

    .line 315
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->newSyncData()Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v16, v3

    goto/16 :goto_6

    .line 317
    :cond_2
    :goto_1
    :try_start_3
    invoke-virtual/range {p3 .. p3}, Landroid/content/SyncResult;->clear()V

    .line 318
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v18, :cond_3

    .line 319
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "runSyncLoop: running getServerDiffs using syncData "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 319
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    move-object v5, v1

    move-object/from16 v1, p0

    move-object v4, v2

    move-object v2, v5

    move-object/from16 v19, v3

    const/4 v11, 0x1

    move-object/from16 v20, v4

    move-object/from16 v4, p2

    move-object/from16 v21, v5

    move-object/from16 v5, v16

    move-object/from16 v22, v6

    move-object/from16 v6, p3

    .line 322
    :try_start_5
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->getServerDiffs(Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/SyncResult;)V

    .line 325
    iget-boolean v1, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mIsCanceled:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_8

    if-eqz v13, :cond_4

    .line 485
    iput-boolean v11, v9, Landroid/content/SyncResult;->fullSyncRequested:Z

    :cond_4
    move-object/from16 v1, v19

    if-eqz v1, :cond_5

    .line 487
    invoke-virtual {v1}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 488
    :cond_5
    iget-object v0, v14, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    :cond_6
    move-object/from16 v2, v22

    .line 489
    :cond_7
    :goto_2
    invoke-virtual {v10, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 490
    invoke-virtual {v10}, Landroid/util/TimingLogger;->dumpToLog()V

    return-void

    :cond_8
    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move-object/from16 v4, v20

    const/4 v3, 0x2

    .line 326
    :try_start_6
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 327
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_9
    invoke-virtual/range {p3 .. p3}, Landroid/content/SyncResult;->hasError()Z

    move-result v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v5, :cond_c

    if-eqz v13, :cond_a

    .line 485
    iput-boolean v11, v9, Landroid/content/SyncResult;->fullSyncRequested:Z

    :cond_a
    if-eqz v1, :cond_b

    .line 487
    invoke-virtual {v1}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 488
    :cond_b
    iget-object v0, v14, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    if-eqz v0, :cond_7

    :goto_3
    invoke-virtual {v0}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    goto :goto_2

    .line 330
    :cond_c
    :try_start_7
    iget-boolean v5, v9, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    if-eqz v5, :cond_d

    .line 335
    iget-object v5, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    invoke-virtual {v5, v7}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->wipeAccount(Landroid/accounts/Account;)V

    const/4 v6, 0x0

    goto :goto_4

    :cond_d
    move-object/from16 v5, v21

    .line 340
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->writeSyncData(Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V

    .line 343
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "runSyncLoop: running merge"

    .line 344
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_e
    iget-object v5, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6, v9}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->merge(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;Landroid/content/SyncResult;)V

    .line 347
    iget-boolean v5, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mIsCanceled:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v5, :cond_11

    if-eqz v13, :cond_f

    .line 485
    iput-boolean v11, v9, Landroid/content/SyncResult;->fullSyncRequested:Z

    :cond_f
    if-eqz v1, :cond_10

    .line 487
    invoke-virtual {v1}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 488
    :cond_10
    iget-object v0, v14, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    if-eqz v0, :cond_7

    goto :goto_3

    .line 348
    :cond_11
    :try_start_8
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 349
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_12
    iget-boolean v5, v9, Landroid/content/SyncResult;->moreRecordsToGet:Z

    if-nez v5, :cond_14

    .line 354
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_13

    const-string v5, "runSyncLoop: fetched all data, moving on"

    .line 355
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    move-object v5, v1

    goto :goto_7

    .line 359
    :cond_14
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_15

    const-string v5, "runSyncLoop: more data to fetch, looping"

    .line 360
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_15
    :goto_4
    move-object/from16 v16, v1

    move-object v6, v2

    move-object v2, v4

    move/from16 v1, v17

    const/4 v11, 0x0

    move v4, v3

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v1, v3

    move-object v2, v6

    :goto_5
    move-object/from16 v16, v1

    goto/16 :goto_d

    :cond_16
    move v3, v4

    const/4 v11, 0x1

    move-object v4, v2

    move-object v2, v6

    const/4 v6, 0x0

    move-object/from16 v5, v16

    goto :goto_7

    :catchall_4
    move-exception v0

    :goto_6
    move-object v2, v6

    goto/16 :goto_d

    :cond_17
    move v3, v4

    const/4 v11, 0x1

    move-object v4, v2

    move-object v2, v6

    const/4 v6, 0x0

    move-object v5, v6

    :goto_7
    const/4 v1, 0x0

    .line 385
    :goto_8
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->isReadOnly()Z

    move-result v7

    const-wide/16 v17, 0x0

    if-eqz v5, :cond_18

    .line 388
    invoke-virtual {v5}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    move-object v5, v6

    :cond_18
    if-eqz v13, :cond_19

    .line 396
    iget-object v8, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    invoke-virtual {v8}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->getTemporaryInstance()Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-result-object v5

    .line 397
    invoke-virtual {v0, v5}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->initTempProvider(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V

    .line 398
    invoke-virtual {v0, v6, v5}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->writeSyncData(Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V

    :cond_19
    const/4 v8, 0x0

    .line 401
    :goto_9
    iget-boolean v3, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mIsCanceled:Z

    if-nez v3, :cond_29

    .line 405
    iget-object v3, v14, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    if-eqz v3, :cond_1a

    .line 406
    iget-object v3, v14, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    invoke-virtual {v3}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 407
    iput-object v6, v14, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    .line 409
    :cond_1a
    invoke-virtual/range {p3 .. p3}, Landroid/content/SyncResult;->clear()V

    .line 410
    iget-object v3, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    if-eqz v7, :cond_1b

    goto :goto_a

    :cond_1b
    move-object v6, v14

    :goto_a
    invoke-virtual {v3, v5, v6, v9}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->merge(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;Landroid/content/SyncResult;)V

    .line 411
    iget-boolean v3, v0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mIsCanceled:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    if-eqz v3, :cond_1e

    if-eqz v13, :cond_1c

    .line 485
    iput-boolean v11, v9, Landroid/content/SyncResult;->fullSyncRequested:Z

    :cond_1c
    if-eqz v5, :cond_1d

    .line 487
    invoke-virtual {v5}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 488
    :cond_1d
    iget-object v0, v14, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    if-eqz v0, :cond_7

    goto/16 :goto_3

    :cond_1e
    const/4 v3, 0x2

    .line 412
    :try_start_a
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 413
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    if-eqz v7, :cond_20

    const/4 v3, 0x0

    goto :goto_b

    .line 417
    :cond_20
    iget-object v3, v14, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    :goto_b
    if-nez v3, :cond_21

    goto/16 :goto_c

    .line 424
    :cond_21
    iget-object v6, v9, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move/from16 v16, v12

    iget-wide v11, v6, Landroid/content/SyncStats;->numUpdates:J

    iget-object v6, v9, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move/from16 p1, v7

    iget-wide v6, v6, Landroid/content/SyncStats;->numDeletes:J

    add-long/2addr v11, v6

    iget-object v6, v9, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v6, Landroid/content/SyncStats;->numInserts:J

    add-long/2addr v6, v11

    cmp-long v11, v6, v17

    if-gez v11, :cond_22

    const/4 v8, 0x0

    :cond_22
    add-int/lit8 v11, v8, 0x1

    const/16 v12, 0xa

    if-lt v8, v12, :cond_23

    .line 436
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "runSyncLoop: Hit max loop count while syncing "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 436
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    .line 438
    iput-boolean v3, v9, Landroid/content/SyncResult;->tooManyRetries:Z

    goto/16 :goto_c

    :cond_23
    if-nez v16, :cond_24

    if-nez v13, :cond_24

    .line 442
    iget-object v8, v9, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    .line 443
    invoke-virtual {v0, v8}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->hasTooManyDeletions(Landroid/content/SyncStats;)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 448
    iget-object v0, v9, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v0, Landroid/content/SyncStats;->numDeletes:J

    .line 449
    iget-object v0, v9, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    invoke-virtual {v0}, Landroid/content/SyncStats;->clear()V

    const/4 v3, 0x1

    .line 450
    iput-boolean v3, v9, Landroid/content/SyncResult;->tooManyDeletions:Z

    .line 451
    iget-object v0, v9, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iput-wide v6, v0, Landroid/content/SyncStats;->numDeletes:J

    goto :goto_c

    :cond_24
    if-eqz v5, :cond_25

    .line 456
    invoke-virtual {v5}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 457
    :cond_25
    invoke-virtual {v3}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->getTemporaryInstance()Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    move-result-object v5

    .line 458
    invoke-virtual {v0, v5}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->initTempProvider(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V

    .line 459
    invoke-virtual/range {p3 .. p3}, Landroid/content/SyncResult;->clear()V

    .line 460
    invoke-virtual {v0, v3, v5, v9, v13}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->sendClientDiffs(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/content/SyncResult;Z)V

    const/4 v3, 0x2

    .line 462
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 463
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_26
    invoke-virtual/range {p3 .. p3}, Landroid/content/SyncResult;->madeSomeProgress()Z

    move-result v3

    if-nez v3, :cond_27

    const/4 v0, 0x2

    .line 467
    invoke-static {v4, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_29

    const-string v0, "runSyncLoop: No data from client diffs merge"

    .line 468
    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_27
    const/4 v3, 0x2

    .line 472
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_28

    const-string v3, "runSyncLoop: made some progress, looping"

    .line 473
    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :cond_28
    move-wide/from16 v17, v6

    move v8, v11

    move/from16 v12, v16

    const/4 v6, 0x0

    const/4 v11, 0x1

    move/from16 v7, p1

    goto/16 :goto_9

    :cond_29
    :goto_c
    move-object/from16 v16, v5

    .line 478
    :try_start_b
    iget-boolean v0, v9, Landroid/content/SyncResult;->tooManyRetries:Z

    or-int/2addr v0, v1

    iput-boolean v0, v9, Landroid/content/SyncResult;->tooManyRetries:Z

    const/4 v0, 0x2

    .line 479
    invoke-static {v4, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "runSyncLoop: final result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :cond_2a
    if-eqz v13, :cond_2b

    const/4 v1, 0x1

    .line 485
    iput-boolean v1, v9, Landroid/content/SyncResult;->fullSyncRequested:Z

    :cond_2b
    if-eqz v16, :cond_2c

    .line 487
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 488
    :cond_2c
    iget-object v0, v14, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 489
    :cond_2d
    invoke-virtual {v10, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 490
    invoke-virtual {v10}, Landroid/util/TimingLogger;->dumpToLog()V

    return-void

    :catchall_5
    move-exception v0

    goto :goto_d

    :catchall_6
    move-exception v0

    move-object/from16 v16, v5

    :goto_d
    if-eqz v13, :cond_2e

    const/4 v1, 0x1

    .line 485
    iput-boolean v1, v9, Landroid/content/SyncResult;->fullSyncRequested:Z

    :cond_2e
    if-eqz v16, :cond_2f

    .line 487
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 488
    :cond_2f
    iget-object v1, v14, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->close()V

    .line 489
    :cond_30
    invoke-virtual {v10, v2}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 490
    invoke-virtual {v10}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 491
    throw v0
.end method

.method private sync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/SyncResult;)V
    .locals 7

    const/4 v0, 0x0

    .line 188
    iput-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mIsCanceled:Z

    .line 190
    iput-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProviderSyncStarted:Z

    .line 191
    iput-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mAdapterSyncStarted:Z

    .line 194
    invoke-static {p1, p2}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v1

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    if-gez v1, :cond_1

    .line 197
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->getIsSyncable(Landroid/accounts/Account;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v0

    .line 198
    :goto_0
    invoke-static {p1, p2, v1}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 202
    :catch_0
    iget-object p2, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v5, p2, Landroid/content/SyncStats;->numParseExceptions:J

    add-long/2addr v5, v2

    iput-wide v5, p2, Landroid/content/SyncStats;->numParseExceptions:J

    goto :goto_1

    .line 200
    :catch_1
    iget-object p2, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v5, p2, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v5, v2

    iput-wide v5, p2, Landroid/content/SyncStats;->numIoExceptions:J

    :catch_2
    :cond_1
    :goto_1
    const-string p2, "initialize"

    .line 209
    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    :cond_2
    if-gtz v1, :cond_3

    return-void

    .line 218
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->getRoutingInfoForDevice()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mRoutingInfo:Ljava/lang/String;

    if-nez p2, :cond_4

    const-string p0, "Sync"

    const-string p1, "routing info is null"

    .line 220
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object p0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide p1, p0, Landroid/content/SyncStats;->numParseExceptions:J

    add-long/2addr p1, v2

    iput-wide p1, p0, Landroid/content/SyncStats;->numParseExceptions:J

    return-void

    :cond_4
    const-string p2, "force"

    .line 225
    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 228
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    invoke-virtual {v1, p1}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->onSyncStart(Landroid/accounts/Account;)V

    .line 229
    iput-boolean v4, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProviderSyncStarted:Z

    .line 230
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->onSyncStarting(Landroid/accounts/Account;ZLandroid/content/SyncResult;)V

    .line 231
    invoke-virtual {p4}, Landroid/content/SyncResult;->hasError()Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_7

    .line 254
    iget-boolean p1, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mAdapterSyncStarted:Z

    if-eqz p1, :cond_5

    .line 255
    iput-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mAdapterSyncStarted:Z

    .line 256
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->onSyncEnding(Z)V

    .line 258
    :cond_5
    iget-boolean p1, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProviderSyncStarted:Z

    if-eqz p1, :cond_6

    .line 259
    iput-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProviderSyncStarted:Z

    .line 260
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->onSyncStop(Z)V

    :cond_6
    return-void

    .line 234
    :cond_7
    :try_start_2
    iput-boolean v4, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mAdapterSyncStarted:Z

    .line 235
    iget-boolean p2, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mIsCanceled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p2, :cond_a

    .line 254
    iget-boolean p1, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mAdapterSyncStarted:Z

    if-eqz p1, :cond_8

    .line 255
    iput-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mAdapterSyncStarted:Z

    .line 256
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->onSyncEnding(Z)V

    .line 258
    :cond_8
    iget-boolean p1, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProviderSyncStarted:Z

    if-eqz p1, :cond_9

    .line 259
    iput-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProviderSyncStarted:Z

    .line 260
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->onSyncStop(Z)V

    :cond_9
    return-void

    :cond_a
    :try_start_3
    const-string p2, "SyncTracing"

    const/4 v1, 0x2

    .line 238
    invoke-static {p2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p2, :cond_b

    .line 241
    :try_start_4
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 242
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synctrace."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    .line 245
    :cond_b
    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->runSyncLoop(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/SyncResult;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p2, :cond_c

    .line 247
    :try_start_5
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 249
    :cond_c
    invoke-virtual {p4}, Landroid/content/SyncResult;->hasError()Z

    move-result p1

    if-nez p1, :cond_d

    move p1, v4

    goto :goto_2

    :cond_d
    move p1, v0

    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->onSyncEnding(Z)V

    .line 250
    iput-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mAdapterSyncStarted:Z

    .line 251
    iget-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    invoke-virtual {p1, v4}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->onSyncStop(Z)V

    .line 252
    iput-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProviderSyncStarted:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 254
    iget-boolean p1, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mAdapterSyncStarted:Z

    if-eqz p1, :cond_e

    .line 255
    iput-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mAdapterSyncStarted:Z

    .line 256
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->onSyncEnding(Z)V

    .line 258
    :cond_e
    iget-boolean p1, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProviderSyncStarted:Z

    if-eqz p1, :cond_f

    .line 259
    iput-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProviderSyncStarted:Z

    .line 260
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->onSyncStop(Z)V

    :cond_f
    return-void

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_10

    .line 247
    :try_start_6
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 248
    :cond_10
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    .line 254
    iget-boolean p2, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mAdapterSyncStarted:Z

    if-eqz p2, :cond_11

    .line 255
    iput-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mAdapterSyncStarted:Z

    .line 256
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->onSyncEnding(Z)V

    .line 258
    :cond_11
    iget-boolean p2, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProviderSyncStarted:Z

    if-eqz p2, :cond_12

    .line 259
    iput-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProviderSyncStarted:Z

    .line 260
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->onSyncStop(Z)V

    .line 262
    :cond_12
    throw p1
.end method


# virtual methods
.method protected createSyncInfo()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public abstract getIsSyncable(Landroid/accounts/Account;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation
.end method

.method public getRoutingInfoForDevice()Ljava/lang/String;
    .locals 4

    .line 518
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 519
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 521
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 522
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "923555098971"

    .line 523
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gcm/GCMRegistrar;->register(Landroid/content/Context;[Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-wide/16 v2, 0x0

    const-string p0, "android_id"

    .line 526
    invoke-static {v0, p0, v2, v3}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 527
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "gcm://?regId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&androidId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 527
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 528
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getServerDiffs(Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/SyncResult;)V
.end method

.method protected abstract hasTooManyDeletions(Landroid/content/SyncStats;)Z
.end method

.method protected initTempProvider(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V
    .locals 0

    return-void
.end method

.method public abstract isReadOnly()Z
.end method

.method public abstract newSyncData()Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;
.end method

.method public abstract onAccountsChanged([Landroid/accounts/Account;)V
.end method

.method public onPerformLoggedSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 1

    .line 172
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p4

    const/16 v0, 0xa

    invoke-static {p4, v0}, Landroid/os/Process;->setThreadPriority(II)V

    .line 174
    :try_start_0
    invoke-direct {p0, p1, p3, p2, p5}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->sync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/SyncResult;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Sync"

    const-string p2, "Sync failed"

    .line 176
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    .line 177
    iput-boolean p0, p5, Landroid/content/SyncResult;->databaseError:Z

    :goto_0
    return-void
.end method

.method public abstract onSyncEnding(Z)V
.end method

.method public abstract onSyncStarting(Landroid/accounts/Account;ZLandroid/content/SyncResult;)V
.end method

.method public abstract readSyncData(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;
.end method

.method public abstract sendClientDiffs(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/content/SyncResult;Z)V
.end method

.method public abstract writeSyncData(Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V
.end method
