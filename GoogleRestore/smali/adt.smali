.class public final synthetic Ladt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/Runnable;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ladt;->a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;

    iput-object p2, p0, Ladt;->b:Ljava/lang/String;

    iput-object p3, p0, Ladt;->c:Ljava/lang/Runnable;

    iput-object p4, p0, Ladt;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const-string v0, "Error setting ancestral secondary key version"

    iget-object v1, p0, Ladt;->a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;

    iget-object v2, p0, Ladt;->b:Ljava/lang/String;

    iget-object v3, p0, Ladt;->c:Ljava/lang/Runnable;

    iget-object v4, p0, Ladt;->d:Ljava/lang/Runnable;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    iget-object v7, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->m:Larf;

    iget-object v7, v7, Larf;->b:Lara;

    invoke-virtual {v7, v2}, Lara;->a(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v5

    const-string v2, "Successfully set ancestral secondary key version to %s"

    invoke-virtual {v7, v2, v8}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v6, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->n:Ljava/util/concurrent/Future;

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    iget-object v3, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v2, v5}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v6, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->n:Ljava/util/concurrent/Future;

    return-void

    :catch_1
    move-exception v2

    :try_start_2
    iget-object v3, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v2, v5}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-object v6, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->n:Ljava/util/concurrent/Future;

    return-void

    :goto_0
    iput-object v6, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->n:Ljava/util/concurrent/Future;

    throw v0
.end method
