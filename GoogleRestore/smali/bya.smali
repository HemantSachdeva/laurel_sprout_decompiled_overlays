.class final synthetic Lbya;
.super Ljava/lang/Object;

# interfaces
.implements Lczc;


# instance fields
.field private final a:Lbyb;

.field private final b:Lemc;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbyb;Lemc;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbya;->a:Lbyb;

    iput-object p2, p0, Lbya;->b:Lemc;

    iput-object p3, p0, Lbya;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lczu;
    .locals 12

    iget-object v0, p0, Lbya;->a:Lbyb;

    iget-object v1, p0, Lbya;->b:Lemc;

    iget-object v2, p0, Lbya;->c:Ljava/lang/String;

    iget-object v3, v0, Lbyb;->c:Leip;

    check-cast v3, Lbrl;

    invoke-virtual {v3}, Lbrl;->b()Lbxp;

    move-result-object v3

    invoke-virtual {v3}, Lbxp;->a()Z

    move-result v3

    const-string v4, "MemoryMetricServiceImpl.java"

    const-string v5, "lambda$recordEvent$6"

    const-string v6, "com/google/android/libraries/performance/primes/metrics/memory/MemoryMetricServiceImpl"

    if-nez v3, :cond_0

    sget-object v0, Lbyb;->a:Lcua;

    invoke-virtual {v0}, Lctx;->e()Lcup;

    move-result-object v0

    check-cast v0, Lctz;

    const/16 v1, 0x14a

    invoke-interface {v0, v6, v5, v1, v4}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "Event not recorded, service not enabled."

    invoke-interface {v0, v1}, Lctz;->a(Ljava/lang/String;)V

    :goto_0
    sget-object v0, Lczr;->a:Lczu;

    goto/16 :goto_3

    :cond_0
    iget-object v3, v0, Lbyb;->c:Leip;

    check-cast v3, Lbrl;

    invoke-virtual {v3}, Lbrl;->b()Lbxp;

    move-result-object v3

    iget-boolean v3, v3, Lbxp;->d:Z

    if-eqz v3, :cond_1

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Ljava/lang/System;->runFinalization()V

    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_1
    iget-object v3, v0, Lbyb;->c:Leip;

    check-cast v3, Lbrl;

    invoke-virtual {v3}, Lbrl;->b()Lbxp;

    const/4 v3, 0x0

    move-object v7, v3

    check-cast v7, Lbxr;

    if-eqz v7, :cond_2

    :try_start_0
    invoke-interface {v7}, Lbxr;->a()Lekw;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    sget-object v8, Lbyb;->a:Lcua;

    invoke-virtual {v8}, Lctx;->a()Lcup;

    move-result-object v8

    check-cast v8, Lctz;

    invoke-interface {v8, v7}, Lctz;->a(Ljava/lang/Throwable;)V

    const/16 v7, 0x15b

    invoke-interface {v8, v6, v5, v7, v4}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "Metric extension provider failed."

    invoke-interface {v8, v4}, Lctz;->a(Ljava/lang/String;)V

    :cond_2
    move-object v4, v3

    :goto_1
    iget-object v5, v0, Lbyb;->c:Leip;

    check-cast v5, Lbrl;

    invoke-virtual {v5}, Lbrl;->b()Lbxp;

    move-result-object v5

    iget-boolean v5, v5, Lbxp;->b:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_6

    iget-object v5, v0, Lbyb;->b:Landroid/app/Application;

    invoke-static {v5}, Lbum;->a(Landroid/content/Context;)Landroid/app/ActivityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v8, v0, Lbyb;->b:Landroid/app/Application;

    invoke-virtual {v8}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v9, Lepj;->w:Lepj;

    invoke-virtual {v9}, Ldkd;->g()Ldjy;

    move-result-object v9

    iget-object v10, v0, Lbyb;->e:Lbyj;

    iget v11, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iget-object v8, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v1, v11, v8, v2}, Lbyj;->a(Lemc;ILjava/lang/String;Ljava/lang/String;)Lemd;

    move-result-object v8

    iget-boolean v10, v9, Ldjy;->b:Z

    if-eqz v10, :cond_4

    invoke-virtual {v9}, Ldjy;->b()V

    iput-boolean v6, v9, Ldjy;->b:Z

    :cond_4
    iget-object v10, v9, Ldjy;->a:Ldkd;

    check-cast v10, Lepj;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v8, v10, Lepj;->b:Lemd;

    iget v8, v10, Lepj;->a:I

    or-int/lit8 v8, v8, 0x1

    iput v8, v10, Lepj;->a:I

    invoke-virtual {v9}, Ldjy;->f()Ldkd;

    move-result-object v8

    check-cast v8, Lepj;

    iget-object v9, v0, Lbyb;->d:Lbvq;

    invoke-virtual {v9, v3, v6, v8, v4}, Lbvq;->a(Ljava/lang/String;ZLepj;Lekw;)Lczu;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-static {v7}, Lcsi;->a(Ljava/util/Collection;)Lcsi;

    move-result-object v0

    new-instance v1, Lcze;

    invoke-direct {v1}, Lcze;-><init>()V

    sget-object v2, Lczj;->a:Lczj;

    new-instance v3, Lczi;

    invoke-direct {v3, v0, v2, v1}, Lczi;-><init>(Lcsd;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V

    move-object v0, v3

    goto :goto_3

    :cond_6
    sget-object v5, Lepj;->w:Lepj;

    invoke-virtual {v5}, Ldkd;->g()Ldjy;

    move-result-object v5

    iget-object v7, v0, Lbyb;->e:Lbyj;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-virtual {v7, v1, v8, v3, v2}, Lbyj;->a(Lemc;ILjava/lang/String;Ljava/lang/String;)Lemd;

    move-result-object v1

    iget-boolean v2, v5, Ldjy;->b:Z

    if-eqz v2, :cond_7

    invoke-virtual {v5}, Ldjy;->b()V

    iput-boolean v6, v5, Ldjy;->b:Z

    :cond_7
    iget-object v2, v5, Ldjy;->a:Ldkd;

    check-cast v2, Lepj;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v2, Lepj;->b:Lemd;

    iget v1, v2, Lepj;->a:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v2, Lepj;->a:I

    invoke-virtual {v5}, Ldjy;->f()Ldkd;

    move-result-object v1

    check-cast v1, Lepj;

    iget-object v0, v0, Lbyb;->d:Lbvq;

    invoke-virtual {v0, v3, v6, v1, v4}, Lbvq;->a(Ljava/lang/String;ZLepj;Lekw;)Lczu;

    move-result-object v0

    :goto_3
    return-object v0
.end method
