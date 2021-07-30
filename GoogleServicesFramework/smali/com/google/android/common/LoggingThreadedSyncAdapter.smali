.class public abstract Lcom/google/android/common/LoggingThreadedSyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "LoggingThreadedSyncAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method protected abstract onLogSyncDetails(JJLandroid/content/SyncResult;)V
.end method

.method public abstract onPerformLoggedSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
.end method

.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 14

    .line 29
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 30
    invoke-static {v1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v2

    .line 31
    invoke-static {v1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v4

    .line 33
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/common/LoggingThreadedSyncAdapter;->onPerformLoggedSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-static {v1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v6

    sub-long v9, v6, v2

    .line 38
    invoke-static {v1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    sub-long v11, v0, v4

    move-object v8, p0

    move-object/from16 v13, p5

    .line 37
    invoke-virtual/range {v8 .. v13}, Lcom/google/android/common/LoggingThreadedSyncAdapter;->onLogSyncDetails(JJLandroid/content/SyncResult;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v6, p5

    :goto_0
    move-object v7, v0

    goto :goto_2

    :catch_0
    move-object/from16 v6, p5

    .line 35
    :try_start_1
    iget-object v0, v6, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v0, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v0, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 37
    invoke-static {v1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v7

    sub-long v2, v7, v2

    .line 38
    invoke-static {v1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    sub-long v4, v0, v4

    move-object v0, p0

    move-wide v1, v2

    move-wide v3, v4

    move-object/from16 v5, p5

    .line 37
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/common/LoggingThreadedSyncAdapter;->onLogSyncDetails(JJLandroid/content/SyncResult;)V

    :goto_1
    return-void

    :catchall_1
    move-exception v0

    goto :goto_0

    :goto_2
    invoke-static {v1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v8

    sub-long v2, v8, v2

    .line 38
    invoke-static {v1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    sub-long v4, v0, v4

    move-object v0, p0

    move-wide v1, v2

    move-wide v3, v4

    move-object/from16 v5, p5

    .line 37
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/common/LoggingThreadedSyncAdapter;->onLogSyncDetails(JJLandroid/content/SyncResult;)V

    .line 39
    throw v7
.end method
