.class public final Lbrt;
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

    iput-object p1, p0, Lbrt;->a:Leip;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lbrt;->b()Lcat;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcat;
    .locals 10

    iget-object v0, p0, Lbrt;->a:Leip;

    .line 1
    invoke-interface {v0}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsy;

    iget-object v0, v0, Lbsy;->i:Lcqu;

    new-instance v1, Lcas;

    invoke-direct {v1}, Lcas;-><init>()V

    const/4 v2, 0x1

    iput v2, v1, Lcas;->c:I

    .line 2
    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Lcas;->a:Ljava/lang/Integer;

    .line 3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v1, Lcas;->b:Ljava/lang/Boolean;

    new-instance v3, Lcrw;

    invoke-direct {v3}, Lcrw;-><init>()V

    iput-object v3, v1, Lcas;->d:Lcrw;

    iget v3, v1, Lcas;->c:I

    if-eq v2, v3, :cond_0

    const-string v2, " enablement"

    goto :goto_0

    .line 12
    :cond_0
    const-string v2, ""

    .line 3
    :goto_0
    iget-object v3, v1, Lcas;->a:Ljava/lang/Integer;

    if-nez v3, :cond_1

    .line 4
    const-string v3, " rateLimitPerSecond"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget-object v3, v1, Lcas;->d:Lcrw;

    if-nez v3, :cond_2

    .line 5
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " dynamicSampler"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    iget-object v3, v1, Lcas;->b:Ljava/lang/Boolean;

    if-nez v3, :cond_3

    .line 6
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " recordTimerDuration"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 8
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing required properties:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 12
    :cond_4
    new-instance v1, Ljava/lang/String;

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v9, Lcat;

    iget v3, v1, Lcas;->c:I

    iget-object v2, v1, Lcas;->a:Ljava/lang/Integer;

    .line 9
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v1, Lcas;->d:Lcrw;

    iget-object v1, v1, Lcas;->b:Ljava/lang/Boolean;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 11
    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcat;-><init>(IILcrw;Z[B[B)V

    .line 12
    invoke-virtual {v0, v9}, Lcqu;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v9
.end method
