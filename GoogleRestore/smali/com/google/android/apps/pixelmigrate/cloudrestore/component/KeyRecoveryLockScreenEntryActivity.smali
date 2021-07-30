.class public Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;
.super Lbc;
.source "PG"

# interfaces
.implements Lajg;


# static fields
.field public static final j:Laqd;


# instance fields
.field public k:Ladd;

.field public l:Larf;

.field public m:Landroid/widget/ProgressBar;

.field public n:Lajq;

.field private o:Landroid/accounts/Account;

.field private p:Lagd;

.field private q:Lacy;

.field private r:Ljava/util/concurrent/ExecutorService;

.field private s:Ljava/util/concurrent/ScheduledExecutorService;

.field private t:Lajh;

.field private final u:Lcrm;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "KeyRecoveryLockScreenEntryActivity"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->j:Laqd;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Lbc;-><init>()V

    .line 3
    sget-object v0, Land;->K:Lccv;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Laep;

    invoke-direct {v1, v0}, Laep;-><init>(Lccv;)V

    invoke-static {v1}, Lcrq;->a(Lcrm;)Lcrm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->u:Lcrm;

    return-void
.end method

.method static a(Landroid/content/Context;Landroid/accounts/Account;Latw;)Landroid/content/Intent;
    .locals 2

    .line 5
    invoke-static {p2}, Ladb;->b(Latw;)Z

    move-result v0

    invoke-static {v0}, Lcrj;->b(Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;

    .line 6
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    const-string p0, "KeyRecoveryLockScreenEntryActivity.account"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    .line 8
    invoke-static {p2}, Ladd;->a(Latw;)Ladd;

    move-result-object p1

    const-string p2, "KeyRecoveryLockScreenEntryActivity.state"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private final a([B)V
    .locals 5

    .line 65
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->j:Laqd;

    new-array v1, v1, [Ljava/lang/Object;

    .line 66
    const-string v2, "Not updating UI to waiting state because activity is destroyed."

    invoke-virtual {v0, v2, v1}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    :cond_0
    const v0, 0x7f0a01c7

    .line 67
    invoke-virtual {p0, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->m:Landroid/widget/ProgressBar;

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 66
    :goto_0
    new-instance v0, Laez;

    .line 69
    invoke-direct {v0, p0, p1}, Laez;-><init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;[B)V

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->r:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->s:Ljava/util/concurrent/ScheduledExecutorService;

    .line 70
    invoke-static {p1}, Ldab;->a(Ljava/util/concurrent/ExecutorService;)Lczv;

    move-result-object p1

    new-instance v2, Laeu;

    invoke-direct {v2, p0}, Laeu;-><init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;)V

    .line 71
    invoke-interface {p1, v2}, Lczv;->a(Ljava/util/concurrent/Callable;)Lczu;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->u:Lcrm;

    .line 72
    invoke-interface {v2}, Lcrm;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 73
    invoke-static {p1, v2, v3, v4, v1}, Ldab;->a(Lczu;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lczu;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->r:Ljava/util/concurrent/ExecutorService;

    .line 74
    invoke-static {p1, v0, v1}, Ldab;->a(Lczu;Lczm;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static final synthetic h()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x9

    invoke-static {v0, v1}, Laqr;->a(II)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lauu;)V
    .locals 2

    .line 121
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->j:Laqd;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 122
    const-string v1, "Not updating UI to error state because activity is destroyed."

    invoke-virtual {p1, v1, v0}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const v0, 0x7f0a01c7

    .line 123
    invoke-virtual {p0, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->m:Landroid/widget/ProgressBar;

    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 125
    sget-object v0, Lauu;->d:Lauu;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->t:Lajh;

    .line 126
    invoke-virtual {v0, p1}, Lajh;->a(Lauu;)V

    :cond_1
    return-void
.end method

.method public final a(Lauu;J)V
    .locals 11

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->k:Ladd;

    iget-object v0, v0, Ladd;->g:Laso;

    iget v0, v0, Laso;->d:I

    .line 12
    invoke-static {v0}, Layk;->a(I)Layk;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Layk;->a:Layk;

    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->q:Lacy;

    iget-object v2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->k:Ladd;

    iget-wide v3, v2, Ladd;->b:J

    .line 13
    invoke-virtual {v2}, Ladd;->a()I

    move-result v2

    iget-object v5, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->k:Ladd;

    iget-object v5, v5, Ladd;->d:Ladc;

    .line 14
    invoke-static {}, Lakb;->a()Ldjy;

    move-result-object v6

    .line 15
    sget-object v7, Layn;->h:Layn;

    .line 16
    invoke-virtual {v7}, Ldkd;->g()Ldjy;

    move-result-object v7

    iget p1, p1, Lauu;->s:I

    iget-boolean v8, v7, Ldjy;->b:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_1

    .line 17
    invoke-virtual {v7}, Ldjy;->b()V

    iput-boolean v9, v7, Ldjy;->b:Z

    :cond_1
    iget-object v8, v7, Ldjy;->a:Ldkd;

    .line 18
    check-cast v8, Layn;

    iget v10, v8, Layn;->a:I

    or-int/lit8 v10, v10, 0x2

    iput v10, v8, Layn;->a:I

    iput p1, v8, Layn;->c:I

    or-int/lit8 p1, v10, 0x4

    iput p1, v8, Layn;->a:I

    iput v2, v8, Layn;->d:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v8, Layn;->a:I

    iput-wide p2, v8, Layn;->e:J

    iget p2, v0, Layk;->d:I

    iput p2, v8, Layn;->g:I

    or-int/lit8 p1, p1, 0x20

    iput p1, v8, Layn;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v8, Layn;->a:I

    iput-wide v3, v8, Layn;->b:J

    iget-object p1, v5, Ladc;->d:Lasq;

    iget p1, p1, Lasq;->e:I

    .line 19
    invoke-static {p1}, Laym;->a(I)Laym;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-boolean p2, v7, Ldjy;->b:Z

    if-eqz p2, :cond_2

    .line 20
    invoke-virtual {v7}, Ldjy;->b()V

    iput-boolean v9, v7, Ldjy;->b:Z

    :cond_2
    iget-object p2, v7, Ldjy;->a:Ldkd;

    .line 21
    check-cast p2, Layn;

    iget p1, p1, Laym;->e:I

    iput p1, p2, Layn;->f:I

    iget p1, p2, Layn;->a:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p2, Layn;->a:I

    :cond_3
    iget-boolean p1, v6, Ldjy;->b:Z

    if-eqz p1, :cond_4

    .line 22
    invoke-virtual {v6}, Ldjy;->b()V

    iput-boolean v9, v6, Ldjy;->b:Z

    :cond_4
    iget-object p1, v6, Ldjy;->a:Ldkd;

    .line 23
    check-cast p1, Lavi;

    invoke-virtual {v7}, Ldjy;->f()Ldkd;

    move-result-object p2

    check-cast p2, Layn;

    sget-object p3, Lavi;->q:Lavi;

    .line 24
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p1, Lavi;->n:Layn;

    iget p2, p1, Lavi;->b:I

    or-int/lit8 p2, p2, 0x2

    iput p2, p1, Lavi;->b:I

    .line 25
    sget-object p1, Lavh;->H:Lavh;

    invoke-virtual {v1, v6, p1}, Lacy;->a(Ldjy;Lavh;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 118
    sget-object v0, Lafc;->a:Ljava/util/regex/Pattern;

    .line 119
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string v1, "PIN must be all digits"

    invoke-static {v0, v1}, Lcrj;->a(ZLjava/lang/Object;)V

    .line 120
    sget-object v0, Lcqp;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 118
    invoke-direct {p0, p1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->a([B)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0

    .line 117
    invoke-static {p1}, Lafc;->a(Ljava/util/List;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->a([B)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .line 116
    invoke-static {p1}, Lafc;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->a([B)V

    return-void
.end method

.method public final f()V
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->setResult(I)V

    .line 11
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->finish()V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    .line 27
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "intentionally_canceled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->setResult(ILandroid/content/Intent;)V

    .line 28
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->finish()V

    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    .line 26
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->g()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 6

    new-instance v0, Lcnq;

    .line 29
    invoke-static {}, Lcnr;->a()Lcnr;

    move-result-object v1

    invoke-direct {v0, v1}, Lcnq;-><init>(Lcnr;)V

    const v1, 0x7f1201c1

    iput v1, v0, Lcnq;->a:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcnq;->b:Z

    .line 30
    invoke-virtual {v0}, Lcnq;->a()Lcnr;

    move-result-object v0

    .line 31
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcnr;->a(Landroid/content/Intent;)I

    move-result v0

    .line 32
    invoke-virtual {p0, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->setTheme(I)V

    .line 33
    invoke-super {p0, p1}, Lbc;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const p1, 0x7f0d001c

    invoke-virtual {p0, p1}, Lsi;->setContentView(I)V

    .line 35
    sget-object p1, Lagd;->a:Lagd;

    iput-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->p:Lagd;

    .line 36
    invoke-static {p0}, Lacy;->a(Landroid/content/Context;)Lacy;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->q:Lacy;

    .line 37
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "KeyRecoveryLockScreenEntryActivity.account"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/accounts/Account;

    iput-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->o:Landroid/accounts/Account;

    .line 38
    invoke-static {}, Ldtc;->c()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "KeyRecoveryLockScreenEntryActivity.state"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ladd;

    goto :goto_1

    .line 56
    :cond_0
    sget-object p1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->j:Laqd;

    new-array v2, v1, [Ljava/lang/Object;

    .line 40
    const-string v3, "Creating state from the device."

    invoke-virtual {p1, v3, v2}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "KeyRecoveryLockScreenEntryActivity.device"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    sget-object v2, Latw;->m:Latw;

    .line 42
    invoke-static {v2, p1}, Ldkd;->a(Ldkd;[B)Ldkd;

    move-result-object p1

    check-cast p1, Latw;

    .line 43
    invoke-static {p1}, Ladd;->a(Latw;)Ladd;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ldkn; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    sget-object v2, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->j:Laqd;

    new-array v3, v1, [Ljava/lang/Object;

    .line 44
    const-string v4, "Invalid device argument or not eligible."

    invoke-virtual {v2, v4, p1, v3}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object p1, v0

    .line 39
    :goto_1
    iput-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->k:Ladd;

    iget-object v2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->o:Landroid/accounts/Account;

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_5

    if-nez p1, :cond_1

    goto/16 :goto_3

    .line 48
    :cond_1
    new-instance p1, Larf;

    invoke-direct {p1, p0}, Larf;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->l:Larf;

    invoke-static {}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->h()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->r:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->h()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->s:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->o:Landroid/accounts/Account;

    iget-object v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->l:Larf;

    new-instance v2, Lajq;

    .line 49
    invoke-static {}, Lapi;->a()Lapi;

    move-result-object v5

    invoke-direct {v2, p0, p1, v1, v5}, Lajq;-><init>(Landroid/app/Activity;Landroid/accounts/Account;Larf;Lapi;)V

    iput-object v2, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->n:Lajq;

    const p1, 0x7f0a00b8

    .line 50
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->m:Landroid/widget/ProgressBar;

    const p1, 0x7f0a013b

    .line 51
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Laeq;

    invoke-direct {v1, p0}, Laeq;-><init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;)V

    .line 52
    invoke-static {p1, v1}, Lge;->a(Landroid/view/View;Lfu;)V

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->k:Ladd;

    iget-object v1, p1, Ladd;->d:Ladc;

    iget-object p1, p1, Ladd;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_4

    if-eq v2, v3, :cond_3

    if-ne v2, v4, :cond_2

    new-instance v0, Lajk;

    .line 53
    invoke-direct {v0}, Lajk;-><init>()V

    .line 54
    sget-object v1, Ladc;->c:Ladc;

    invoke-static {v1, p1}, Lajk;->a(Ladc;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lba;->d(Landroid/os/Bundle;)V

    goto :goto_2

    .line 43
    :cond_2
    throw v0

    .line 55
    :cond_3
    invoke-static {v1, p1}, Lajp;->b(Ladc;Ljava/lang/String;)Lajp;

    move-result-object v0

    goto :goto_2

    .line 56
    :cond_4
    invoke-static {v1, p1}, Lajp;->b(Ladc;Ljava/lang/String;)Lajp;

    move-result-object v0

    .line 54
    :goto_2
    iput-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->t:Lajh;

    .line 57
    invoke-virtual {p0}, Lbc;->aa()Lbx;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lbx;->a()Lch;

    move-result-object p1

    const v1, 0x7f0a009e

    .line 59
    const-string v2, "fragment"

    invoke-virtual {p1, v1, v0, v2}, Lch;->a(ILba;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lch;->b()V

    return-void

    .line 39
    :cond_5
    :goto_3
    sget-object v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->j:Laqd;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    aput-object p1, v4, v3

    .line 45
    const-string p1, "Missing required data: account=%s, state=%s"

    invoke-virtual {v0, p1, v4}, Laqd;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p0, v1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->setResult(I)V

    .line 47
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->finish()V

    return-void
.end method

.method protected final onDestroy()V
    .locals 2

    .line 61
    invoke-super {p0}, Lbc;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->t:Lajh;

    iput-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->m:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->o:Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->k:Ladd;

    iget-object v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->r:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    .line 62
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iput-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->r:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->s:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_1

    .line 63
    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    iput-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->s:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->l:Larf;

    if-eqz v1, :cond_2

    .line 64
    invoke-virtual {v1}, Larf;->a()V

    iput-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->l:Larf;

    :cond_2
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 10

    .line 75
    invoke-super {p0, p1}, Lbc;->onNewIntent(Landroid/content/Intent;)V

    .line 76
    sget-object v0, Lauu;->a:Lauu;

    iget v0, v0, Lauu;->s:I

    const-string v1, "com.google.android.gms.auth.folsom.EXTRA_RECOVERY_RESULT"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 77
    invoke-static {}, Lauu;->values()[Lauu;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_a

    aget-object v5, v1, v4

    .line 78
    iget v6, v5, Lauu;->s:I

    if-ne v6, v0, :cond_9

    sget-object v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->j:Laqd;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v5, v2, v3

    .line 79
    const-string v4, "Key recovery result code: %s"

    invoke-virtual {v0, v4, v2}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v6, 0x0

    .line 80
    const-string v2, "android.security.action.EXTRA_COOL_OFF_PERIOD_SECONDS"

    invoke-virtual {p1, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    new-array p1, v1, [Ljava/lang/Object;

    .line 81
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p1, v3

    const-string v2, "Key recovery cool-off period: %ds"

    invoke-virtual {v0, v2, p1}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Lauu;->b:Lauu;

    if-ne v5, p1, :cond_1

    .line 82
    invoke-virtual {p0, v5, v6, v7}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->a(Lauu;J)V

    .line 83
    sget-object p1, Lanc;->a:Lccv;

    invoke-virtual {p1}, Lccv;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->f()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->r:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Laer;

    .line 85
    invoke-direct {v0, p0}, Laer;-><init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 86
    :cond_1
    invoke-virtual {p0, v5}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->a(Lauu;)V

    sget-object p1, Lauu;->c:Lauu;

    if-ne v5, p1, :cond_2

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->k:Ladd;

    iget v2, p1, Ladd;->f:I

    add-int/2addr v2, v1

    iput v2, p1, Ladd;->f:I

    iget-object v4, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->p:Lagd;

    iget-wide v8, p1, Ladd;->b:J

    .line 87
    invoke-virtual {v4, v8, v9, v2}, Lagd;->a(JI)V

    .line 88
    :cond_2
    invoke-virtual {p0, v5, v6, v7}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->a(Lauu;J)V

    sget-object p1, Lauu;->d:Lauu;

    const/4 v2, 0x2

    if-ne v5, p1, :cond_3

    new-array p1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->k:Ladd;

    iget-wide v6, v4, Ladd;->b:J

    .line 89
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, p1, v3

    const-string v4, "VAULT_LOCKED for device %d"

    invoke-virtual {v0, v4, p1}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 114
    :cond_3
    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->k:Ladd;

    .line 90
    invoke-virtual {p1}, Ladd;->a()I

    move-result p1

    if-nez p1, :cond_4

    new-array p1, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->k:Ladd;

    iget v4, v4, Ladd;->f:I

    .line 91
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v3

    iget-object v4, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->k:Ladd;

    iget-wide v6, v4, Ladd;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, p1, v1

    .line 92
    const-string v4, "Reached max bad guesses (%d) for device %d"

    invoke-virtual {v0, v4, p1}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :cond_4
    :goto_1
    sget-object p1, Lauu;->d:Lauu;

    const v4, 0x7f110036

    const v6, 0x7f12025e

    if-eq v5, p1, :cond_8

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->k:Ladd;

    .line 93
    invoke-virtual {p1}, Ladd;->a()I

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_3

    .line 99
    :cond_5
    new-array p1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->k:Ladd;

    .line 100
    invoke-virtual {v5}, Ladd;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, p1, v3

    const-string v5, "Attempts remaining for LSKF: %d"

    invoke-virtual {v0, v5, p1}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->k:Ladd;

    .line 101
    invoke-virtual {p1}, Ladd;->a()I

    move-result p1

    .line 102
    sget-object v0, Land;->M:Lccv;

    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p1, v0, :cond_7

    sget-object v0, Land;->N:Lccv;

    .line 103
    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_6

    goto :goto_2

    .line 114
    :cond_6
    return-void

    .line 104
    :cond_7
    :goto_2
    new-instance p1, Landroid/app/AlertDialog$Builder;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->k:Ladd;

    .line 105
    invoke-virtual {v5}, Ladd;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v3

    const v5, 0x7f1101bd

    invoke-virtual {p0, v5, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->k:Ladd;

    iget-object v5, v0, Ladd;->d:Ladc;

    iget v5, v5, Ladc;->f:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget v0, v0, Ladd;->f:I

    .line 107
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->k:Ladd;

    .line 108
    invoke-virtual {v0}, Ladd;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    iget-object v0, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->k:Ladd;

    iget-object v0, v0, Ladd;->a:Ljava/lang/String;

    aput-object v0, v6, v2

    .line 109
    invoke-virtual {p0, v5, v6}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget-object v0, Laet;->a:Landroid/content/DialogInterface$OnClickListener;

    .line 111
    invoke-virtual {p1, v4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 112
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 94
    :cond_8
    :goto_3
    new-instance p1, Landroid/app/AlertDialog$Builder;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1101c2

    .line 95
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->k:Ladd;

    iget-object v1, v1, Ladd;->a:Ljava/lang/String;

    aput-object v1, v0, v3

    const v1, 0x7f1101c1

    .line 96
    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Laes;

    invoke-direct {v0, p0}, Laes;-><init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;)V

    .line 97
    invoke-virtual {p1, v4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 98
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 115
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 92
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    .line 115
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid RecoveryResult code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method
