.class public Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;
.super Lamo;
.source "PG"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lail;
.implements Lakn;
.implements Laip;
.implements Lala;
.implements Lahb;
.implements Laja;
.implements Laje;
.implements Lacz;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:Z

.field private E:Landroid/os/Handler;

.field private F:Ljava/lang/Runnable;

.field private G:Ljava/lang/Runnable;

.field private H:Landroid/os/AsyncTask;

.field public j:Ladl;

.field public k:Lagf;

.field public l:Lacy;

.field public m:Larf;

.field public n:Ljava/util/concurrent/Future;

.field public o:Lada;

.field public p:Ljava/util/Map;

.field public q:J

.field public r:J

.field private w:Lj$/util/function/Supplier;

.field private x:Lahh;

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lamo;-><init>()V

    .line 2
    new-instance v0, Ladm;

    invoke-direct {v0, p0}, Ladm;-><init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->w:Lj$/util/function/Supplier;

    return-void
.end method

.method private final A()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    .line 131
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->p:Ljava/util/Map;

    .line 132
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->p:Ljava/util/Map;

    .line 133
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final B()Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 535
    invoke-static {}, Ldtc;->b()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 536
    const-string v2, "Should restore contacts from gmscore? %s"

    invoke-virtual {v0, v2, v1}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 537
    invoke-static {}, Ldtc;->b()Z

    move-result v0

    return v0
.end method

.method private final C()V
    .locals 4

    .line 516
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->z:Z

    .line 517
    const-string v2, "restore_started"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->q:J

    .line 518
    const-string v3, "android_id"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 519
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private final D()V
    .locals 3

    .line 64
    invoke-virtual {p0}, Lbc;->aa()Lbx;

    move-result-object v0

    .line 65
    :cond_0
    invoke-virtual {v0}, Lbx;->c()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    .line 66
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x1

    .line 67
    const-string v2, "intentionally_canceled"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->setResult(ILandroid/content/Intent;)V

    .line 69
    invoke-super {p0}, Lamo;->onBackPressed()V

    return-void
.end method

.method private final a(J)V
    .locals 5

    new-instance v0, Lady;

    .line 522
    invoke-direct {v0, p0}, Lady;-><init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->F:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-gtz v4, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->E:Landroid/os/Handler;

    iget-object p2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->F:Ljava/lang/Runnable;

    .line 523
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 524
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->b(J)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->E:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->F:Ljava/lang/Runnable;

    .line 525
    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-long/2addr v0, p1

    .line 526
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->b(J)V

    return-void
.end method

