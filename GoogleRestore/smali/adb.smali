.class public final Ladb;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lacw;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "EncryptedRestoreSetValidator"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Ladb;->a:Lacw;

    return-void
.end method

.method public static a(Latw;)Z
    .locals 1

    iget p0, p0, Latw;->i:I

    .line 38
    invoke-static {p0}, Latv;->a(I)Latv;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Latv;->a:Latv;

    :cond_0
    sget-object v0, Latv;->c:Latv;

    if-eq p0, v0, :cond_2

    sget-object v0, Latv;->d:Latv;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Latw;)Z
    .locals 6

    .line 2
    invoke-static {p0}, Ladb;->a(Latw;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    iget-object v0, p0, Latw;->h:Lasz;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lasz;->f:Lasz;

    :cond_0
    iget-object v2, v0, Lasz;->b:Lata;

    if-nez v2, :cond_1

    .line 4
    sget-object v2, Lata;->f:Lata;

    :cond_1
    iget-object v2, v2, Lata;->e:Ldib;

    .line 5
    invoke-virtual {v2}, Ldib;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object p0, Ladb;->a:Lacw;

    new-array v0, v1, [Ljava/lang/Object;

    .line 37
    const-string v2, "Invalid vault: missing vault handle!"

    invoke-virtual {p0, v2, v0}, Laqd;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    iget-object v2, v0, Lasz;->d:Ldib;

    .line 6
    invoke-virtual {v2}, Ldib;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object p0, Ladb;->a:Lacw;

    new-array v0, v1, [Ljava/lang/Object;

    .line 36
    const-string v2, "Invalid vault: missing challenge!"

    invoke-virtual {p0, v2, v0}, Laqd;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    iget-object v2, v0, Lasz;->c:Ldib;

    .line 7
    invoke-virtual {v2}, Ldib;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object p0, Ladb;->a:Lacw;

    new-array v0, v1, [Ljava/lang/Object;

    .line 35
    const-string v2, "Invalid vault: missing metadata!"

    invoke-virtual {p0, v2, v0}, Laqd;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    :try_start_0
    iget-object v0, v0, Lasz;->c:Ldib;

    .line 8
    invoke-static {}, Ldjr;->b()Ldjr;

    move-result-object v2

    .line 9
    sget-object v3, Lasr;->h:Lasr;
    :try_end_0
    .catch Ldkn; {:try_start_0 .. :try_end_0} :catch_4

    .line 10
    :try_start_1
    invoke-virtual {v0}, Ldib;->d()Ldie;

    move-result-object v0

    const/4 v4, 0x4

    .line 11
    invoke-virtual {v3, v4}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldkd;
    :try_end_1
    .catch Ldkn; {:try_start_1 .. :try_end_1} :catch_3

    .line 12
    :try_start_2
    sget-object v4, Ldls;->a:Ldls;

    invoke-virtual {v4, v3}, Ldls;->a(Ljava/lang/Object;)Ldlw;

    move-result-object v4

    .line 13
    invoke-static {v0}, Ldif;->a(Ldie;)Ldif;

    move-result-object v5

    invoke-interface {v4, v3, v5, v2}, Ldlw;->a(Ljava/lang/Object;Ldlv;Ldjr;)V

    .line 14
    invoke-interface {v4, v3}, Ldlw;->d(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 21
    :try_start_3
    invoke-virtual {v0, v1}, Ldie;->a(I)V
    :try_end_3
    .catch Ldkn; {:try_start_3 .. :try_end_3} :catch_0

    .line 24
    :try_start_4
    invoke-static {v3}, Ldkd;->a(Ldkd;)V

    .line 25
    check-cast v3, Lasr;
    :try_end_4
    .catch Ldkn; {:try_start_4 .. :try_end_4} :catch_4

    iget v0, v3, Lasr;->d:I

    .line 27
    invoke-static {v0}, Laso;->a(I)Laso;

    move-result-object v0

    if-nez v0, :cond_5

    sget-object v0, Laso;->a:Laso;

    :cond_5
    sget-object v2, Laso;->b:Laso;

    const/4 v4, 0x1

    if-eq v0, v2, :cond_6

    sget-object v2, Laso;->c:Laso;

    if-eq v0, v2, :cond_6

    sget-object p0, Ladb;->a:Lacw;

    new-array v2, v4, [Ljava/lang/Object;

    iget v0, v0, Laso;->d:I

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Invalid vault: unknown hash type %d"

    invoke-virtual {p0, v0, v2}, Laqd;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, v3, Lasr;->e:Ldib;

    .line 28
    invoke-virtual {v0}, Ldib;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p0, Ladb;->a:Lacw;

    new-array v0, v1, [Ljava/lang/Object;

    .line 33
    const-string v2, "Invalid vault: missing hash salt!"

    invoke-virtual {p0, v2, v0}, Laqd;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    iget v0, v3, Lasr;->a:I

    .line 29
    invoke-static {v0}, Lasq;->a(I)Lasq;

    move-result-object v0

    if-nez v0, :cond_8

    sget-object v0, Lasq;->a:Lasq;

    :cond_8
    sget-object v2, Lasq;->d:Lasq;

    if-ne v0, v2, :cond_9

    iget v0, v3, Lasr;->c:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_f

    iget v0, v3, Lasr;->b:I

    if-ne v0, v2, :cond_f

    :cond_9
    iget-object p0, p0, Latw;->h:Lasz;

    if-nez p0, :cond_a

    sget-object p0, Lasz;->f:Lasz;

    :cond_a
    iget v0, p0, Lasz;->a:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_b

    iget p0, p0, Lasz;->e:I

    .line 30
    sget-object v0, Land;->L:Lccv;

    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p0, v0, :cond_c

    sget-object v2, Ladb;->a:Lacw;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 31
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    const-string p0, "Device has exceeded max bad guesses (%d >= %d)!"

    invoke-virtual {v2, p0, v3}, Laqd;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_b
    sget-object p0, Ladb;->a:Lacw;

    new-array v0, v1, [Ljava/lang/Object;

    .line 32
    const-string v1, "No bad guesses counter attached."

    invoke-virtual {p0, v1, v0}, Laqd;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    :cond_c
    return v4

    .line 16
    :catch_0
    move-exception p0

    .line 22
    :try_start_5
    throw p0

    .line 19
    :catch_1
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ldkn;

    if-eqz v0, :cond_d

    .line 16
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ldkn;

    throw p0

    .line 17
    :cond_d
    throw p0

    .line 23
    :catch_2
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ldkn;

    if-eqz v0, :cond_e

    .line 19
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ldkn;

    throw p0

    .line 9
    :cond_e
    new-instance v0, Ldkn;

    .line 20
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ldkn;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ldkn; {:try_start_5 .. :try_end_5} :catch_3

    .line 26
    :catch_3
    move-exception p0

    .line 23
    :try_start_6
    throw p0
    :try_end_6
    .catch Ldkn; {:try_start_6 .. :try_end_6} :catch_4

    .line 32
    :catch_4
    move-exception p0

    sget-object p0, Ladb;->a:Lacw;

    new-array v0, v1, [Ljava/lang/Object;

    .line 26
    const-string v2, "Invalid vault: invalid metadata!"

    invoke-virtual {p0, v2, v0}, Laqd;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    :cond_f
    :goto_0
    return v1
.end method
