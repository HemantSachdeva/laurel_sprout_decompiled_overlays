.class public final Lbri;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldst;


# instance fields
.field private final a:Leip;


# direct methods
.method public constructor <init>(Leip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbri;->a:Leip;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lbri;->b()Lbti;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lbti;
    .locals 15

    iget-object v0, p0, Lbri;->a:Leip;

    .line 1
    invoke-interface {v0}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsy;

    iget-object v0, v0, Lbsy;->l:Lcqu;

    new-instance v1, Lbth;

    .line 2
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lbth;-><init>([B)V

    new-instance v2, Lbvu;

    invoke-direct {v2}, Lbvu;-><init>()V

    const/4 v3, 0x1

    iput v3, v2, Lbvu;->f:I

    .line 3
    const/high16 v4, 0x200000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lbvu;->a:Ljava/lang/Integer;

    .line 4
    const/16 v4, 0x7530

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lbvu;->b:Ljava/lang/Integer;

    .line 5
    const/16 v4, 0x1388

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lbvu;->c:Ljava/lang/Integer;

    .line 6
    const/16 v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v2, Lbvu;->d:Ljava/lang/Integer;

    .line 7
    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v2, Lbvu;->e:Ljava/lang/Double;

    iget v4, v2, Lbvu;->f:I

    const-string v5, ""

    if-eq v3, v4, :cond_0

    const-string v3, " enablement"

    goto :goto_0

    .line 24
    :cond_0
    move-object v3, v5

    .line 7
    :goto_0
    iget-object v4, v2, Lbvu;->a:Ljava/lang/Integer;

    if-nez v4, :cond_1

    .line 8
    const-string v4, " maxBufferSizeBytes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    iget-object v4, v2, Lbvu;->b:Ljava/lang/Integer;

    if-nez v4, :cond_2

    .line 9
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " sampleDurationMs"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    iget-object v4, v2, Lbvu;->c:Ljava/lang/Integer;

    if-nez v4, :cond_3

    .line 10
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " sampleDurationSkewMs"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_3
    iget-object v4, v2, Lbvu;->d:Ljava/lang/Integer;

    if-nez v4, :cond_4

    .line 11
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " sampleFrequencyMicro"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_4
    iget-object v4, v2, Lbvu;->e:Ljava/lang/Double;

    if-nez v4, :cond_5

    .line 12
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " samplesPerEpoch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 13
    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const-string v6, "Missing required properties:"

    if-nez v4, :cond_7

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 24
    :cond_6
    new-instance v1, Ljava/lang/String;

    .line 14
    invoke-direct {v1, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v3, Lbvv;

    iget v8, v2, Lbvu;->f:I

    iget-object v4, v2, Lbvu;->a:Ljava/lang/Integer;

    .line 15
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v4, v2, Lbvu;->b:Ljava/lang/Integer;

    .line 16
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v4, v2, Lbvu;->c:Ljava/lang/Integer;

    .line 17
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v4, v2, Lbvu;->d:Ljava/lang/Integer;

    .line 18
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v2, v2, Lbvu;->e:Ljava/lang/Double;

    .line 19
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    .line 20
    move-object v7, v3

    invoke-direct/range {v7 .. v14}, Lbvv;-><init>(IIIIID)V

    iput-object v3, v1, Lbth;->a:Lbvv;

    iget-object v2, v1, Lbth;->a:Lbvv;

    if-nez v2, :cond_8

    const-string v5, " profilingConfigurations"

    goto :goto_2

    .line 24
    :cond_8
    nop

    .line 21
    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 22
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 14
    :cond_9
    new-instance v1, Ljava/lang/String;

    .line 22
    invoke-direct {v1, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v2, Lbti;

    iget-object v3, v1, Lbth;->a:Lbvv;

    iget-object v4, v1, Lbth;->b:Lcqu;

    iget-object v5, v1, Lbth;->c:Lcqu;

    iget-object v1, v1, Lbth;->d:Lcqu;

    .line 23
    invoke-direct {v2, v3, v4, v5, v1}, Lbti;-><init>(Lbvv;Lcqu;Lcqu;Lcqu;)V

    .line 24
    invoke-virtual {v0, v2}, Lcqu;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method
