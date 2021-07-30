.class public final Lbrv;
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

    iput-object p1, p0, Lbrv;->a:Leip;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lbrv;->b()Lcaw;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcaw;
    .locals 7

    iget-object v0, p0, Lbrv;->a:Leip;

    .line 1
    invoke-interface {v0}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsy;

    iget-object v0, v0, Lbsy;->j:Lcqu;

    new-instance v1, Lcav;

    invoke-direct {v1}, Lcav;-><init>()V

    const/4 v2, 0x1

    iput v2, v1, Lcav;->d:I

    .line 2
    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v1, Lcav;->a:Ljava/lang/Float;

    .line 3
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcav;->b:Ljava/lang/Integer;

    .line 4
    const/16 v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcav;->c:Ljava/lang/Integer;

    iget v3, v1, Lcav;->d:I

    if-eq v2, v3, :cond_0

    const-string v3, " enablement"

    goto :goto_0

    .line 15
    :cond_0
    const-string v3, ""

    .line 4
    :goto_0
    iget-object v4, v1, Lcav;->a:Ljava/lang/Float;

    if-nez v4, :cond_1

    .line 5
    const-string v4, " samplingProbability"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    iget-object v4, v1, Lcav;->b:Ljava/lang/Integer;

    if-nez v4, :cond_2

    .line 6
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " minSpanDurationMs"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    iget-object v4, v1, Lcav;->c:Ljava/lang/Integer;

    if-nez v4, :cond_3

    .line 7
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " maxTracingBufferSize"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing required properties:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 15
    :cond_4
    new-instance v1, Ljava/lang/String;

    .line 9
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v3, Lcaw;

    iget v4, v1, Lcav;->d:I

    iget-object v5, v1, Lcav;->a:Ljava/lang/Float;

    .line 10
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v6, v1, Lcav;->b:Ljava/lang/Integer;

    .line 11
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v1, v1, Lcav;->c:Ljava/lang/Integer;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 13
    invoke-direct {v3, v4, v5, v6, v1}, Lcaw;-><init>(IFII)V

    iget v1, v3, Lcaw;->a:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_6

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_6

    goto :goto_2

    .line 15
    :cond_6
    const/4 v2, 0x0

    .line 13
    :goto_2
    nop

    .line 14
    const-string v1, "Probability shall be between 0 and 1."

    invoke-static {v2, v1}, Lcrj;->b(ZLjava/lang/Object;)V

    .line 15
    invoke-virtual {v0, v3}, Lcqu;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3
.end method