.method private final a(Ljava/lang/Class;)Z
    .locals 2

    .line 134
    invoke-virtual {p0}, Lbc;->aa()Lbx;

    move-result-object v0

    const v1, 0x7f0a00d9

    invoke-virtual {v0, v1}, Lbx;->b(I)Lba;

    move-result-object v0

    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private static a(Ljava/util/Map;Ljava/lang/Integer;)Z
    .locals 1

    .line 53
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final b(J)V
    .locals 2

    .line 514
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 515
    const-string v1, "scheduled_finish_time_millis"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private final c(Latw;)Z
    .locals 7

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->k:Lagf;

    iget-boolean v0, v0, Lagf;->g:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    iget-wide v3, p1, Latw;->c:J

    const-wide/16 v5, -0x1

    cmp-long p1, v3, v5

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private final d(Ljava/util/Map;)V
    .locals 2

    .line 520
    new-instance v0, Laej;

    invoke-direct {v0, p0, p0, p1}, Laej;-><init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;Landroid/content/Context;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->H:Landroid/os/AsyncTask;

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->j:Ladl;

    iget-object p1, p1, Ladl;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 521
    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private final x()V
    .locals 5

    .line 5
    sget-object v0, Land;->aq:Lccv;

    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {p0}, Lant;->a(Landroid/content/Context;)Lant;

    move-result-object v0

    iget-boolean v1, v0, Lant;->c:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget-object v0, Lant;->a:Laqd;

    new-array v1, v2, [Ljava/lang/Object;

    .line 7
    const-string v2, "App updates not paused so not resuming"

    invoke-virtual {v0, v2, v1}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_0
    sget-object v1, Lant;->a:Laqd;

    new-array v3, v2, [Ljava/lang/Object;

    .line 8
    const-string v4, "Resuming app updates"

    invoke-virtual {v1, v4, v3}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v2, v0, Lant;->c:Z

    iget-object v1, v0, Lant;->b:Lany;

    .line 9
    invoke-virtual {v1}, Lany;->b()Lczu;

    move-result-object v1

    new-instance v2, Lans;

    invoke-direct {v2}, Lans;-><init>()V

    .line 10
    sget-object v3, Lczj;->a:Lczj;

    .line 11
    invoke-static {v1, v2, v3}, Ldab;->a(Lczu;Lczm;Ljava/util/concurrent/Executor;)V

    iget-object v0, v0, Lant;->b:Lany;

    .line 12
    invoke-virtual {v0}, Lany;->c()V

    .line 13
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->finish()V

    return-void
.end method

.method private final y()Landroid/content/Intent;
    .locals 4

    .line 54
    invoke-static {}, Lada;->a()Lada;

    move-result-object v0

    iget-object v0, v0, Lada;->g:Latw;

    new-instance v1, Landroid/content/Intent;

    .line 55
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->j:Ladl;

    iget-object v2, v2, Ladl;->k:Lbdy;

    .line 56
    const v3, 0x10a28b8

    invoke-virtual {v2, p0, v3}, Lbdz;->a(Landroid/content/Context;I)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    sget-object v2, Ldtr;->a:Ldtr;

    .line 58
    invoke-virtual {v2}, Ldtr;->b()Ldts;

    move-result-object v2

    invoke-interface {v2}, Ldts;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v0, v0, Latw;->l:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 59
    const-string v2, "has_work_profile_account"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    return-object v1
.end method

.method private final z()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->j:Ladl;

    iget-object v0, v0, Ladl;->e:Lajz;

    iget-object v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    iget-object v1, v1, Lada;->g:Latw;

    iget v1, v1, Latw;->k:I

    int-to-long v1, v1

    iget-object v3, v0, Lajz;->a:Lacw;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 531
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v5, v2

    const-string v6, "Setting serial number %d"

    invoke-virtual {v3, v6, v5}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    new-instance v3, Landroid/app/backup/BackupManager;

    iget-object v0, v0, Lajz;->b:Landroid/content/Context;

    invoke-direct {v3, v0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    const-string v0, "setAncestralSerialNumber"

    const-class v5, Ljava/lang/Void;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    .line 533
    invoke-static {v3, v0, v5, v4}, Ltt;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Laqi; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    .line 534
    invoke-virtual {v1, v0}, Laqd;->a(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->l:Lacy;

    .line 311
    sget-object v1, Laww;->d:Laww;

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->r:J

    sub-long/2addr v2, v4

    .line 311
    invoke-virtual {v0, v1, v2, v3}, Lacy;->a(Laww;J)V

    new-instance v0, Laed;

    .line 313
    invoke-direct {v0, p0}, Laed;-><init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(IZ)V
    .locals 9

    .line 163
    const-string v0, "onAsyncRestoreJobCompleted must run on the main thread."

    invoke-static {v0}, Laqe;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    .line 164
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    if-eq v4, p2, :cond_0

    const-string v5, "failed"

    goto :goto_0

    .line 178
    :cond_0
    const-string v5, "succeeded"

    .line 164
    :goto_0
    aput-object v5, v2, v4

    .line 165
    const-string v5, "Async restore job for type %s is completed, it %s"

    invoke-virtual {v0, v5, v2}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p2, :cond_1

    iget p2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->B:I

    add-int/2addr p2, v4

    iput p2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->B:I

    :cond_1
    iget p2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->C:I

    const/4 v0, -0x1

    add-int/2addr p2, v0

    iput p2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->C:I

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    .line 166
    const-string p1, "Async restore job for type %s is the last job"

    invoke-virtual {p2, p1, v2}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->B:I

    iget p2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->A:I

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->l:Lacy;

    .line 167
    sget-object p2, Lawo;->d:Lawo;

    invoke-virtual {p1, p2}, Lacy;->a(Lawo;)V

    goto :goto_1

    .line 181
    :cond_2
    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->l:Lacy;

    .line 168
    sget-object p2, Lawo;->c:Lawo;

    invoke-virtual {p1, p2}, Lacy;->a(Lawo;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->l:Lacy;

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->r:J

    sub-long/2addr v5, v7

    .line 170
    invoke-static {}, Lakb;->a()Ldjy;

    move-result-object p2

    .line 171
    sget-object v2, Lawp;->d:Lawp;

    .line 172
    invoke-virtual {v2}, Ldkd;->g()Ldjy;

    move-result-object v2

    .line 171
    sget-object v7, Lawo;->b:Lawo;

    iget-boolean v8, v2, Ldjy;->b:Z

    if-eqz v8, :cond_4

    .line 173
    invoke-virtual {v2}, Ldjy;->b()V

    iput-boolean v3, v2, Ldjy;->b:Z

    :cond_4
    iget-object v8, v2, Ldjy;->a:Ldkd;

    .line 174
    check-cast v8, Lawp;

    iget v7, v7, Lawo;->h:I

    iput v7, v8, Lawp;->b:I

    iget v7, v8, Lawp;->a:I

    or-int/2addr v4, v7

    iput v4, v8, Lawp;->a:I

    or-int/2addr v1, v4

    iput v1, v8, Lawp;->a:I

    iput-wide v5, v8, Lawp;->c:J

    iget-boolean v1, p2, Ldjy;->b:Z

    if-eqz v1, :cond_5

    .line 175
    invoke-virtual {p2}, Ldjy;->b()V

    iput-boolean v3, p2, Ldjy;->b:Z

    :cond_5
    iget-object v1, p2, Ldjy;->a:Ldkd;

    .line 176
    check-cast v1, Lavi;

    invoke-virtual {v2}, Ldjy;->f()Ldkd;

    move-result-object v2

    check-cast v2, Lawp;

    sget-object v4, Lavi;->q:Lavi;

    .line 177
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v1, Lavi;->g:Lawp;

    iget v2, v1, Lavi;->a:I

    const/high16 v4, 0x200000

    or-int/2addr v2, v4

    iput v2, v1, Lavi;->a:I

    .line 178
    sget-object v1, Lavh;->t:Lavh;

    invoke-virtual {p1, p2, v1}, Lacy;->a(Ldjy;Lavh;)V

    .line 167
    :goto_1
    iget-boolean p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->D:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    new-array p2, v3, [Ljava/lang/Object;

    .line 179
    const-string v1, "Async restore jobs finished when on waiting screen, finishing activity."

    invoke-virtual {p1, v1, p2}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->b(I)V

    return-void

    :cond_6
    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    new-array p2, v3, [Ljava/lang/Object;

    .line 181
    const-string v0, "Async restore jobs finished when on restoring screen, not finishing activity."

    invoke-virtual {p1, v0, p2}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 178
    :cond_7
    return-void
.end method

.method public final a(Lagn;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 212
    const-string v2, "Device backup info has been fetched."

    invoke-virtual {v0, v2, v1}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    .line 213
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p1, Lagn;->a:Lcsi;

    .line 214
    invoke-virtual {v1}, Lcsi;->g()Lctw;

    move-result-object v1

    .line 215
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laop;

    .line 216
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    iput-object v0, v1, Lada;->a:Ljava/util/Map;

    iget-object v0, p1, Lagn;->b:Lcsi;

    if-eqz v0, :cond_1

    iput-object v0, v1, Lada;->c:Ljava/util/List;

    :cond_1
    iget-object p1, p1, Lagn;->c:Lahe;

    if-eqz p1, :cond_2

    iput-object p1, v1, Lada;->b:Lahe;

    :cond_2
    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->p:Ljava/util/Map;

    .line 217
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->u()V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 24

    .line 70
    move-object/from16 v6, p0

    move-object/from16 v0, p1

    invoke-static {}, Lada;->a()Lada;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    new-instance v1, Landroid/os/Handler;

    .line 71
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v6, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->E:Landroid/os/Handler;

    iget-object v1, v6, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->w:Lj$/util/function/Supplier;

    .line 72
    invoke-interface {v1}, Lj$/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ladl;

    iput-object v1, v6, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->j:Ladl;

    iget-object v2, v1, Ladl;->b:Lacy;

    iput-object v2, v6, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->l:Lacy;

    iget-object v1, v1, Ladl;->a:Lagg;

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, v1, Lagg;->f:Lagf;

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v3, :cond_4

    iget-object v3, v1, La;->a:Landroid/app/Application;

    new-instance v4, Lagf;

    .line 74
    const-string v5, "account"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 75
    invoke-static {v5}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v11

    new-instance v12, Lage;

    invoke-direct {v12, v3}, Lage;-><init>(Landroid/content/Context;)V

    .line 76
    invoke-virtual {v11, v12}, Lj$/util/Optional;->map(Lj$/util/function/Function;)Lj$/util/Optional;

    move-result-object v11

    .line 77
    invoke-static {v3}, Laok;->a(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v12

    .line 78
    array-length v13, v12

    if-lez v13, :cond_0

    aget-object v12, v12, v10

    goto :goto_0

    .line 130
    :cond_0
    const/4 v12, 0x0

    .line 79
    :goto_0
    invoke-virtual {v11, v12}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Landroid/accounts/Account;

    if-eqz v12, :cond_3

    .line 80
    const-string v3, "deferredSetup"

    invoke-virtual {v2, v3, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 81
    const-string v3, "restore_token"

    invoke-virtual {v2, v3, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 82
    const-string v3, "should_call_system_restore_without_final_hold"

    invoke-virtual {v2, v3, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "should_call_system_restore"

    if-nez v3, :cond_2

    .line 83
    invoke-virtual {v2, v5, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v16, 0x1

    goto :goto_1

    .line 128
    :cond_1
    const/16 v16, 0x0

    goto :goto_1

    :cond_2
    const/16 v16, 0x1

    .line 83
    :goto_1
    nop

    .line 84
    invoke-virtual {v2, v5, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    .line 85
    const-string v3, "is_enterprise_flow"

    invoke-virtual {v2, v3, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    .line 86
    const-string v3, "is_work_profile"

    invoke-virtual {v2, v3, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    .line 87
    const-string v3, "is_work_profile_full_restore"

    invoke-virtual {v2, v3, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    .line 88
    const-string v3, "show_devices_with_no_backup"

    invoke-virtual {v2, v3, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    .line 89
    const-string v3, "hashed_restore_token"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 90
    const-string v3, "hashed_parent_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object v11, v4

    invoke-direct/range {v11 .. v23}, Lagf;-><init>(Landroid/accounts/Account;ZJZZZZZZLjava/lang/String;Ljava/lang/String;)V

    iput-object v4, v1, Lagg;->f:Lagf;

    goto :goto_2

    .line 128
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 129
    invoke-static {v3}, Laok;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    aput-object v5, v1, v9

    .line 130
    const-string v2, "No accounts of type \"%s\" found on device. Intent.account=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_4
    :goto_2
    iget-object v1, v1, Lagg;->f:Lagf;

    iput-object v1, v6, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->k:Lagf;

    .line 91
    sget-object v1, Lanc;->b:Lccv;

    invoke-virtual {v1}, Lccv;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 92
    invoke-virtual {v6, v10}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "activity_resumed"

    invoke-interface {v1, v2, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 93
    invoke-virtual {v6, v10}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "crashes_counter"

    invoke-interface {v1, v2, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v1, v9

    .line 94
    invoke-virtual {v6, v10}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v2, v6, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    new-array v3, v9, [Ljava/lang/Object;

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    const-string v4, "Activity has crashed %d times"

    invoke-virtual {v2, v4, v3}, Laqd;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lanc;->c:Lccv;

    .line 96
    invoke-virtual {v2}, Lccv;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_5

    goto :goto_3

    .line 108
    :cond_5
    iget-object v0, v6, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    new-array v1, v10, [Ljava/lang/Object;

    .line 127
    const-string v2, "Immediately finishing because activity has crashed too many times already"

    invoke-virtual {v0, v2, v1}, Laqd;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    invoke-virtual {v6, v9}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->b(I)V

    return-void

    .line 96
    :cond_6
    :goto_3
    nop

    .line 97
    invoke-virtual {v6, v10}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-wide/16 v2, -0x1

    .line 98
    const-string v4, "scheduled_finish_time_millis"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    cmp-long v3, v1, v7

    if-lez v3, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_7

    sub-long/2addr v1, v3

    goto :goto_4

    .line 108
    :cond_7
    move-wide v1, v7

    .line 99
    :goto_4
    invoke-direct {v6, v1, v2}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->a(J)V

    .line 100
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lbc;->aa()Lbx;

    move-result-object v1

    if-nez v0, :cond_9

    const v2, 0x7f0a00d9

    .line 101
    invoke-virtual {v1, v2}, Lbx;->b(I)Lba;

    move-result-object v1

    if-nez v1, :cond_9

    .line 102
    new-instance v1, Lamb;

    invoke-direct {v1}, Lamb;-><init>()V

    invoke-virtual {v6, v1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->a(Lba;)V

    :cond_9
    if-eqz v0, :cond_a

    .line 103
    const-string v1, "restore_start_time_millis"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v6, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->r:J

    :cond_a
    nop

    .line 104
    invoke-virtual {v6, v10}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 105
    const-string v1, "restore_started"

    invoke-interface {v0, v1, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v6, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->z:Z

    .line 106
    const-string v1, "android_id"

    invoke-interface {v0, v1, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, v6, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->q:J

    iget-boolean v0, v6, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->z:Z

    if-nez v0, :cond_d

    iget-object v0, v6, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->j:Ladl;

    iget-object v0, v0, Ladl;->a:Lagg;

    invoke-virtual {v0}, Lagg;->b()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v6, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->j:Ladl;

    iget-object v11, v0, Ladl;->a:Lagg;

    new-instance v12, Laee;

    .line 109
    invoke-direct {v12, v6}, Laee;-><init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;)V

    sget-object v0, Lagg;->d:Lacw;

    new-array v1, v10, [Ljava/lang/Object;

    .line 110
    const-string v2, "Fetching devices."

    invoke-virtual {v0, v2, v1}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v11, Lagg;->f:Lagf;

    iget-object v5, v11, Lagg;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v13, Lagv;

    .line 111
    invoke-static {}, Lapi;->a()Lapi;

    move-result-object v3

    .line 112
    sget-object v4, Lagd;->a:Lagd;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lagv;-><init>(Landroid/app/Activity;Lagf;Lapi;Lagd;Ljava/util/concurrent/ExecutorService;)V

    iput-object v13, v11, Lagg;->g:Ls;

    iget-object v0, v11, Lagg;->g:Ls;

    .line 113
    invoke-virtual {v0, v6, v12}, Ls;->a(Ll;Lw;)V

    goto :goto_5

    .line 122
    :cond_b
    iget-object v0, v6, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->j:Ladl;

    iget-object v0, v0, Ladl;->a:Lagg;

    iget-object v1, v0, Lagg;->h:Ls;

    if-eqz v1, :cond_c

    new-instance v0, Laef;

    .line 107
    invoke-direct {v0, v6}, Laef;-><init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;)V

    invoke-virtual {v1, v6, v0}, Ls;->a(Ll;Lw;)V

    goto :goto_5

    :cond_c
    invoke-virtual {v0}, Lagg;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v6, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->j:Ladl;

    iget-object v0, v0, Ladl;->a:Lagg;

    iget-object v0, v0, Lagg;->g:Ls;

    new-instance v1, Laeg;

    .line 108
    invoke-direct {v1, v6}, Laeg;-><init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;)V

    invoke-virtual {v0, v6, v1}, Ls;->a(Ll;Lw;)V

    .line 113
    :cond_d
    :goto_5
    iget-boolean v0, v6, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->z:Z

    if-eqz v0, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->h()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v6, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    iget-boolean v1, v0, Lada;->i:Z

    if-eqz v1, :cond_e

    iget-boolean v0, v0, Lada;->h:Z

    if-eqz v0, :cond_e

    iget-object v0, v6, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    new-array v1, v10, [Ljava/lang/Object;

    .line 125
    const-string v2, "Already finished system restore, quiting"

    invoke-virtual {v0, v2, v1}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o()V

    return-void

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->h()Z

    move-result v0

    .line 123
    invoke-static {v0}, Laiq;->b(Z)Laiq;

    move-result-object v0

    .line 124
    invoke-virtual {v6, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->a(Lba;)V

    return-void

    :cond_f
    iget-boolean v0, v6, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->z:Z

    if-eqz v0, :cond_11

    .line 114
    sget-object v0, Land;->T:Lccv;

    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v6, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->j:Ladl;

    iget-object v0, v0, Ladl;->c:Lapj;

    .line 115
    invoke-virtual {v0}, Lapj;->b()J

    move-result-wide v0

    cmp-long v2, v0, v7

    if-eqz v2, :cond_10

    iget-object v0, v6, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    new-array v1, v10, [Ljava/lang/Object;

    .line 116
    const-string v2, "Immediately finishing because restore has already started."

    invoke-virtual {v0, v2, v1}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 117
    invoke-virtual {v6, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->b(I)V

    return-void

    :cond_10
    iget-object v0, v6, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    new-array v1, v10, [Ljava/lang/Object;

    .line 118
    const-string v2, "There was an error during restore, or user navigated back too quickly"

    invoke-virtual {v0, v2, v1}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v10, v6, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->z:Z

    .line 119
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->A()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreService;

    .line 120
    invoke-direct {v0, v6, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v0, v6, v9}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 121
    sget-object v0, Land;->z:Lccv;

    .line 122
    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v6, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->y:Z

    return-void
.end method

.method public final a(Latw;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    const/4 v3, 0x1

    .line 233
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 0
    new-array v5, v3, [Ljava/lang/Object;

    iget v6, v1, Latw;->a:I

    and-int/2addr v6, v3

    if-eqz v6, :cond_0

    iget-wide v8, v1, Latw;->b:J

    .line 219
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_0

    .line 242
    :cond_0
    const/4 v6, 0x0

    .line 219
    :goto_0
    const/4 v8, 0x0

    aput-object v6, v5, v8

    .line 220
    const-string v6, "onDeviceSelected(). device.androidId = %d"

    invoke-virtual {v2, v6, v5}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    .line 221
    invoke-static/range {p1 .. p1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v2, Lada;->g:Latw;

    iget-wide v5, v1, Latw;->b:J

    iput-wide v5, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->q:J

    .line 222
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->C()V

    .line 223
    new-instance v2, Lamb;

    invoke-direct {v2}, Lamb;-><init>()V

    const-string v5, "FRAGMENT"

    invoke-virtual {v0, v2, v5}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->a(Lba;Ljava/lang/String;)V

    .line 224
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->A()V

    iget-object v2, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    .line 225
    invoke-virtual {v2}, Lada;->d()V

    iget-object v2, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->j:Ladl;

    iget-object v2, v2, Ladl;->a:Lagg;

    iget-object v2, v2, Lagg;->h:Ls;

    .line 226
    invoke-static {v2}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v2

    new-instance v5, Lado;

    invoke-direct {v5, v0}, Lado;-><init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;)V

    .line 227
    invoke-virtual {v2, v5}, Lj$/util/Optional;->ifPresent(Lj$/util/function/Consumer;)V

    invoke-direct/range {p0 .. p1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->c(Latw;)Z

    move-result v2

    const/4 v5, 0x2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->j:Ladl;

    iget-object v2, v2, Ladl;->a:Lagg;

    new-instance v6, Ladp;

    .line 228
    invoke-direct {v6, v0}, Ladp;-><init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;)V

    iget-wide v13, v1, Latw;->b:J

    sget-object v1, Lagg;->d:Lacw;

    new-array v7, v5, [Ljava/lang/Object;

    iget-object v9, v2, Lagg;->f:Lagf;

    iget-object v9, v9, Lagf;->a:Landroid/accounts/Account;

    aput-object v9, v7, v8

    .line 229
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v3

    const-string v3, "Fetching apps for account: %s, androidId: %d."

    invoke-virtual {v1, v3, v7}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v10, v2, La;->a:Landroid/app/Application;

    iget-object v1, v2, Lagg;->f:Lagf;

    iget-object v12, v1, Lagf;->a:Landroid/accounts/Account;

    iget-object v15, v2, Lagg;->e:Ljava/util/concurrent/ExecutorService;

    .line 230
    new-instance v11, Laox;

    invoke-direct {v11, v10}, Laox;-><init>(Landroid/content/Context;)V

    new-instance v1, Lu;

    new-instance v3, Lagb;

    .line 231
    move-object v9, v3

    invoke-direct/range {v9 .. v15}, Lagb;-><init>(Landroid/content/Context;Laox;Landroid/accounts/Account;JLjava/util/concurrent/ExecutorService;)V

    invoke-direct {v1, v3}, Lu;-><init>(Ls;)V

    iput-object v1, v2, Lagg;->h:Ls;

    iget-object v1, v2, Lagg;->h:Ls;

    .line 232
    invoke-virtual {v1, v0, v6}, Ls;->a(Ll;Lw;)V

    iget-object v1, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->p:Ljava/util/Map;

    .line 233
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    iget-object v2, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->j:Ladl;

    iget-object v2, v2, Ladl;->a:Lagg;

    new-instance v6, Ladq;

    .line 234
    invoke-direct {v6, v0}, Ladq;-><init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;)V

    iget-wide v13, v1, Latw;->b:J

    .line 235
    invoke-static {}, Ldtv;->b()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->k:Lagf;

    iget-boolean v9, v9, Lagf;->b:Z

    if-eqz v9, :cond_2

    goto :goto_1

    .line 242
    :cond_2
    const/4 v9, 0x1

    goto :goto_2

    .line 236
    :cond_3
    :goto_1
    invoke-static {}, Ldtv;->c()Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    goto :goto_2

    .line 242
    :cond_4
    const/4 v9, 0x0

    .line 236
    :goto_2
    iget-object v15, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->l:Lacy;

    sget-object v10, Lagg;->d:Lacw;

    new-array v11, v5, [Ljava/lang/Object;

    iget-object v12, v2, Lagg;->f:Lagf;

    iget-object v12, v12, Lagf;->a:Landroid/accounts/Account;

    aput-object v12, v11, v8

    .line 237
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v3

    const-string v12, "Fetching backup info for account: %s, androidId: %d."

    invoke-virtual {v10, v12, v11}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v12, v2, La;->a:Landroid/app/Application;

    iget-object v10, v2, Lagg;->f:Lagf;

    iget-object v11, v10, Lagf;->a:Landroid/accounts/Account;

    iget-object v10, v2, Lagg;->e:Ljava/util/concurrent/ExecutorService;

    .line 238
    new-instance v7, Laox;

    invoke-direct {v7, v12}, Laox;-><init>(Landroid/content/Context;)V

    new-instance v3, Laue;

    invoke-direct {v3, v12}, Laue;-><init>(Landroid/content/Context;)V

    .line 239
    invoke-static {v12}, Lbms;->a(Landroid/content/Context;)Lbmy;

    move-result-object v16

    new-instance v5, Lanp;

    invoke-direct {v5, v12}, Lanp;-><init>(Landroid/content/Context;)V

    if-eqz v9, :cond_5

    .line 240
    new-instance v9, Lafv;

    invoke-direct {v9}, Lafv;-><init>()V

    move-object/from16 v17, v9

    goto :goto_3

    .line 242
    :cond_5
    const/16 v17, 0x0

    .line 240
    :goto_3
    new-instance v9, Lu;

    new-instance v8, Lagb;

    .line 241
    move-object v1, v9

    move-object v9, v8

    move-object/from16 v18, v10

    move-object v10, v12

    move-object/from16 v19, v11

    move-object v11, v7

    move-object v7, v12

    move-object/from16 v12, v19

    move-wide/from16 v20, v13

    move-object/from16 v22, v15

    move-object/from16 v15, v18

    invoke-direct/range {v9 .. v15}, Lagb;-><init>(Landroid/content/Context;Laox;Landroid/accounts/Account;JLjava/util/concurrent/ExecutorService;)V

    new-instance v15, Lagc;

    move-object v9, v15

    move-object v10, v3

    move-object/from16 v11, v19

    move-wide/from16 v12, v20

    move-object/from16 v14, v18

    invoke-direct/range {v9 .. v14}, Lagc;-><init>(Laue;Landroid/accounts/Account;JLjava/util/concurrent/ExecutorService;)V

    new-instance v3, Lagm;

    move-object/from16 v13, v19

    iget-object v12, v13, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v9, v3

    move-object/from16 v10, v16

    move-object v11, v5

    move-object v5, v13

    move-wide/from16 v13, v20

    move-object/from16 v19, v4

    move-object v4, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v18

    invoke-direct/range {v9 .. v16}, Lagm;-><init>(Lbmy;Lanp;Ljava/lang/String;JLacy;Ljava/util/concurrent/ExecutorService;)V

    if-nez v17, :cond_6

    const/4 v7, 0x0

    goto :goto_4

    .line 259
    :cond_6
    new-instance v16, Lagx;

    .line 242
    move-object/from16 v9, v16

    move-object v10, v7

    move-object/from16 v11, v17

    move-object v12, v5

    move-wide/from16 v13, v20

    move-object/from16 v15, v18

    invoke-direct/range {v9 .. v15}, Lagx;-><init>(Landroid/content/Context;Lafq;Landroid/accounts/Account;JLjava/util/concurrent/ExecutorService;)V

    move-object/from16 v7, v16

    :goto_4
    invoke-direct {v1, v8, v4, v3, v7}, Lu;-><init>(Ls;Ls;Ls;Ls;)V

    iput-object v1, v2, Lagg;->h:Ls;

    iget-object v1, v2, Lagg;->h:Ls;

    .line 243
    invoke-virtual {v1, v0, v6}, Ls;->a(Ll;Lw;)V

    .line 244
    invoke-static/range {p1 .. p1}, Ladb;->a(Latw;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 245
    const-string v3, "Skipping key recovery as backup is unencrypted."

    invoke-virtual {v1, v3, v2}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->p:Ljava/util/Map;

    .line 246
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v19

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->u()V

    return-void

    :cond_7
    move-object/from16 v3, v19

    iget-object v1, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    move-object/from16 v2, p1

    iget-wide v4, v2, Latw;->b:J

    iget-object v1, v1, Lada;->f:Ljava/util/Set;

    .line 248
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    .line 249
    const-string v4, "Skipping key recovery as the key has already been recovered."

    invoke-virtual {v1, v4, v5}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    sget-object v1, Ldtr;->a:Ldtr;

    .line 251
    invoke-virtual {v1}, Ldtr;->b()Ldts;

    move-result-object v1

    invoke-interface {v1}, Ldts;->c()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v2, Latw;->j:Ljava/lang/String;

    new-instance v3, Ladr;

    .line 252
    invoke-direct {v3, v0}, Ladr;-><init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;)V

    new-instance v4, Lads;

    invoke-direct {v4, v0, v2}, Lads;-><init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;Latw;)V

    iget-object v2, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    .line 253
    const-string v6, "Setting ancestral secondary key version to %s"

    invoke-virtual {v2, v6, v5}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->m:Larf;

    if-nez v2, :cond_8

    iget-object v2, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->j:Ladl;

    iget-object v2, v2, Ladl;->d:Lj$/util/function/Supplier;

    .line 254
    invoke-interface {v2}, Lj$/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Larf;

    iput-object v2, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->m:Larf;

    :cond_8
    iget-object v2, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->j:Ladl;

    iget-object v2, v2, Ladl;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v5, Ladt;

    .line 255
    invoke-direct {v5, v0, v1, v3, v4}, Ladt;-><init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 256
    invoke-virtual {v2, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->n:Ljava/util/concurrent/Future;

    return-void

    :cond_9
    iget-object v1, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->p:Ljava/util/Map;

    .line 257
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->u()V

    return-void

    .line 259
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->b(Latw;)V

    return-void
.end method

.method public final a(Lba;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->u:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 24
    const-string v1, "Activity paused so ignoring fragment change"

    invoke-virtual {p1, v1, v0}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 25
    :cond_0
    invoke-virtual {p0}, Lbc;->aa()Lbx;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lbx;->a()Lch;

    move-result-object v0

    const v1, 0x7f0a00d9

    .line 27
    const-string v2, "FRAGMENT"

    invoke-virtual {v0, v1, p1, v2}, Lch;->a(ILba;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Lch;->b()V

    return-void
.end method

.method public final a(Lba;Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->u:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    new-array p2, v1, [Ljava/lang/Object;

    .line 136
    const-string v0, "Activity paused so ignoring fragment change"

    invoke-virtual {p1, v0, p2}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 137
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 138
    :cond_1
    invoke-virtual {p0}, Lbc;->aa()Lbx;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lbx;->a()Lch;

    move-result-object v0

    .line 140
    const v2, 0x7f0a00d9

    invoke-virtual {v0, v2, p1, p2}, Lch;->a(ILba;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lbc;->aa()Lbx;

    move-result-object p1

    invoke-virtual {p1, v2}, Lbx;->b(I)Lba;

    move-result-object p1

    .line 142
    instance-of p2, p1, Lamb;

    const/4 v2, 0x1

    if-nez p2, :cond_3

    instance-of p1, p1, Lajf;

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 144
    :cond_2
    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    .line 142
    :goto_0
    if-eq v2, v1, :cond_4

    const-string p1, "IMPORTANT_TRANSACTION"

    goto :goto_1

    .line 144
    :cond_4
    const/4 p1, 0x0

    .line 143
    :goto_1
    invoke-virtual {v0, p1}, Lch;->a(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0}, Lch;->b()V

    return-void
.end method

.method public final a(Lcsi;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->k:Lagf;

    iget-boolean v0, v0, Lagf;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 260
    invoke-virtual {p1}, Lcsi;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    new-array v0, v1, [Ljava/lang/Object;

    .line 279
    const-string v1, "Restore in work profile received 0 compatible devices, quitting."

    invoke-virtual {p1, v1, v0}, Laqd;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x3

    .line 280
    invoke-direct {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->y()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->setResult(ILandroid/content/Intent;)V

    .line 281
    invoke-direct {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->x()V

    return-void

    .line 261
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcsi;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->k:Lagf;

    iget-wide v4, v0, Lagf;->c:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_3

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    new-array v6, v2, [Ljava/lang/Object;

    .line 262
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v1

    const-string v4, "Preselected restore token: %d"

    invoke-virtual {v0, v4, v6}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lj$/util/Collection$$CC;->stream$$dflt$$(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 263
    new-instance v0, Laeh;

    invoke-direct {v0, p0}, Laeh;-><init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;)V

    .line 264
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->filter(Lj$/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 265
    invoke-interface {p1}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p1

    .line 266
    invoke-virtual {p1, v3}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Latw;

    goto :goto_1

    :cond_3
    iget-object v0, v0, Lagf;->j:Ljava/lang/String;

    .line 267
    invoke-static {v0}, Lcqv;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->k:Lagf;

    iget-object v5, v5, Lagf;->j:Ljava/lang/String;

    aput-object v5, v4, v1

    .line 268
    const-string v5, "Preselected hashed restore token: %s"

    invoke-virtual {v0, v5, v4}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lj$/util/Collection$$CC;->stream$$dflt$$(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 269
    new-instance v0, Laei;

    invoke-direct {v0, p0}, Laei;-><init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;)V

    .line 270
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->filter(Lj$/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    .line 271
    invoke-interface {p1}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object p1

    .line 272
    invoke-virtual {p1, v3}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Latw;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->k:Lagf;

    iget-object v0, v0, Lagf;->k:Ljava/lang/String;

    .line 273
    invoke-static {v0}, Lcqv;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->k:Lagf;

    iget-object v5, v5, Lagf;->k:Ljava/lang/String;

    aput-object v5, v4, v1

    .line 274
    const-string v5, "Preselected hashed parent id: %s"

    invoke-virtual {v0, v5, v4}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lj$/util/Collection$$CC;->stream$$dflt$$(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    sget-object v0, Ladn;->a:Lj$/util/function/Function;

    .line 275
    invoke-static {v0}, Lj$/util/Comparator$$CC;->comparing$$STATIC$$(Lj$/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->max(Ljava/util/Comparator;)Lj$/util/Optional;

    move-result-object p1

    invoke-virtual {p1, v3}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Latw;

    goto :goto_1

    :cond_5
    nop

    .line 261
    :goto_1
    if-eqz v3, :cond_6

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    new-array v0, v2, [Ljava/lang/Object;

    iget-wide v4, v3, Latw;->b:J

    .line 276
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Found preselected device: %d"

    invoke-virtual {p1, v1, v0}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    invoke-virtual {p0, v3}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->a(Latw;)V

    return-void

    :cond_6
    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->k:Lagf;

    .line 278
    invoke-static {p1}, Lajb;->a(Lagf;)Lajb;

    move-result-object p1

    const-string v0, "DEVICE_PICKER"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->a(Lba;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    iput-object p1, v0, Lada;->a:Ljava/util/Map;

    iget-object p1, v0, Lada;->g:Latw;

    invoke-direct {p0, p1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->c(Latw;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 155
    const-string v1, "Starting apps download, no data restore will happen."

    invoke-virtual {p1, v1, v0}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->z:Z

    .line 156
    invoke-direct {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->C()V

    .line 157
    invoke-direct {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->z()V

    .line 158
    invoke-static {p0}, Laqn;->c(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    .line 159
    invoke-virtual {p1}, Lada;->b()Lcsl;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->d(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->h()Z

    move-result p1

    .line 160
    invoke-static {p1}, Laiq;->b(Z)Laiq;

    move-result-object p1

    .line 161
    const-string v0, "FRAGMENT"

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->a(Lba;Ljava/lang/String;)V

    return-void

    .line 162
    :cond_0
    invoke-virtual {p0}, Lsi;->onBackPressed()V

    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    iget-object v1, v0, Lada;->a:Ljava/util/Map;

    .line 529
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laop;

    iget-object v3, v0, Lada;->a:Ljava/util/Map;

    .line 530
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 507
    const/16 v2, 0x2b

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "System restore finished with success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->l:Lacy;

    .line 508
    sget-object v1, Laww;->e:Laww;

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->r:J

    sub-long/2addr v2, v4

    .line 508
    invoke-virtual {v0, v1, v2, v3}, Lacy;->a(Laww;J)V

    goto :goto_0

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->l:Lacy;

    .line 510
    sget-object v1, Laww;->e:Laww;

    sget-object v2, Lawu;->d:Lawu;

    invoke-virtual {v0, v1, v2}, Lacy;->a(Laww;Lawu;)V

    .line 508
    :goto_0
    const/4 v0, 0x7

    .line 511
    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->a(IZ)V

    .line 512
    invoke-static {}, Lada;->a()Lada;

    move-result-object p1

    iget-boolean p1, p1, Lada;->h:Z

    if-eqz p1, :cond_1

    .line 513
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o()V

    :cond_1
    return-void
.end method

.method public final b(I)V
    .locals 6

    .line 14
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    new-array v0, v1, [Ljava/lang/Object;

    .line 15
    const-string v1, "Not finishing activity because it has already been destroyed."

    invoke-virtual {p1, v1, v0}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    iget-wide v2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->q:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 23
    :cond_1
    nop

    .line 15
    :goto_0
    nop

    .line 16
    const-string p1, "No restore android id was set to pass to suw."

    invoke-static {v1, p1}, Lcrj;->b(ZLjava/lang/Object;)V

    .line 17
    invoke-direct {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->y()Landroid/content/Intent;

    move-result-object p1

    iget-wide v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->q:J

    .line 18
    const-string v3, "restoreToken"

    invoke-virtual {p1, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    iget-object v2, v2, Lada;->d:Lcsi;

    .line 19
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    const-string v2, "packagesToRestore"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 21
    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 22
    :cond_2
    invoke-direct {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->y()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->setResult(ILandroid/content/Intent;)V

    .line 23
    :goto_1
    invoke-direct {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->x()V

    return-void
.end method

.method public final b(Latw;)V
    .locals 3

    iget-object p1, p1, Latw;->d:Ljava/lang/String;

    .line 549
    new-instance v0, Lajf;

    .line 550
    invoke-direct {v0}, Lajf;-><init>()V

    .line 549
    new-instance v1, Landroid/os/Bundle;

    .line 551
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 552
    const-string v2, "ARG_DEVICE_NAME"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    invoke-virtual {v0, v1}, Lba;->d(Landroid/os/Bundle;)V

    .line 554
    const-string p1, "FRAGMENT"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->a(Lba;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    iput-object p1, v0, Lada;->a:Ljava/util/Map;

    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 314
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->c(Z)V

    return-void
.end method

.method public final c(Ljava/util/Map;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->k:Lagf;

    iget-boolean v0, v0, Lagf;->b:Z

    if-eqz v0, :cond_0

    .line 341
    invoke-static {}, Lcom/google/android/apps/pixelmigrate/component/LauncherRestoreStartReceiver;->a()V

    sget-object v0, Land;->X:Lccv;

    .line 342
    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/pixelmigrate/component/LauncherRestoreStartReceiver;->a(Landroid/content/Context;)V

    :cond_0
    iget-object v0, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    iget-object v0, v0, Lada;->g:Latw;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 349
    :cond_1
    const/4 v0, 0x0

    .line 343
    :goto_0
    nop

    .line 344
    const-string v5, "No device was selected when starting restore."

    invoke-static {v0, v5}, Lcrj;->b(ZLjava/lang/Object;)V

    .line 345
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->z()V

    .line 346
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->a(Ljava/util/Map;Ljava/lang/Integer;)Z

    move-result v5

    iget-object v0, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    .line 347
    invoke-virtual {v0}, Lada;->c()I

    move-result v0

    if-eqz v5, :cond_4

    iget-object v6, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    iget-object v6, v6, Lada;->a:Ljava/util/Map;

    if-nez v6, :cond_2

    const/4 v7, 0x0

    goto :goto_2

    .line 348
    :cond_2
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    .line 349
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    .line 350
    :cond_5
    :goto_2
    sget-object v6, Laxb;->k:Laxb;

    .line 351
    invoke-virtual {v6}, Ldkd;->g()Ldjy;

    move-result-object v6

    iget-boolean v8, v6, Ldjy;->b:Z

    if-eqz v8, :cond_6

    .line 352
    invoke-virtual {v6}, Ldjy;->b()V

    iput-boolean v4, v6, Ldjy;->b:Z

    :cond_6
    iget-object v8, v6, Ldjy;->a:Ldkd;

    .line 353
    check-cast v8, Laxb;

    iget v9, v8, Laxb;->a:I

    or-int/2addr v9, v3

    iput v9, v8, Laxb;->a:I

    iput v0, v8, Laxb;->b:I

    const/4 v0, 0x2

    or-int/2addr v9, v0

    iput v9, v8, Laxb;->a:I

    iput v7, v8, Laxb;->c:I

    .line 354
    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x4

    if-eqz v9, :cond_8

    .line 355
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iget-boolean v9, v6, Ldjy;->b:Z

    if-eqz v9, :cond_7

    .line 356
    invoke-virtual {v6}, Ldjy;->b()V

    iput-boolean v4, v6, Ldjy;->b:Z

    :cond_7
    iget-object v9, v6, Ldjy;->a:Ldkd;

    .line 357
    check-cast v9, Laxb;

    iget v11, v9, Laxb;->a:I

    or-int/2addr v11, v10

    iput v11, v9, Laxb;->a:I

    iput-boolean v8, v9, Laxb;->d:Z

    :cond_8
    nop

    .line 358
    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 359
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iget-boolean v11, v6, Ldjy;->b:Z

    if-eqz v11, :cond_9

    .line 360
    invoke-virtual {v6}, Ldjy;->b()V

    iput-boolean v4, v6, Ldjy;->b:Z

    :cond_9
    iget-object v11, v6, Ldjy;->a:Ldkd;

    .line 361
    check-cast v11, Laxb;

    iget v12, v11, Laxb;->a:I

    or-int/lit16 v12, v12, 0x80

    iput v12, v11, Laxb;->a:I

    iput-boolean v9, v11, Laxb;->i:Z

    :cond_a
    nop

    .line 362
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 363
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iget-boolean v11, v6, Ldjy;->b:Z

    if-eqz v11, :cond_b

    .line 364
    invoke-virtual {v6}, Ldjy;->b()V

    iput-boolean v4, v6, Ldjy;->b:Z

    :cond_b
    iget-object v11, v6, Ldjy;->a:Ldkd;

    .line 365
    check-cast v11, Laxb;

    iget v12, v11, Laxb;->a:I

    or-int/2addr v12, v8

    iput v12, v11, Laxb;->a:I

    iput-boolean v9, v11, Laxb;->e:Z

    :cond_c
    nop

    .line 366
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 367
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iget-boolean v11, v6, Ldjy;->b:Z

    if-eqz v11, :cond_d

    .line 368
    invoke-virtual {v6}, Ldjy;->b()V

    iput-boolean v4, v6, Ldjy;->b:Z

    :cond_d
    iget-object v11, v6, Ldjy;->a:Ldkd;

    .line 369
    check-cast v11, Laxb;

    iget v12, v11, Laxb;->a:I

    or-int/lit8 v12, v12, 0x10

    iput v12, v11, Laxb;->a:I

    iput-boolean v9, v11, Laxb;->f:Z

    :cond_e
    nop

    .line 370
    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 371
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    iget-boolean v12, v6, Ldjy;->b:Z

    if-eqz v12, :cond_f

    .line 372
    invoke-virtual {v6}, Ldjy;->b()V

    iput-boolean v4, v6, Ldjy;->b:Z

    :cond_f
    iget-object v12, v6, Ldjy;->a:Ldkd;

    .line 373
    check-cast v12, Laxb;

    iget v13, v12, Laxb;->a:I

    or-int/lit8 v13, v13, 0x20

    iput v13, v12, Laxb;->a:I

    iput-boolean v11, v12, Laxb;->g:Z

    :cond_10
    nop

    .line 374
    const/16 v11, 0x9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 375
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    iget-boolean v13, v6, Ldjy;->b:Z

    if-eqz v13, :cond_11

    .line 376
    invoke-virtual {v6}, Ldjy;->b()V

    iput-boolean v4, v6, Ldjy;->b:Z

    :cond_11
    iget-object v13, v6, Ldjy;->a:Ldkd;

    .line 377
    check-cast v13, Laxb;

    iget v14, v13, Laxb;->a:I

    or-int/lit16 v14, v14, 0x100

    iput v14, v13, Laxb;->a:I

    iput-boolean v12, v13, Laxb;->j:Z

    :cond_12
    iget-object v12, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    iget-object v12, v12, Lada;->b:Lahe;

    const/16 v13, 0x40

    if-eqz v12, :cond_14

    iget v14, v12, Lahe;->b:I

    iget v12, v12, Lahe;->c:I

    add-int/2addr v14, v12

    iget-boolean v12, v6, Ldjy;->b:Z

    if-eqz v12, :cond_13

    .line 378
    invoke-virtual {v6}, Ldjy;->b()V

    iput-boolean v4, v6, Ldjy;->b:Z

    :cond_13
    iget-object v12, v6, Ldjy;->a:Ldkd;

    .line 379
    check-cast v12, Laxb;

    iget v15, v12, Laxb;->a:I

    or-int/2addr v15, v13

    iput v15, v12, Laxb;->a:I

    iput v14, v12, Laxb;->h:I

    :cond_14
    iget-object v12, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->l:Lacy;

    .line 380
    invoke-virtual {v6}, Ldjy;->f()Ldkd;

    move-result-object v6

    check-cast v6, Laxb;

    .line 381
    invoke-static {}, Lakb;->a()Ldjy;

    move-result-object v14

    iget-boolean v15, v14, Ldjy;->b:Z

    if-eqz v15, :cond_15

    .line 382
    invoke-virtual {v14}, Ldjy;->b()V

    iput-boolean v4, v14, Ldjy;->b:Z

    :cond_15
    iget-object v15, v14, Ldjy;->a:Ldkd;

    .line 383
    check-cast v15, Lavi;

    sget-object v16, Lavi;->q:Lavi;

    .line 384
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v6, v15, Lavi;->e:Laxb;

    iget v6, v15, Lavi;->a:I

    const/high16 v16, 0x80000

    or-int v6, v6, v16

    iput v6, v15, Lavi;->a:I

    .line 385
    sget-object v6, Lavh;->r:Lavh;

    invoke-virtual {v12, v14, v6}, Lacy;->a(Ldjy;Lavh;)V

    .line 386
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v6

    iput v6, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->A:I

    .line 387
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    iget v6, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->A:I

    add-int/2addr v6, v3

    iput v6, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->A:I

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->h()Z

    move-result v6

    if-eqz v6, :cond_17

    iget v6, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->A:I

    add-int/2addr v6, v0

    iput v6, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->A:I

    :cond_17
    iput-boolean v3, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->z:Z

    .line 388
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->C()V

    iput v4, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->B:I

    iget v6, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->A:I

    iput v6, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->C:I

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->r:J

    new-instance v6, Ljava/util/HashSet;

    .line 390
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 391
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v2, v12}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->a(Ljava/util/Map;Ljava/lang/Integer;)Z

    move-result v12

    if-eqz v12, :cond_19

    .line 392
    const-string v12, "android.permission.READ_CONTACTS"

    invoke-virtual {v1, v12}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_18

    .line 393
    invoke-interface {v6, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_18
    nop

    .line 394
    const-string v12, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v1, v12}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_19

    .line 395
    invoke-interface {v6, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 396
    :cond_19
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1a

    iget-object v0, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->l:Lacy;

    .line 397
    sget-object v2, Lawo;->g:Lawo;

    invoke-virtual {v0, v2}, Lacy;->a(Lawo;)V

    new-array v0, v4, [Ljava/lang/String;

    .line 398
    invoke-interface {v6, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    :cond_1a
    new-instance v6, Ljava/util/ArrayList;

    .line 399
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 400
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    .line 401
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    .line 402
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v2, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    .line 403
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v12, :cond_1b

    .line 404
    invoke-virtual {v1, v0, v3}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->a(IZ)V

    :cond_1b
    if-eqz v14, :cond_1c

    .line 405
    invoke-virtual {v1, v10, v3}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->a(IZ)V

    :cond_1c
    if-eqz v15, :cond_1d

    .line 406
    invoke-virtual {v1, v9, v3}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->a(IZ)V

    :cond_1d
    if-eqz v11, :cond_1e

    .line 407
    invoke-virtual {v1, v8, v3}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->a(IZ)V

    .line 408
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v7

    .line 409
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_27

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PackageInfo;

    .line 410
    iget-object v13, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v12, :cond_20

    .line 411
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_20

    sget-object v4, Laqf;->a:Lcsn;

    .line 412
    invoke-virtual {v4, v13}, Lcsn;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    goto :goto_4

    :cond_1f
    const/4 v4, 0x0

    goto :goto_3

    :cond_20
    :goto_4
    if-eqz v14, :cond_22

    .line 413
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_22

    sget-object v4, Laqf;->b:Lcsn;

    .line 414
    invoke-virtual {v4, v13}, Lcsn;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    goto :goto_5

    :cond_21
    const/4 v4, 0x0

    goto :goto_3

    :cond_22
    :goto_5
    if-eqz v15, :cond_24

    .line 415
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_24

    sget-object v4, Laqf;->c:Lcsn;

    .line 416
    invoke-virtual {v4, v13}, Lcsn;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    goto :goto_6

    :cond_23
    const/4 v4, 0x0

    goto :goto_3

    :cond_24
    :goto_6
    if-eqz v11, :cond_26

    .line 417
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_26

    .line 418
    const-string v4, "com.google.android.gms"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    goto :goto_7

    :cond_25
    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_26
    :goto_7
    iget-object v4, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    new-array v0, v3, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v13, v0, v17

    .line 419
    const-string v8, "Adding package for restore %s"

    invoke-virtual {v4, v8, v0}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    const/4 v4, 0x0

    const/16 v8, 0x8

    goto/16 :goto_3

    :cond_27
    iget-object v0, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    .line 421
    invoke-static {v6}, Lcsi;->a(Ljava/util/Collection;)Lcsi;

    move-result-object v4

    iput-object v4, v0, Lada;->d:Lcsi;

    .line 422
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->a(Ljava/util/Map;Ljava/lang/Integer;)Z

    move-result v4

    iget-object v6, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    iget-object v6, v6, Lada;->b:Lahe;

    if-eqz v4, :cond_2c

    if-eqz v6, :cond_2c

    new-instance v0, Ljava/util/HashSet;

    .line 426
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v4, v6, Lahe;->d:[Ljava/lang/String;

    if-eqz v4, :cond_28

    .line 427
    invoke-static {v0, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_28
    iget-object v4, v6, Lahe;->e:[Ljava/lang/String;

    if-eqz v4, :cond_29

    .line 428
    invoke-static {v0, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_29
    const/4 v4, 0x0

    new-array v6, v4, [Ljava/lang/String;

    .line 429
    invoke-interface {v0, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, [Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->k:Lagf;

    iget-object v0, v0, Lagf;->a:Landroid/accounts/Account;

    .line 430
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    iget-object v4, v4, Lada;->g:Latw;

    iget-wide v6, v4, Latw;->b:J

    .line 431
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lapn;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-boolean v0, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->y:Z

    if-nez v0, :cond_2a

    :try_start_0
    iget-object v6, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->x:Lahh;

    iget-object v0, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->k:Lagf;

    iget-object v7, v0, Lagf;->a:Landroid/accounts/Account;

    iget-object v0, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    iget-object v0, v0, Lada;->g:Latw;

    iget-object v0, v0, Latw;->d:Ljava/lang/String;

    new-instance v4, Lahj;

    .line 432
    invoke-direct {v4, v1}, Lahj;-><init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;)V

    .line 433
    move-object v8, v9

    move-object v9, v0

    move-object v10, v11

    move-object v11, v4

    invoke-interface/range {v6 .. v11}, Lahh;->a(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lahk;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    .line 349
    :catch_0
    move-exception v0

    iget-object v4, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    .line 434
    const-string v8, "Failed to restore contacts."

    invoke-virtual {v4, v8, v0, v7}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->l:Lacy;

    .line 435
    sget-object v4, Laww;->c:Laww;

    sget-object v7, Lawu;->b:Lawu;

    invoke-virtual {v0, v4, v7}, Lacy;->a(Laww;Lawu;)V

    .line 436
    const/4 v4, 0x3

    invoke-virtual {v1, v4, v6}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->a(IZ)V

    goto :goto_8

    .line 452
    :cond_2a
    const/4 v6, 0x0

    iget-object v0, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->j:Ladl;

    iget-object v0, v0, Ladl;->f:Lahc;

    iget-object v4, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->k:Lagf;

    iget-object v8, v4, Lagf;->a:Landroid/accounts/Account;

    iget-object v4, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    iget-object v4, v4, Lada;->g:Latw;

    iget-object v10, v4, Latw;->d:Ljava/lang/String;

    sget-object v4, Lahc;->a:Lacw;

    new-array v7, v6, [Ljava/lang/Object;

    .line 437
    const-string v12, "Start contacts restore."

    invoke-virtual {v4, v12, v7}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    array-length v4, v11

    if-nez v4, :cond_2b

    sget-object v4, Lahc;->a:Lacw;

    new-array v7, v6, [Ljava/lang/Object;

    .line 439
    const-string v6, "No device/SIM contacts to restore"

    invoke-virtual {v4, v6, v7}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 440
    invoke-static {}, Lahc;->a()V

    iget-object v0, v0, Lahc;->b:Lahb;

    .line 441
    invoke-interface {v0, v3}, Lahb;->b(Z)V

    goto :goto_8

    :cond_2b
    iget-object v4, v0, Lahc;->d:Lacy;

    .line 442
    sget-object v6, Laxj;->c:Laxj;

    sget-object v7, Laxl;->c:Laxl;

    invoke-virtual {v4, v6, v7}, Lacy;->a(Laxj;Laxl;)V

    .line 443
    new-instance v4, Lagy;

    move-object v6, v4

    move-object v7, v0

    invoke-direct/range {v6 .. v11}, Lagy;-><init>(Lahc;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v4}, Lajw;->a(Lj$/util/function/Supplier;)Lajw;

    move-result-object v4

    sget-object v6, Land;->x:Lccv;

    .line 444
    invoke-virtual {v6}, Lccv;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v4, Lajw;->a:I

    new-instance v6, Lagz;

    invoke-direct {v6, v0}, Lagz;-><init>(Lahc;)V

    iput-object v6, v4, Lajw;->b:Lajv;

    new-instance v6, Laha;

    .line 445
    invoke-direct {v6, v0}, Laha;-><init>(Lahc;)V

    iput-object v6, v4, Lajw;->c:Lbpa;

    .line 446
    invoke-virtual {v4}, Lajw;->a()V

    goto :goto_8

    .line 423
    :cond_2c
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 424
    const/4 v4, 0x3

    invoke-virtual {v1, v4, v3}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->a(IZ)V

    .line 425
    :cond_2d
    invoke-static {}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreService;->a()V

    .line 433
    :goto_8
    nop

    .line 447
    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->a(Ljava/util/Map;Ljava/lang/Integer;)Z

    move-result v0

    .line 448
    invoke-static {}, Ldtv;->b()Z

    move-result v2

    if-eqz v2, :cond_2f

    if-eqz v0, :cond_2f

    iget-object v0, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->k:Lagf;

    iget-boolean v0, v0, Lagf;->b:Z

    if-nez v0, :cond_2f

    iget-object v0, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->j:Ladl;

    iget-object v0, v0, Ladl;->k:Lbdy;

    sget-object v2, Ldtv;->a:Ldtv;

    .line 449
    invoke-virtual {v2}, Ldtv;->e()Ldtw;

    move-result-object v2

    invoke-interface {v2}, Ldtw;->c()J

    move-result-wide v6

    long-to-int v2, v6

    .line 450
    invoke-virtual {v0, v1, v2}, Lbdz;->a(Landroid/content/Context;I)I

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->j:Ladl;

    iget-object v0, v0, Ladl;->l:Laug;

    iget-object v2, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->k:Lagf;

    iget-object v2, v2, Lagf;->a:Landroid/accounts/Account;

    .line 453
    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {}, Lbha;->a()Lbgz;

    move-result-object v4

    new-instance v6, Lauj;

    .line 454
    invoke-direct {v6, v2}, Lauj;-><init>(Ljava/lang/String;)V

    iput-object v6, v4, Lbgz;->a:Lbgs;

    new-array v2, v3, [Lbdv;

    .line 455
    sget-object v6, Lauf;->f:Lbdv;

    const/4 v7, 0x0

    aput-object v6, v2, v7

    iput-object v2, v4, Lbgz;->b:[Lbdv;

    .line 456
    invoke-virtual {v4}, Lbgz;->a()Lbha;

    move-result-object v2

    check-cast v0, Lbes;

    .line 457
    invoke-virtual {v0, v2}, Lbes;->b(Lbha;)Lbpi;

    goto :goto_9

    .line 451
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 452
    const-string v2, "mms_restore_enabled"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 457
    :goto_9
    nop

    .line 458
    const/16 v2, 0x9

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->a(IZ)V

    :cond_2f
    iget-object v0, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->j:Ladl;

    iget-object v0, v0, Ladl;->a:Lagg;

    iget-object v0, v0, Lagg;->h:Ls;

    .line 459
    invoke-virtual {v0}, Ls;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lagn;

    iget-object v0, v0, Lagn;->d:Lagw;

    .line 460
    invoke-static {}, Ldtv;->c()Z

    move-result v2

    if-eqz v2, :cond_36

    iget-boolean v0, v0, Lagw;->b:Z

    if-eqz v0, :cond_36

    const-string v0, "com.google.android.apps.subscriptions.red"

    if-eqz v5, :cond_32

    iget-object v2, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    .line 461
    invoke-virtual {v2}, Lada;->b()Lcsl;

    move-result-object v2

    if-nez v2, :cond_30

    goto :goto_a

    .line 462
    :cond_30
    invoke-virtual {v2}, Lcsl;->a()Lcsn;

    move-result-object v2

    .line 463
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 464
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laop;

    iget-object v6, v6, Laop;->e:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 465
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_31

    goto/16 :goto_c

    .line 466
    :cond_32
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 467
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_33

    const/high16 v4, 0x10000

    .line 468
    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 469
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    goto/16 :goto_c

    .line 495
    :cond_33
    iget-object v0, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->j:Ladl;

    iget-object v0, v0, Ladl;->j:Lafw;

    iget-object v2, v0, Lafw;->a:Landroid/content/Context;

    .line 470
    const-string v4, "notification"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 471
    const-string v4, "pixelmigrate_notification_channel"

    invoke-virtual {v2, v4}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v6

    if-nez v6, :cond_34

    .line 472
    new-instance v6, Landroid/app/NotificationChannel;

    iget-object v7, v0, Lafw;->a:Landroid/content/Context;

    const v8, 0x7f11019d

    .line 473
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-direct {v6, v4, v7, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 474
    invoke-virtual {v6, v3}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 475
    invoke-virtual {v6, v3}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 476
    invoke-virtual {v2, v6}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_34
    new-instance v3, Landroid/content/Intent;

    iget-object v6, v0, Lafw;->a:Landroid/content/Context;

    const-class v7, Lcom/google/android/apps/pixelmigrate/cloudrestore/googleone/GoogleOneNotificationClickReceiver;

    .line 477
    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v6, v0, Lafw;->a:Landroid/content/Context;

    .line 478
    const/4 v7, 0x0

    invoke-static {v6, v7, v3, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    new-instance v6, Landroid/os/Bundle;

    .line 479
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iget-object v7, v0, Lafw;->a:Landroid/content/Context;

    const v8, 0x7f1100e8

    .line 480
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 481
    const-string v8, "android.substName"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ldc;

    iget-object v8, v0, Lafw;->a:Landroid/content/Context;

    .line 482
    invoke-direct {v7, v8, v4}, Ldc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v4, v0, Lafw;->a:Landroid/content/Context;

    const v8, 0x7f1100e7

    .line 483
    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ldc;->c(Ljava/lang/CharSequence;)V

    const v4, 0x7f080265

    .line 484
    invoke-virtual {v7, v4}, Ldc;->a(I)V

    iget-object v4, v0, Lafw;->a:Landroid/content/Context;

    const v8, 0x7f1100e5

    .line 485
    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 486
    invoke-virtual {v7, v4}, Ldc;->b(Ljava/lang/CharSequence;)V

    iput-object v3, v7, Ldc;->g:Landroid/app/PendingIntent;

    .line 487
    invoke-virtual {v7}, Ldc;->c()V

    new-instance v3, Ldd;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ldd;-><init>([B)V

    iget-object v0, v0, Lafw;->a:Landroid/content/Context;

    const v4, 0x7f1100e6

    .line 488
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 489
    invoke-virtual {v3, v0}, Ldd;->a(Ljava/lang/CharSequence;)V

    .line 490
    invoke-virtual {v7, v3}, Ldc;->a(Ldd;)V

    iget-object v0, v7, Ldc;->k:Landroid/os/Bundle;

    if-nez v0, :cond_35

    new-instance v0, Landroid/os/Bundle;

    .line 491
    invoke-direct {v0, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, v7, Ldc;->k:Landroid/os/Bundle;

    goto :goto_b

    .line 492
    :cond_35
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 491
    :goto_b
    const/16 v0, 0x3e9

    .line 493
    invoke-virtual {v7}, Ldc;->b()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 469
    :cond_36
    :goto_c
    if-eqz v5, :cond_37

    iget-object v0, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    .line 494
    invoke-virtual {v0}, Lada;->b()Lcsl;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->d(Ljava/util/Map;)V

    goto :goto_d

    .line 495
    :cond_37
    sget v0, Lcsl;->a:I

    .line 496
    sget-object v0, Lctf;->b:Lcsl;

    .line 495
    invoke-direct {v1, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->d(Ljava/util/Map;)V

    .line 494
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->h()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->j:Ladl;

    iget-object v0, v0, Ladl;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Ladw;

    .line 497
    invoke-direct {v2, v1}, Ladw;-><init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;)V

    .line 498
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->j:Ladl;

    iget-object v2, v0, Ladl;->i:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, v0, Ladl;->g:Lajs;

    .line 499
    invoke-virtual {v2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->k:Lagf;

    iget-boolean v0, v0, Lagf;->f:Z

    if-eqz v0, :cond_38

    .line 500
    sget-object v0, Land;->f:Lccv;

    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_e

    .line 501
    :cond_38
    sget-object v0, Land;->e:Lccv;

    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 502
    :goto_e
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 503
    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->a(J)V

    .line 504
    invoke-static/range {p0 .. p0}, Laqn;->c(Landroid/content/Context;)V

    :cond_39
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->h()Z

    move-result v0

    .line 505
    invoke-static {v0}, Laiq;->b(Z)Laiq;

    move-result-object v0

    .line 506
    const-string v2, "FRAGMENT"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->a(Lba;Ljava/lang/String;)V

    return-void
.end method

.method public final c(Z)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    if-eq v1, p1, :cond_0

    const-string v1, "failed"

    goto :goto_0

    .line 318
    :cond_0
    const-string v1, "succeeded"

    .line 0
    :goto_0
    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 315
    const-string v1, "Restore contacts %s"

    invoke-virtual {v0, v1, v2}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->l:Lacy;

    .line 316
    sget-object v1, Laww;->c:Laww;

    .line 317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->r:J

    sub-long/2addr v2, v4

    .line 316
    invoke-virtual {v0, v1, v2, v3}, Lacy;->a(Laww;J)V

    goto :goto_1

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->l:Lacy;

    .line 318
    sget-object v1, Laww;->c:Laww;

    sget-object v2, Lawu;->d:Lawu;

    invoke-virtual {v0, v1, v2}, Lacy;->a(Laww;Lawu;)V

    .line 316
    :goto_1
    new-instance v0, Laea;

    .line 319
    invoke-direct {v0, p0, p1}, Laea;-><init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->l:Lacy;

    .line 284
    sget-object v1, Lawz;->c:Lawz;

    invoke-virtual {v0, v1}, Lacy;->a(Lawz;)V

    .line 285
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->b(I)V

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h()Z
    .locals 6

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    iget-object v0, v0, Lada;->g:Latw;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-wide v2, v0, Latw;->c:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->k:Lagf;

    iget-boolean v2, v0, Lagf;->d:Z

    if-eqz v2, :cond_2

    iget-boolean v0, v0, Lagf;->e:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public final i()V
    .locals 2

    .line 333
    invoke-direct {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->y()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->setResult(ILandroid/content/Intent;)V

    .line 334
    invoke-direct {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->x()V

    return-void
.end method

.method public final j()V
    .locals 2

    .line 300
    invoke-direct {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->y()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->setResult(ILandroid/content/Intent;)V

    .line 301
    invoke-direct {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->x()V

    return-void
.end method

.method public final k()V
    .locals 6

    .line 286
    const-string v0, "com.google.android.apps.pixelmigrate"

    invoke-static {}, Ldtc;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->k:Lagf;

    iget-object v1, v1, Lagf;->a:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    iget-object v2, v2, Lada;->g:Latw;

    .line 287
    invoke-virtual {v2}, Ldhi;->b()[B

    move-result-object v2

    if-eqz v2, :cond_1

    .line 288
    new-instance v3, Landroid/content/Intent;

    .line 289
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 290
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x100000

    .line 291
    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 292
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v4, v4, 0x81

    if-eqz v4, :cond_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 299
    :cond_0
    const-string v0, "com.google.android.apps.restore"

    .line 292
    :goto_0
    nop

    .line 293
    const-string v4, "com.google.android.apps.pixelmigrate.cloudrestore.component.KeyRecoveryLockScreenEntryActivity"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 294
    const-string v3, "KeyRecoveryLockScreenEntryActivity.account"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 295
    const-string v1, "KeyRecoveryLockScreenEntryActivity.device"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 287
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 288
    const-string v1, "Required arguments cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->k:Lagf;

    iget-object v0, v0, Lagf;->a:Landroid/accounts/Account;

    iget-object v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    iget-object v1, v1, Lada;->g:Latw;

    .line 296
    invoke-static {p0, v0, v1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->a(Landroid/content/Context;Landroid/accounts/Account;Latw;)Landroid/content/Intent;

    move-result-object v0

    .line 297
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 298
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    :cond_3
    const/4 v1, 0x1

    .line 299
    invoke-virtual {p0, v0, v1}, Lbc;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->l:Lacy;

    .line 282
    sget-object v1, Lawz;->d:Lawz;

    invoke-virtual {v0, v1}, Lacy;->a(Lawz;)V

    .line 283
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->b(I)V

    return-void
.end method

.method public final n()V
    .locals 2

    .line 154
    new-instance v0, Lahu;

    invoke-direct {v0}, Lahu;-><init>()V

    const-string v1, "APP_PICKER_FRAGMENT_V2"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->a(Lba;Ljava/lang/String;)V

    return-void
.end method

.method public final o()V
    .locals 3

    iget v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->C:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    new-array v1, v1, [Ljava/lang/Object;

    .line 189
    const-string v2, "\'Continue with suw\' pressed before restore jobs finished, displaying waiting screen."

    invoke-virtual {v0, v2, v1}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->D:Z

    .line 190
    new-instance v0, Lamb;

    invoke-direct {v0}, Lamb;-><init>()V

    const-string v1, "FRAGMENT"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->a(Lba;Ljava/lang/String;)V

    .line 191
    sget-object v0, Land;->w:Lccv;

    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->a(J)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    new-array v1, v1, [Ljava/lang/Object;

    .line 187
    const-string v2, "finishing activity."

    invoke-virtual {v0, v2, v1}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 188
    invoke-virtual {p0, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->b(I)V

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    .line 145
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v6, "onActivityResult(%d, %d)"

    invoke-virtual {v0, v6, v2}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    invoke-super {p0, p1, p2, p3}, Lamo;->onActivityResult(IILandroid/content/Intent;)V

    if-ne p1, v5, :cond_4

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    iget-object p3, p1, Lada;->g:Latw;

    if-nez p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 148
    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    if-eqz p2, :cond_2

    if-eq p2, v5, :cond_1

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    new-array p2, v5, [Ljava/lang/Object;

    aput-object v3, p2, v4

    .line 153
    const-string p3, "Unexpected key recovery result: %d"

    invoke-virtual {p1, p3, p2}, Laqd;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p1, Ladv;

    .line 149
    invoke-direct {p1, p0}, Ladv;-><init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;)V

    iput-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->G:Ljava/lang/Runnable;

    return-void

    .line 153
    :cond_2
    return-void

    .line 149
    :cond_3
    iget-wide p2, p3, Latw;->b:J

    iget-object p1, p1, Lada;->f:Ljava/util/Set;

    .line 150
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->p:Ljava/util/Map;

    .line 151
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ladu;

    .line 152
    invoke-direct {p1, p0}, Ladu;-><init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;)V

    iput-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->G:Ljava/lang/Runnable;

    return-void

    .line 146
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    new-array p3, v1, [Ljava/lang/Object;

    .line 147
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v4

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    iget-object p1, p1, Lada;->g:Latw;

    aput-object p1, p3, v5

    .line 148
    const-string p1, "onActivityResult with unexpected request code: %d for device: %s"

    invoke-virtual {p2, p1, p3}, Laqd;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onBackPressed()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->z:Z

    if-eqz v0, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->D()V

    return-void

    .line 183
    :cond_0
    invoke-virtual {p0}, Lbc;->aa()Lbx;

    move-result-object v0

    const/4 v1, 0x1

    .line 184
    const-string v2, "IMPORTANT_TRANSACTION"

    invoke-virtual {v0, v2, v1}, Lbx;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    invoke-direct {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->D()V

    return-void

    :cond_1
    const-class v0, Lajb;

    .line 186
    invoke-direct {p0, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    const/4 v1, 0x0

    iput-object v1, v0, Lada;->g:Latw;

    :cond_2
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    new-instance v0, Lcnq;

    .line 192
    invoke-static {}, Lcnr;->a()Lcnr;

    move-result-object v1

    invoke-direct {v0, v1}, Lcnq;-><init>(Lcnr;)V

    const v1, 0x7f1201c1

    iput v1, v0, Lcnq;->a:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcnq;->b:Z

    .line 193
    invoke-virtual {v0}, Lcnq;->a()Lcnr;

    move-result-object v0

    .line 194
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcnr;->a(Landroid/content/Intent;)I

    move-result v0

    .line 195
    invoke-virtual {p0, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->setTheme(I)V

    .line 196
    invoke-super {p0, p1}, Lamo;->onCreate(Landroid/os/Bundle;)V

    .line 197
    const v0, 0x7f0d00d7

    invoke-virtual {p0, v0}, Lsi;->setContentView(I)V

    .line 198
    sget-object v0, Land;->aq:Lccv;

    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    invoke-static {p0}, Lant;->a(Landroid/content/Context;)Lant;

    move-result-object v0

    iget-boolean v2, v0, Lant;->c:Z

    if-eqz v2, :cond_0

    sget-object v0, Lant;->a:Laqd;

    new-array v1, v1, [Ljava/lang/Object;

    .line 200
    const-string v2, "App updates already paused, ignoring"

    invoke-virtual {v0, v2, v1}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 205
    :cond_0
    sget-object v2, Lant;->a:Laqd;

    new-array v1, v1, [Ljava/lang/Object;

    .line 201
    const-string v3, "Pausing app updates"

    invoke-virtual {v2, v3, v1}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lant;->b:Lany;

    .line 202
    invoke-virtual {v1}, Lany;->a()Lczu;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v0, Lant;->c:Z

    new-instance v0, Lanr;

    invoke-direct {v0}, Lanr;-><init>()V

    .line 203
    sget-object v2, Lczj;->a:Lczj;

    .line 204
    invoke-static {v1, v0, v2}, Ldab;->a(Lczu;Lczm;Ljava/util/concurrent/Executor;)V

    .line 200
    :cond_1
    :goto_0
    new-instance v0, Ladx;

    .line 205
    invoke-direct {v0, p0}, Ladx;-><init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;)V

    new-instance v1, Laeb;

    invoke-direct {v1, p0, p1}, Laeb;-><init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;Landroid/os/Bundle;)V

    new-instance v2, Laec;

    invoke-direct {v2, p0, p1}, Laec;-><init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0, v1, v2}, Lamo;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 206
    invoke-super {p0}, Lamo;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->j:Ladl;

    iput-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->k:Lagf;

    iget-object v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->H:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->H:Landroid/os/AsyncTask;

    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->n:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_1

    .line 208
    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iput-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->n:Ljava/util/concurrent/Future;

    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->m:Larf;

    if-eqz v1, :cond_2

    .line 209
    invoke-virtual {v1}, Larf;->a()V

    iput-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->m:Larf;

    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->x:Lahh;

    if-eqz v1, :cond_3

    iput-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->x:Lahh;

    .line 210
    invoke-virtual {p0, p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->E:Landroid/os/Handler;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->F:Ljava/lang/Runnable;

    if-eqz v1, :cond_4

    .line 211
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public final onPause()V
    .locals 3

    .line 302
    sget-object v0, Lanc;->b:Lccv;

    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 304
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 305
    const-string v2, "activity_resumed"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 306
    const-string v1, "crashes_counter"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 307
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 308
    :cond_0
    invoke-super {p0}, Lamo;->onPause()V

    .line 309
    invoke-static {}, Lada;->a()Lada;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lada;->j:Lacz;

    .line 310
    invoke-direct {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->C()V

    return-void
.end method

.method public final onResume()V
    .locals 3

    .line 320
    sget-object v0, Lanc;->b:Lccv;

    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 321
    invoke-virtual {p0, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "activity_resumed"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 322
    :cond_0
    invoke-super {p0}, Lamo;->onResume()V

    .line 323
    invoke-static {}, Lada;->a()Lada;

    move-result-object v0

    iput-object p0, v0, Lada;->j:Lacz;

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->G:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 324
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->G:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    iget-wide v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->r:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 325
    const-string v2, "restore_start_time_millis"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 326
    :cond_0
    invoke-super {p0, p1}, Lamo;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 327
    const-string v1, "Connected to CloudRestoreService"

    invoke-virtual {p1, v1, v0}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 328
    :cond_0
    const-string p1, "com.google.android.apps.pixelmigrate.cloudrestore.service.IBoundCloudRestoreService"

    invoke-interface {p2, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    .line 329
    instance-of v0, p1, Lahh;

    if-eqz v0, :cond_1

    .line 330
    check-cast p1, Lahh;

    goto :goto_0

    :cond_1
    new-instance p1, Lahf;

    .line 331
    invoke-direct {p1, p2}, Lahf;-><init>(Landroid/os/IBinder;)V

    .line 327
    :goto_0
    iput-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->x:Lahh;

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 332
    const-string v1, "Disconnected from CloudRestoreService"

    invoke-virtual {p1, v1, v0}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->x:Lahh;

    return-void
.end method

.method public final p()Ljava/util/List;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    .line 30
    invoke-virtual {v1}, Lada;->b()Lcsl;

    move-result-object v1

    .line 31
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 32
    invoke-static {p0, v1}, Laia;->a(Landroid/content/Context;Ljava/util/Map;)Lahv;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    iget-object v1, v1, Lada;->c:Ljava/util/List;

    .line 33
    invoke-direct {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->B()Z

    move-result v2

    .line 34
    invoke-static {p0, v1, v2}, Laia;->a(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    .line 35
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 36
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 37
    :cond_1
    invoke-direct {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->B()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 38
    invoke-static {v1}, Lj$/util/Collection$$Dispatch;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    sget-object v2, Ladz;->a:Lj$/util/function/Predicate;

    .line 39
    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->anyMatch(Lj$/util/function/Predicate;)Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    new-array v5, v4, [Ljava/lang/Object;

    .line 40
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "Is gms contacts restore choice added? %s"

    invoke-virtual {v2, v6, v5}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    iget-object v1, v1, Lada;->b:Lahe;

    iget v2, v1, Lahe;->b:I

    iget v1, v1, Lahe;->c:I

    add-int v5, v2, v1

    if-lez v5, :cond_3

    .line 41
    invoke-static {p0, v2, v1}, Laia;->a(Landroid/content/Context;II)Lahv;

    move-result-object v1

    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->j:Ladl;

    iget-object v1, v1, Ladl;->a:Lagg;

    iget-object v1, v1, Lagg;->h:Ls;

    .line 43
    invoke-virtual {v1}, Ls;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lagn;

    iget-object v1, v1, Lagn;->d:Lagw;

    iget-boolean v2, v1, Lagw;->b:Z

    if-eqz v2, :cond_5

    iget-wide v5, v1, Lagw;->c:J

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-lez v2, :cond_5

    .line 44
    invoke-static {}, Ldtv;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->k:Lagf;

    iget-boolean v2, v2, Lagf;->b:Z

    if-nez v2, :cond_5

    iget-wide v1, v1, Lagw;->c:J

    const/16 v5, 0x9

    .line 45
    invoke-static {v5}, Laia;->a(I)Lahv;

    move-result-object v5

    iput-wide v1, v5, Lahv;->h:J

    const v6, 0x7f110174

    .line 46
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lahv;->b:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v1, v2}, Ltt;->a(Landroid/content/res/Resources;J)Laqo;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, v1, Laqo;->a:Ljava/lang/String;

    aput-object v6, v2, v3

    iget-object v1, v1, Laqo;->b:Ljava/lang/String;

    aput-object v1, v2, v4

    const v1, 0x7f110086

    .line 48
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Ltt;->a(Landroid/content/res/Resources;)Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 50
    invoke-static {v4}, Landroid/text/BidiFormatter;->getInstance(Z)Landroid/text/BidiFormatter;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 52
    :cond_4
    nop

    .line 51
    :goto_0
    invoke-virtual {v5, v1}, Lahv;->a(Ljava/lang/String;)V

    .line 52
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method public final q()Ljava/util/Set;
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    new-instance v1, Ljava/util/HashSet;

    .line 60
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, v0, Lada;->a:Ljava/util/Map;

    .line 61
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 62
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laop;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final r()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    iget-object v1, v0, Lada;->a:Ljava/util/Map;

    .line 3
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laop;

    iget-object v3, v0, Lada;->a:Ljava/util/Map;

    const/4 v4, 0x0

    .line 4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    iget-object v1, v0, Lada;->a:Ljava/util/Map;

    .line 527
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laop;

    iget-object v3, v0, Lada;->a:Ljava/util/Map;

    const/4 v4, 0x1

    .line 528
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final t()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->k:Lagf;

    iget-boolean v0, v0, Lagf;->b:Z

    new-instance v1, Landroid/os/Bundle;

    .line 335
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 336
    const-string v2, "is_cloud_restore"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 337
    const-string v2, "is_deferred"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v0, Lalb;

    .line 338
    invoke-direct {v0}, Lalb;-><init>()V

    .line 339
    invoke-virtual {v0, v1}, Lba;->d(Landroid/os/Bundle;)V

    .line 340
    invoke-virtual {p0}, Lbc;->aa()Lbx;

    move-result-object v1

    const-string v2, "DIALOG"

    invoke-virtual {v0, v1, v2}, Lav;->a(Lbx;Ljava/lang/String;)V

    return-void
.end method

.method public final u()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->p:Ljava/util/Map;

    .line 538
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    .line 539
    invoke-virtual {v0}, Lada;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    iget-object v1, v1, Lada;->g:Latw;

    invoke-direct {p0, v1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->c(Latw;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 540
    new-instance v0, Lahu;

    invoke-direct {v0}, Lahu;-><init>()V

    const-string v1, "APP_PICKER_FRAGMENT_V2"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->a(Lba;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->k:Lagf;

    iget-object v1, v1, Lagf;->a:Landroid/accounts/Account;

    .line 541
    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    new-instance v2, Laim;

    .line 542
    invoke-direct {v2}, Laim;-><init>()V

    .line 541
    new-instance v3, Landroid/os/Bundle;

    .line 543
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 544
    const-string v4, "arg_account_name"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const-string v1, "arg_num_available_apps"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 546
    invoke-virtual {v2, v3}, Lba;->d(Landroid/os/Bundle;)V

    .line 547
    const-string v0, "FRAGMENT"

    invoke-virtual {p0, v2, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->a(Lba;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->p:Ljava/util/Map;

    aput-object v3, v2, v1

    .line 548
    const-string v1, "Waiting to fetch other cloud restore items: %s"

    invoke-virtual {v0, v1, v2}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
