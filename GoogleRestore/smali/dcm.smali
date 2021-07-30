.class public final Ldcm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/concurrent/Future;

.field final synthetic b:Ldcn;

.field final synthetic c:Ldcj;


# direct methods
.method public constructor <init>(Ldcn;Ljava/util/concurrent/Future;Ldcj;)V
    .locals 0

    iput-object p1, p0, Ldcm;->b:Ldcn;

    iput-object p2, p0, Ldcm;->a:Ljava/util/concurrent/Future;

    iput-object p3, p0, Ldcm;->c:Ldcj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const-string v0, "FirebaseCrash"

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Ldcm;->a:Ljava/util/concurrent/Future;

    const-wide/16 v3, 0x2710

    .line 1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldcw;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 23
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    .line 2
    :goto_0
    const-string v3, "Failed to load crash reporting in time"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Ldcm;->a:Ljava/util/concurrent/Future;

    .line 3
    invoke-interface {v2, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v2, 0x0

    .line 1
    :goto_1
    if-nez v2, :cond_0

    iget-object v0, p0, Ldcm;->c:Ldcj;

    .line 4
    invoke-virtual {v0}, Ldcj;->a()V

    return-void

    :cond_0
    :try_start_1
    iget-object v3, p0, Ldcm;->b:Ldcn;

    iget-object v3, v3, Ldcn;->a:Ldbb;

    .line 5
    invoke-virtual {v3}, Ldbb;->c()Ldbd;

    move-result-object v3

    new-instance v4, Ldcu;

    iget-object v5, v3, Ldbd;->b:Ljava/lang/String;

    iget-object v3, v3, Ldbd;->a:Ljava/lang/String;

    .line 6
    invoke-direct {v4, v5, v3}, Ldcu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Ldcm;->b:Ldcn;

    iget-object v3, v3, Ldcn;->b:Landroid/content/Context;

    .line 7
    invoke-static {v3}, Lbjq;->a(Ljava/lang/Object;)Lbjr;

    move-result-object v3

    .line 8
    invoke-virtual {v2}, Lact;->h()Landroid/os/Parcel;

    move-result-object v5

    .line 9
    invoke-static {v5, v3}, Lacv;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 10
    invoke-static {v5, v4}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 11
    invoke-virtual {v2, v1, v5}, Lact;->b(ILandroid/os/Parcel;)V

    new-instance v3, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual {v2}, Lact;->h()Landroid/os/Parcel;

    move-result-object v4

    .line 14
    invoke-virtual {v4, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/16 v3, 0xb

    .line 15
    invoke-virtual {v2, v3, v4}, Lact;->b(ILandroid/os/Parcel;)V

    iget-object v3, p0, Ldcm;->b:Ldcn;

    iget-object v3, v3, Ldcn;->b:Landroid/content/Context;

    .line 16
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Application;

    invoke-static {v3}, Lbfm;->a(Landroid/app/Application;)V

    sget-object v3, Lbfm;->a:Lbfm;

    .line 17
    invoke-virtual {v3}, Lbfm;->a()Z

    move-result v3

    xor-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ldcw;->a(Z)V

    sget-object v1, Lbfm;->a:Lbfm;

    new-instance v3, Ldcl;

    invoke-direct {v3}, Ldcl;-><init>()V

    .line 18
    invoke-virtual {v1, v3}, Lbfm;->a(Lbfl;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 22
    invoke-static {}, Ldcy;->a()Ldcy;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x24

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "FirebaseCrash reporting initialized "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ldcm;->c:Ldcj;

    iget-object v0, v0, Ldcj;->a:Lcom/google/firebase/crash/FirebaseCrash;

    .line 23
    invoke-virtual {v0, v2}, Lcom/google/firebase/crash/FirebaseCrash;->a(Ldcw;)V

    return-void

    .line 3
    :catch_3
    move-exception v1

    .line 19
    const-string v2, "Failed to initialize crash reporting"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Ldcm;->b:Ldcn;

    iget-object v0, v0, Ldcn;->b:Landroid/content/Context;

    .line 20
    invoke-static {v0}, Lbjg;->c(Landroid/content/Context;)V

    iget-object v0, p0, Ldcm;->c:Ldcj;

    .line 21
    invoke-virtual {v0}, Ldcj;->a()V

    return-void
.end method
