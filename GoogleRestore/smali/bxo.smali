.class public final Lbxo;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Boolean;

.field public c:Lcqu;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Boolean;

.field public f:I

.field private g:Lcqu;

.field private h:Lcqu;

.field private i:Lcqu;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcqb;->a:Lcqb;

    iput-object p1, p0, Lbxo;->c:Lcqu;

    sget-object p1, Lcqb;->a:Lcqb;

    iput-object p1, p0, Lbxo;->g:Lcqu;

    sget-object p1, Lcqb;->a:Lcqb;

    iput-object p1, p0, Lbxo;->h:Lcqu;

    sget-object p1, Lcqb;->a:Lcqb;

    iput-object p1, p0, Lbxo;->i:Lcqu;

    return-void
.end method


# virtual methods
.method public final a()Lbxp;
    .locals 12

    iget v0, p0, Lbxo;->f:I

    if-nez v0, :cond_0

    const-string v0, " enablement"

    goto :goto_0

    .line 11
    :cond_0
    const-string v0, ""

    .line 0
    :goto_0
    iget-object v1, p0, Lbxo;->a:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 1
    const-string v1, " rateLimitPerSecond"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lbxo;->b:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " recordMetricPerProcess"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lbxo;->d:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " forceGcBeforeRecordMemory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v1, p0, Lbxo;->e:Ljava/lang/Boolean;

    if-nez v1, :cond_4

    .line 4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " captureMemoryInfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/IllegalStateException;

    .line 6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 11
    :cond_5
    new-instance v0, Ljava/lang/String;

    .line 6
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v0, Lbxp;

    iget v3, p0, Lbxo;->f:I

    iget-object v1, p0, Lbxo;->a:Ljava/lang/Integer;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v1, p0, Lbxo;->b:Ljava/lang/Boolean;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v6, p0, Lbxo;->c:Lcqu;

    iget-object v1, p0, Lbxo;->d:Ljava/lang/Boolean;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget-object v8, p0, Lbxo;->g:Lcqu;

    iget-object v9, p0, Lbxo;->h:Lcqu;

    iget-object v10, p0, Lbxo;->i:Lcqu;

    iget-object v1, p0, Lbxo;->e:Ljava/lang/Boolean;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .line 11
    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lbxp;-><init>(IIZLcqu;ZLcqu;Lcqu;Lcqu;Z)V

    return-object v0
.end method

.method public final a(Z)V
    .locals 0

    invoke-static {p1}, Lbuo;->a(Z)I

    move-result p1

    iput p1, p0, Lbxo;->f:I

    return-void
.end method
