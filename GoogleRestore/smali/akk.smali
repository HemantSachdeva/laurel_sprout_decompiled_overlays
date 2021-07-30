.class public final Lakk;
.super Laku;
.source "PG"


# instance fields
.field public a:Ljava/util/List;

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Laku;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 8

    .line 2
    invoke-super {p0, p1}, Laku;->a(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lba;->F:Z

    iget-object v0, p0, Lba;->w:Lbx;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lbx;->q:Lcb;

    .line 3
    invoke-virtual {v0, p0}, Lcb;->a(Lba;)V

    goto :goto_0

    .line 22
    :cond_0
    iput-boolean p1, p0, Lba;->G:Z

    .line 3
    :goto_0
    iget-object v0, p0, Lba;->k:Landroid/os/Bundle;

    .line 4
    const-string v1, "android_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lakk;->b:J

    new-instance v1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lakk;->a:Ljava/util/List;

    .line 6
    const-string v1, "accounts"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    .line 7
    aget-object v4, v0, v3

    iget-object v5, p0, Lakk;->a:Ljava/util/List;

    .line 8
    check-cast v4, Landroid/accounts/Account;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-wide v2, p0, Lakk;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lakk;->a:Ljava/util/List;

    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Laks;

    invoke-direct {v0}, Laks;-><init>()V

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Laks;->a:Ljava/util/List;

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Laks;->b:Ljava/util/List;

    .line 12
    invoke-virtual {p0, v0}, Laku;->a(Laks;)V

    :cond_3
    iget-object v0, p0, Laku;->Z:Lakr;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lakk;->Z:Lakr;

    iget-object v2, p0, Lakk;->a:Ljava/util/List;

    iget-wide v3, p0, Lakk;->b:J

    check-cast v0, Lakj;

    iget-wide v5, v0, Lakj;->b:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_4

    iget-object v0, v0, Lakj;->a:Ljava/util/List;

    .line 13
    invoke-static {v2, v0}, Lcqt;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    iget-object v0, p0, Laku;->Z:Lakr;

    .line 14
    invoke-virtual {v0, p1}, Lakr;->cancel(Z)Z

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Laku;->aa:Ljava/util/List;

    .line 15
    new-instance v0, Lakj;

    iget-object v2, p0, Lakk;->a:Ljava/util/List;

    iget-wide v3, p0, Lakk;->b:J

    invoke-direct {v0, p0, v2, v3, v4}, Lakj;-><init>(Lakk;Ljava/util/List;J)V

    iput-object v0, p0, Laku;->Z:Lakr;

    .line 16
    :cond_6
    sget-object v0, Lakq;->a:[I

    iget-object v2, p0, Laku;->Z:Lakr;

    invoke-virtual {v2}, Lakr;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/AsyncTask$Status;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, p1, :cond_8

    const/4 p1, 0x2

    if-eq v0, p1, :cond_7

    const/4 p1, 0x3

    if-eq v0, p1, :cond_7

    return-void

    :cond_7
    :try_start_0
    iget-object p1, p0, Laku;->Z:Lakr;

    .line 17
    invoke-virtual {p1}, Lakr;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laks;

    .line 18
    invoke-virtual {p0, p1}, Laku;->a(Laks;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 21
    :catch_0
    move-exception p1

    sget-object v0, Laku;->c:Laqd;

    new-array v1, v1, [Ljava/lang/Object;

    .line 19
    const-string v2, "ExecutionException while getting cached result"

    invoke-virtual {v0, v2, p1, v1}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void

    .line 22
    :catch_1
    move-exception p1

    sget-object v0, Laku;->c:Laqd;

    new-array v1, v1, [Ljava/lang/Object;

    .line 20
    const-string v2, "Interrupted while getting cached result"

    invoke-virtual {v0, v2, p1, v1}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 21
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return-void

    .line 18
    :cond_8
    iget-object p1, p0, Laku;->Z:Lakr;

    iget-object v0, p0, Laku;->ab:Lcrm;

    .line 22
    invoke-interface {v0}, Lcrm;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Lakr;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
