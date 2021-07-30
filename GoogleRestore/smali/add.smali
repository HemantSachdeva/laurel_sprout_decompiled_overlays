.class public final Ladd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:Ladc;

.field public final e:I

.field public f:I

.field public g:Laso;


# direct methods
.method private constructor <init>(Ljava/lang/String;JLjava/lang/String;ILadc;Laso;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    sget-object v0, Laso;->a:Laso;

    iput-object v0, p0, Ladd;->g:Laso;

    .line 2
    invoke-static {p1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Ladd;->a:Ljava/lang/String;

    iput-wide p2, p0, Ladd;->b:J

    iput-object p4, p0, Ladd;->c:Ljava/lang/String;

    iput p5, p0, Ladd;->e:I

    iput-object p6, p0, Ladd;->d:Ladc;

    iput-object p7, p0, Ladd;->g:Laso;

    iput p8, p0, Ladd;->f:I

    return-void
.end method

.method public static a(Latw;)Ladd;
    .locals 13

    .line 3
    invoke-static {p0}, Ladb;->b(Latw;)Z

    move-result v0

    const-string v1, "Device not eligible for key recovery."

    invoke-static {v0, v1}, Lcrj;->a(ZLjava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Latw;->h:Lasz;

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lasz;->f:Lasz;

    :cond_0
    iget-object v0, v0, Lasz;->c:Ldib;

    .line 5
    invoke-static {}, Ldjr;->b()Ldjr;

    move-result-object v1

    .line 6
    sget-object v2, Lasr;->h:Lasr;
    :try_end_0
    .catch Ldkn; {:try_start_0 .. :try_end_0} :catch_4

    .line 7
    :try_start_1
    invoke-virtual {v0}, Ldib;->d()Ldie;

    move-result-object v0

    .line 8
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldkd;
    :try_end_1
    .catch Ldkn; {:try_start_1 .. :try_end_1} :catch_3

    .line 9
    :try_start_2
    sget-object v4, Ldls;->a:Ldls;

    invoke-virtual {v4, v2}, Ldls;->a(Ljava/lang/Object;)Ldlw;

    move-result-object v4

    .line 10
    invoke-static {v0}, Ldif;->a(Ldie;)Ldif;

    move-result-object v5

    invoke-interface {v4, v2, v5, v1}, Ldlw;->a(Ljava/lang/Object;Ldlv;Ldjr;)V

    .line 11
    invoke-interface {v4, v2}, Ldlw;->d(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 18
    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {v0, v1}, Ldie;->a(I)V
    :try_end_3
    .catch Ldkn; {:try_start_3 .. :try_end_3} :catch_0

    .line 21
    :try_start_4
    invoke-static {v2}, Ldkd;->a(Ldkd;)V

    .line 22
    check-cast v2, Lasr;

    new-instance v0, Ladd;

    iget-object v5, p0, Latw;->d:Ljava/lang/String;

    iget-wide v6, p0, Latw;->b:J

    iget v4, p0, Latw;->a:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_1

    iget-object v4, p0, Latw;->j:Ljava/lang/String;

    move-object v8, v4

    goto :goto_0

    .line 27
    :cond_1
    const/4 v4, 0x0

    move-object v8, v4

    .line 22
    :goto_0
    iget-object v4, p0, Latw;->h:Lasz;

    if-nez v4, :cond_2

    sget-object v4, Lasz;->f:Lasz;

    :cond_2
    iget-object v4, v4, Lasz;->b:Lata;

    if-nez v4, :cond_3

    .line 23
    sget-object v4, Lata;->f:Lata;

    :cond_3
    iget v4, v4, Lata;->a:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_6

    iget-object v3, p0, Latw;->h:Lasz;

    if-nez v3, :cond_4

    sget-object v3, Lasz;->f:Lasz;

    :cond_4
    iget-object v3, v3, Lasz;->b:Lata;

    if-nez v3, :cond_5

    sget-object v3, Lata;->f:Lata;

    :cond_5
    iget v3, v3, Lata;->d:I

    move v9, v3

    goto :goto_1

    .line 27
    :cond_6
    const/16 v3, 0xa

    const/16 v9, 0xa

    .line 23
    :goto_1
    iget v3, v2, Lasr;->a:I

    .line 24
    invoke-static {v3}, Lasq;->a(I)Lasq;

    move-result-object v3

    if-nez v3, :cond_7

    sget-object v3, Lasq;->a:Lasq;

    :cond_7
    iget v3, v3, Lasq;->e:I

    .line 25
    invoke-static {v3}, Ladc;->a(I)Ladc;

    move-result-object v10

    iget v2, v2, Lasr;->d:I

    .line 26
    invoke-static {v2}, Laso;->a(I)Laso;

    move-result-object v2

    if-nez v2, :cond_8

    sget-object v2, Laso;->a:Laso;

    :cond_8
    move-object v11, v2

    iget-object v2, p0, Latw;->h:Lasz;

    if-nez v2, :cond_9

    sget-object v2, Lasz;->f:Lasz;

    :cond_9
    iget v2, v2, Lasz;->a:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_b

    iget-object p0, p0, Latw;->h:Lasz;

    if-nez p0, :cond_a

    sget-object p0, Lasz;->f:Lasz;

    :cond_a
    iget v1, p0, Lasz;->e:I

    move v12, v1

    goto :goto_2

    .line 27
    :cond_b
    const/4 v12, 0x0

    :goto_2
    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Ladd;-><init>(Ljava/lang/String;JLjava/lang/String;ILadc;Laso;I)V
    :try_end_4
    .catch Ldkn; {:try_start_4 .. :try_end_4} :catch_4

    return-object v0

    .line 13
    :catch_0
    move-exception p0

    .line 19
    :try_start_5
    throw p0

    .line 16
    :catch_1
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ldkn;

    if-eqz v0, :cond_c

    .line 13
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ldkn;

    throw p0

    .line 14
    :cond_c
    throw p0

    .line 20
    :catch_2
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ldkn;

    if-eqz v0, :cond_d

    .line 16
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ldkn;

    throw p0

    .line 6
    :cond_d
    new-instance v0, Ldkn;

    .line 17
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ldkn;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ldkn; {:try_start_5 .. :try_end_5} :catch_3

    .line 28
    :catch_3
    move-exception p0

    .line 20
    :try_start_6
    throw p0
    :try_end_6
    .catch Ldkn; {:try_start_6 .. :try_end_6} :catch_4

    .line 27
    :catch_4
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 28
    const-string v1, "Invalid vault.vault_metadata"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget v0, p0, Ladd;->e:I

    iget v1, p0, Ladd;->f:I

    sub-int/2addr v0, v1

    .line 29
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method
