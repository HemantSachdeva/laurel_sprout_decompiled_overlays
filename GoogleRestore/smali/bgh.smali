.class final Lbgh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbds;

.field final synthetic b:Lbgi;


# direct methods
.method public constructor <init>(Lbgi;Lbds;)V
    .locals 0

    iput-object p1, p0, Lbgh;->b:Lbgi;

    iput-object p2, p0, Lbgh;->a:Lbds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lbgh;->b:Lbgi;

    iget-object v1, v0, Lbgi;->e:Lbgj;

    .line 1
    sget-object v2, Lbgj;->a:Lcom/google/android/gms/common/api/Status;

    .line 2
    iget-object v1, v1, Lbgj;->k:Ljava/util/Map;

    iget-object v0, v0, Lbgi;->b:Lbfk;

    .line 1
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbgf;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lbgh;->a:Lbds;

    invoke-virtual {v1}, Lbds;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbgh;->b:Lbgi;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lbgi;->d:Z

    iget-object v1, v1, Lbgi;->a:Lben;

    .line 3
    invoke-interface {v1}, Lben;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lbgh;->b:Lbgi;

    .line 4
    invoke-virtual {v0}, Lbgi;->a()V

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lbgh;->b:Lbgi;

    iget-object v1, v1, Lbgi;->a:Lben;

    const/4 v2, 0x0

    .line 5
    invoke-interface {v1}, Lben;->k()Ljava/util/Set;

    move-result-object v3

    .line 6
    invoke-interface {v1, v2, v3}, Lben;->a(Lbik;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 10
    :catch_0
    move-exception v1

    .line 7
    const-string v2, "GoogleApiManager"

    const-string v3, "Failed to get service from broker. "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lbgh;->b:Lbgi;

    iget-object v1, v1, Lbgi;->a:Lben;

    .line 8
    const-string v2, "Failed to get service from broker."

    invoke-interface {v1, v2}, Lben;->a(Ljava/lang/String;)V

    new-instance v1, Lbds;

    const/16 v2, 0xa

    .line 9
    invoke-direct {v1, v2}, Lbds;-><init>(I)V

    invoke-virtual {v0, v1}, Lbgf;->a(Lbds;)V

    return-void

    .line 6
    :cond_2
    iget-object v1, p0, Lbgh;->a:Lbds;

    .line 10
    invoke-virtual {v0, v1}, Lbgf;->a(Lbds;)V

    return-void
.end method
