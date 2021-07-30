.class Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;
.super Ljava/io/FilterInputStream;
.source "NetworkStatsEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/http/NetworkStatsEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStatsInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/common/http/NetworkStatsEntity;


# direct methods
.method public constructor <init>(Lcom/google/android/common/http/NetworkStatsEntity;Ljava/io/InputStream;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    .line 37
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    const v8, 0xcb21

    .line 43
    :try_start_0
    invoke-super/range {p0 .. p0}, Ljava/io/FilterInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-object v0, v1, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    invoke-static {v0}, Lcom/google/android/common/http/NetworkStatsEntity;->access$000(Lcom/google/android/common/http/NetworkStatsEntity;)J

    move-result-wide v11

    sub-long/2addr v9, v11

    .line 46
    iget-object v0, v1, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    invoke-static {v0}, Lcom/google/android/common/http/NetworkStatsEntity;->access$100(Lcom/google/android/common/http/NetworkStatsEntity;)I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v11

    .line 47
    iget-object v0, v1, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    invoke-static {v0}, Lcom/google/android/common/http/NetworkStatsEntity;->access$100(Lcom/google/android/common/http/NetworkStatsEntity;)I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v13

    new-array v0, v7, [Ljava/lang/Object;

    .line 49
    iget-object v7, v1, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    invoke-static {v7}, Lcom/google/android/common/http/NetworkStatsEntity;->access$200(Lcom/google/android/common/http/NetworkStatsEntity;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    iget-object v6, v1, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    invoke-static {v6}, Lcom/google/android/common/http/NetworkStatsEntity;->access$300(Lcom/google/android/common/http/NetworkStatsEntity;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v0, v5

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v0, v4

    iget-object v4, v1, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    .line 50
    invoke-static {v4}, Lcom/google/android/common/http/NetworkStatsEntity;->access$400(Lcom/google/android/common/http/NetworkStatsEntity;)J

    move-result-wide v4

    sub-long/2addr v11, v4

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v3

    iget-object v1, v1, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    invoke-static {v1}, Lcom/google/android/common/http/NetworkStatsEntity;->access$500(Lcom/google/android/common/http/NetworkStatsEntity;)J

    move-result-wide v3

    sub-long/2addr v13, v3

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v2

    .line 49
    invoke-static {v8, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void

    :catchall_0
    move-exception v0

    move-object v9, v0

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-object v0, v1, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    invoke-static {v0}, Lcom/google/android/common/http/NetworkStatsEntity;->access$000(Lcom/google/android/common/http/NetworkStatsEntity;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    .line 46
    iget-object v0, v1, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    invoke-static {v0}, Lcom/google/android/common/http/NetworkStatsEntity;->access$100(Lcom/google/android/common/http/NetworkStatsEntity;)I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v12

    .line 47
    iget-object v0, v1, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    invoke-static {v0}, Lcom/google/android/common/http/NetworkStatsEntity;->access$100(Lcom/google/android/common/http/NetworkStatsEntity;)I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v14

    new-array v0, v7, [Ljava/lang/Object;

    .line 49
    iget-object v7, v1, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    invoke-static {v7}, Lcom/google/android/common/http/NetworkStatsEntity;->access$200(Lcom/google/android/common/http/NetworkStatsEntity;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    iget-object v6, v1, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    invoke-static {v6}, Lcom/google/android/common/http/NetworkStatsEntity;->access$300(Lcom/google/android/common/http/NetworkStatsEntity;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v0, v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v0, v4

    iget-object v4, v1, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    .line 50
    invoke-static {v4}, Lcom/google/android/common/http/NetworkStatsEntity;->access$400(Lcom/google/android/common/http/NetworkStatsEntity;)J

    move-result-wide v4

    sub-long/2addr v12, v4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v0, v3

    iget-object v1, v1, Lcom/google/android/common/http/NetworkStatsEntity$NetworkStatsInputStream;->this$0:Lcom/google/android/common/http/NetworkStatsEntity;

    invoke-static {v1}, Lcom/google/android/common/http/NetworkStatsEntity;->access$500(Lcom/google/android/common/http/NetworkStatsEntity;)J

    move-result-wide v3

    sub-long/2addr v14, v3

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v2

    .line 49
    invoke-static {v8, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 51
    throw v9
.end method
