.class public final Laez;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczm;


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;[B)V
    .locals 0

    iput-object p1, p0, Laez;->b:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;

    iput-object p2, p0, Laez;->a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lasz;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, v1, Laez;->b:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;

    iget-object v4, v1, Laez;->a:[B

    iget-object v5, v0, Lasz;->c:Ldib;

    .line 5
    invoke-static {}, Ldjr;->b()Ldjr;

    move-result-object v6

    .line 6
    sget-object v7, Lasr;->h:Lasr;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ldkn; {:try_start_0 .. :try_end_0} :catch_4

    .line 7
    :try_start_1
    invoke-virtual {v5}, Ldib;->d()Ldie;

    move-result-object v5

    const/4 v8, 0x4

    .line 8
    invoke-virtual {v7, v8}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldkd;
    :try_end_1
    .catch Ldkn; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_5

    .line 9
    :try_start_2
    sget-object v8, Ldls;->a:Ldls;

    invoke-virtual {v8, v7}, Ldls;->a(Ljava/lang/Object;)Ldlw;

    move-result-object v8

    .line 10
    invoke-static {v5}, Ldif;->a(Ldie;)Ldif;

    move-result-object v9

    invoke-interface {v8, v7, v9, v6}, Ldlw;->a(Ljava/lang/Object;Ldlv;Ldjr;)V

    .line 11
    invoke-interface {v8, v7}, Ldlw;->d(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ldkn; {:try_start_2 .. :try_end_2} :catch_4

    .line 18
    :try_start_3
    invoke-virtual {v5, v2}, Ldie;->a(I)V
    :try_end_3
    .catch Ldkn; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_5

    .line 21
    :try_start_4
    invoke-static {v7}, Ldkd;->a(Ldkd;)V

    .line 22
    check-cast v7, Lasr;

    iget-object v5, v3, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->k:Ladd;

    iget v6, v7, Lasr;->d:I

    .line 23
    invoke-static {v6}, Laso;->a(I)Laso;

    move-result-object v6

    if-nez v6, :cond_0

    sget-object v6, Laso;->a:Laso;

    :cond_0
    iput-object v6, v5, Ladd;->g:Laso;

    iget-object v5, v3, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->n:Lajq;

    iget-object v3, v3, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->k:Ladd;

    iget v15, v3, Ladd;->e:I

    new-instance v3, Lafb;

    iget v6, v7, Lasr;->d:I

    invoke-static {v6}, Laso;->a(I)Laso;

    move-result-object v6

    if-nez v6, :cond_1

    sget-object v6, Laso;->a:Laso;

    :cond_1
    iget v6, v6, Laso;->d:I

    iget-object v8, v7, Lasr;->e:Ldib;

    .line 24
    invoke-virtual {v8}, Ldib;->f()[B

    move-result-object v8

    iget v9, v7, Lasr;->f:I

    .line 25
    invoke-direct {v3, v6, v8, v9}, Lafb;-><init>(I[BI)V

    .line 26
    invoke-static {v3, v4}, Lafa;->a(Lafb;[B)[B

    move-result-object v20

    .line 27
    sget-object v3, Land;->Q:Lccv;

    invoke-virtual {v3}, Lccv;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v5, Lajq;->a:Lacw;

    const-string v4, "Request key recovery with params."

    new-array v6, v2, [Ljava/lang/Object;

    .line 28
    invoke-virtual {v3, v4, v6}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v5, Lajq;->d:Larf;

    iget-object v3, v3, Larf;->b:Lara;

    iget-object v9, v5, Lajq;->c:Landroid/accounts/Account;

    iget-object v4, v0, Lasz;->d:Ldib;

    .line 29
    invoke-virtual {v4}, Ldib;->f()[B

    move-result-object v10

    iget-object v4, v7, Lasr;->g:Ldib;

    .line 30
    invoke-virtual {v4}, Ldib;->f()[B

    move-result-object v12

    iget-object v4, v0, Lasz;->b:Lata;

    if-nez v4, :cond_2

    .line 31
    sget-object v4, Lata;->f:Lata;

    :cond_2
    iget v4, v4, Lata;->a:I

    and-int/lit8 v4, v4, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    iget-object v4, v0, Lasz;->b:Lata;

    if-nez v4, :cond_3

    sget-object v4, Lata;->f:Lata;

    :cond_3
    iget-object v4, v4, Lata;->b:Ldib;

    .line 32
    invoke-virtual {v4}, Ldib;->f()[B

    move-result-object v4

    move-object v13, v4

    goto :goto_0

    .line 39
    :cond_4
    move-object v13, v6

    .line 32
    :goto_0
    iget-object v4, v0, Lasz;->b:Lata;

    if-nez v4, :cond_5

    sget-object v4, Lata;->f:Lata;

    :cond_5
    iget v4, v4, Lata;->a:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_7

    iget-object v4, v0, Lasz;->b:Lata;

    if-nez v4, :cond_6

    sget-object v4, Lata;->f:Lata;

    :cond_6
    iget-object v4, v4, Lata;->c:Ldib;

    .line 33
    invoke-virtual {v4}, Ldib;->f()[B

    move-result-object v4

    move-object v14, v4

    goto :goto_1

    .line 39
    :cond_7
    move-object v14, v6

    .line 33
    :goto_1
    iget-object v0, v0, Lasz;->b:Lata;

    if-nez v0, :cond_8

    sget-object v0, Lata;->f:Lata;

    :cond_8
    iget-object v0, v0, Lata;->e:Ldib;

    .line 34
    invoke-virtual {v0}, Ldib;->f()[B

    move-result-object v16

    iget-object v0, v5, Lajq;->b:Landroid/app/Activity;

    .line 35
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v17

    .line 36
    invoke-static {}, Larw;->a()Laqw;

    move-result-object v0

    sget-object v4, Lara;->a:Laqd;

    const-string v5, "Calling the new GmsCore API startKeyRecoveryWithParams"

    new-array v6, v2, [Ljava/lang/Object;

    .line 37
    invoke-virtual {v4, v5, v6}, Laqd;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v3, Lara;->b:Larf;

    new-instance v4, Laqy;

    .line 38
    move-object v8, v4

    move-object/from16 v11, v20

    move-object/from16 v18, v0

    invoke-direct/range {v8 .. v18}, Laqy;-><init>(Landroid/accounts/Account;[B[B[B[B[BI[BLandroid/content/ComponentName;Laqw;)V

    invoke-virtual {v3, v0, v4}, Larf;->a(Laqw;Lard;)V

    .line 39
    invoke-virtual {v0}, Laqw;->a()V

    return-void

    :cond_9
    iget-object v3, v5, Lajq;->a:Lacw;

    const-string v4, "Request key recovery."

    new-array v6, v2, [Ljava/lang/Object;

    .line 40
    invoke-virtual {v3, v4, v6}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v5, Lajq;->d:Larf;

    iget-object v3, v3, Larf;->b:Lara;

    iget-object v4, v5, Lajq;->c:Landroid/accounts/Account;

    iget-object v6, v0, Lasz;->b:Lata;

    if-nez v6, :cond_a

    .line 41
    sget-object v6, Lata;->f:Lata;

    :cond_a
    iget-object v6, v6, Lata;->e:Ldib;

    .line 42
    invoke-virtual {v6}, Ldib;->f()[B

    move-result-object v18

    iget-object v0, v0, Lasz;->d:Ldib;

    .line 43
    invoke-virtual {v0}, Ldib;->f()[B

    move-result-object v19

    iget-object v0, v5, Lajq;->b:Landroid/app/Activity;

    .line 44
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v21

    .line 45
    invoke-static {}, Larw;->a()Laqw;

    move-result-object v0

    iget-object v3, v3, Lara;->b:Larf;

    new-instance v5, Laqx;

    .line 46
    move-object/from16 v16, v5

    move-object/from16 v17, v4

    move-object/from16 v22, v0

    invoke-direct/range {v16 .. v22}, Laqx;-><init>(Landroid/accounts/Account;[B[B[BLandroid/content/ComponentName;Laqw;)V

    invoke-virtual {v3, v0, v5}, Larf;->a(Laqw;Lard;)V

    .line 47
    invoke-virtual {v0}, Laqw;->a()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ldkn; {:try_start_4 .. :try_end_4} :catch_4

    return-void

    .line 13
    :catch_0
    move-exception v0

    move-object v3, v0

    .line 19
    :try_start_5
    throw v3

    .line 16
    :catch_1
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ldkn;

    if-eqz v3, :cond_b

    .line 13
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ldkn;

    throw v0

    .line 14
    :cond_b
    throw v0

    .line 20
    :catch_2
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ldkn;

    if-eqz v3, :cond_c

    .line 16
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ldkn;

    throw v0

    .line 6
    :cond_c
    new-instance v3, Ldkn;

    .line 17
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ldkn;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5
    .catch Ldkn; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 49
    :catch_3
    move-exception v0

    .line 20
    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ldkn; {:try_start_6 .. :try_end_6} :catch_4

    .line 47
    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    .line 48
    :goto_2
    sget-object v3, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->j:Laqd;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "Error starting key recovery"

    invoke-virtual {v3, v4, v0, v2}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v0, v1, Laez;->b:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;

    new-instance v2, Laex;

    .line 49
    invoke-direct {v2, v1}, Laex;-><init>(Laez;)V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lasz;

    invoke-virtual {p0, p1}, Laez;->a(Lasz;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->j:Laqd;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Error fetching vault challenge."

    invoke-virtual {v0, v2, p1, v1}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object p1, p0, Laez;->b:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;

    .line 2
    sget-object v0, Lauu;->j:Lauu;

    .line 3
    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->a(Lauu;J)V

    iget-object p1, p0, Laez;->b:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;

    new-instance v0, Laey;

    .line 4
    invoke-direct {v0, p0}, Laey;-><init>(Laez;)V

    invoke-virtual {p1, v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/KeyRecoveryLockScreenEntryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
