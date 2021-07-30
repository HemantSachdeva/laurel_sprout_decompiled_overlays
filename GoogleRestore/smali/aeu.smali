.class public final synthetic Laeu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laeu;->a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Laeu;->a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;

    iget-object v1, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->n:Lajq;

    iget-object v0, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->k:Ladd;

    iget-wide v2, v0, Ladd;->b:J

    sget-object v0, Latq;->g:Latq;

    invoke-virtual {v0}, Ldkd;->g()Ldjy;

    move-result-object v0

    sget-object v4, Latl;->h:Latl;

    invoke-virtual {v4}, Ldkd;->g()Ldjy;

    move-result-object v4

    iget-boolean v5, v4, Ldjy;->b:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ldjy;->b()V

    iput-boolean v6, v4, Ldjy;->b:Z

    :cond_0
    iget-object v5, v4, Ldjy;->a:Ldkd;

    check-cast v5, Latl;

    invoke-static {v5}, Latl;->a(Latl;)V

    iget-boolean v5, v0, Ldjy;->b:Z

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v6, v0, Ldjy;->b:Z

    :cond_1
    iget-object v5, v0, Ldjy;->a:Ldkd;

    check-cast v5, Latq;

    invoke-virtual {v4}, Ldjy;->f()Ldkd;

    move-result-object v4

    check-cast v4, Latl;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v5, Latq;->f:Latl;

    iget v4, v5, Latq;->a:I

    or-int/lit16 v4, v4, 0x1000

    iput v4, v5, Latq;->a:I

    iget-object v4, v1, Lajq;->b:Landroid/app/Activity;

    iget-object v5, v1, Lajq;->c:Landroid/accounts/Account;

    invoke-static {v4, v5}, Laok;->a(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, v0, Ldjy;->b:Z

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v6, v0, Ldjy;->b:Z

    :cond_2
    iget-object v5, v0, Ldjy;->a:Ldkd;

    check-cast v5, Latq;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, v5, Latq;->a:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v5, Latq;->a:I

    iput-object v4, v5, Latq;->d:Ljava/lang/String;

    invoke-static {}, Ldti;->b()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v1, Lajq;->b:Landroid/app/Activity;

    invoke-static {v4}, Laom;->a(Landroid/content/Context;)J

    move-result-wide v4

    iget-boolean v7, v0, Ldjy;->b:Z

    if-eqz v7, :cond_3

    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v6, v0, Ldjy;->b:Z

    :cond_3
    iget-object v7, v0, Ldjy;->a:Ldkd;

    check-cast v7, Latq;

    iget v8, v7, Latq;->a:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v7, Latq;->a:I

    iput-wide v4, v7, Latq;->c:J

    or-int/lit8 v4, v8, 0x1

    iput v4, v7, Latq;->a:I

    iput-wide v2, v7, Latq;->b:J

    goto :goto_0

    :cond_4
    iget-object v4, v1, Lajq;->b:Landroid/app/Activity;

    invoke-static {v4}, Laom;->a(Landroid/content/Context;)J

    move-result-wide v4

    iget-boolean v7, v0, Ldjy;->b:Z

    if-eqz v7, :cond_5

    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v6, v0, Ldjy;->b:Z

    :cond_5
    iget-object v7, v0, Ldjy;->a:Ldkd;

    check-cast v7, Latq;

    iget v8, v7, Latq;->a:I

    or-int/lit8 v8, v8, 0x1

    iput v8, v7, Latq;->a:I

    iput-wide v4, v7, Latq;->b:J

    :goto_0
    iget-object v4, v1, Lajq;->e:Lapi;

    iget-object v1, v1, Lajq;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Ldjy;->f()Ldkd;

    move-result-object v0

    check-cast v0, Latq;

    invoke-virtual {v4, v1, v0}, Lapi;->a(Landroid/content/Context;Latq;)Laua;

    move-result-object v0

    invoke-static {v0}, Lbja;->a(Laua;)V

    iget-object v0, v0, Laua;->d:Ldkk;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :cond_6
    if-ge v6, v1, :cond_9

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Latw;

    add-int/lit8 v6, v6, 0x1

    iget-wide v7, v4, Latw;->b:J

    cmp-long v5, v7, v2

    if-nez v5, :cond_6

    iget v0, v4, Latw;->a:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    iget-object v0, v4, Latw;->h:Lasz;

    if-nez v0, :cond_7

    sget-object v0, Lasz;->f:Lasz;

    :cond_7
    return-object v0

    :cond_8
    new-instance v0, Lapd;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0x36

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Missing vault for device with id: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lapd;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Lapd;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0x32

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Couldn\'t find device with id: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lapd;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
