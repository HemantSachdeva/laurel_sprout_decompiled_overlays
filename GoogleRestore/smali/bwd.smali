.class public final Lbwd;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/lang/Float;

.field public b:Lcbn;

.field public c:Ljava/lang/Boolean;

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lbwe;
    .locals 5

    iget v0, p0, Lbwd;->d:I

    if-nez v0, :cond_0

    const-string v0, " enablement"

    goto :goto_0

    .line 8
    :cond_0
    const-string v0, ""

    .line 0
    :goto_0
    iget-object v1, p0, Lbwd;->a:Ljava/lang/Float;

    if-nez v1, :cond_1

    .line 1
    const-string v1, " startupSamplePercentage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lbwd;->b:Lcbn;

    if-nez v1, :cond_2

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " stackTraceTransmitter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lbwd;->c:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " deferredInitLogging"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Ljava/lang/IllegalStateException;

    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 8
    :cond_4
    new-instance v0, Ljava/lang/String;

    .line 5
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v0, Lbwe;

    iget v1, p0, Lbwd;->d:I

    iget-object v2, p0, Lbwd;->a:Ljava/lang/Float;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lbwd;->b:Lcbn;

    iget-object v4, p0, Lbwd;->c:Ljava/lang/Boolean;

    .line 7
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 8
    invoke-direct {v0, v1, v2, v3, v4}, Lbwe;-><init>(IFLcbn;Z)V

    return-object v0
.end method
