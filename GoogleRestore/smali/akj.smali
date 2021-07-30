.class public final Lakj;
.super Lakr;
.source "PG"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:J

.field final synthetic c:Lakk;


# direct methods
.method public constructor <init>(Lakk;Ljava/util/List;J)V
    .locals 0

    iput-object p1, p0, Lakj;->c:Lakk;

    .line 1
    invoke-direct {p0, p1}, Lakr;-><init>(Laku;)V

    iput-object p2, p0, Lakj;->a:Ljava/util/List;

    iput-wide p3, p0, Lakj;->b:J

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, [Ljava/lang/Void;

    new-instance p1, Laks;

    invoke-direct {p1}, Laks;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lakj;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    iget-object v4, p0, Lakj;->c:Lakk;

    invoke-virtual {v4}, Lba;->r()Lbc;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v1, p0, Lakj;->c:Lakk;

    const/4 v2, 0x0

    iput-object v2, v1, Laku;->d:Lakt;

    goto :goto_3

    :cond_1
    sget-object v5, Land;->v:Lccv;

    invoke-virtual {v5}, Lccv;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-wide v5, p0, Lakj;->b:J

    invoke-static {v4, v3, v5, v6}, Laox;->a(Landroid/content/Context;Landroid/accounts/Account;J)Lcsi;

    move-result-object v4

    goto :goto_1

    :cond_2
    iget-wide v5, p0, Lakj;->b:J

    invoke-static {v4, v3, v5, v6}, Laox;->b(Landroid/content/Context;Landroid/accounts/Account;J)Lcsi;

    move-result-object v4

    :goto_1
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Laku;->c:Laqd;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v5, v0

    const-string v3, "Play store returned no apps for %s"

    invoke-virtual {v4, v3, v5}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v1, Laop;->a:Ljava/util/Comparator;

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput-object v2, p1, Laks;->a:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p1, Laks;->b:Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    sget-object v2, Laku;->c:Laqd;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "InterruptedException while fetching the apps from Play store"

    invoke-virtual {v2, v3, v1, v0}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    :catch_1
    move-exception v1

    sget-object v2, Laku;->c:Laqd;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "RemoteException while fetching the apps from Play store"

    invoke-virtual {v2, v3, v1, v0}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Laks;->a:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Laks;->b:Ljava/util/List;

    :goto_3
    return-object p1
.end method
