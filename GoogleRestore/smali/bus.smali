.class public final Lbus;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:Lbur;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lbut;
    .locals 4

    iget v0, p0, Lbus;->a:I

    if-nez v0, :cond_0

    const-string v0, " enablement"

    goto :goto_0

    .line 4
    :cond_0
    const-string v0, ""

    .line 0
    :goto_0
    iget-object v1, p0, Lbus;->b:Lbur;

    if-nez v1, :cond_1

    .line 1
    const-string v1, " metricExtensionProvider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/IllegalStateException;

    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 4
    :cond_2
    new-instance v0, Ljava/lang/String;

    .line 3
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Lbut;

    iget v1, p0, Lbus;->a:I

    iget-object v2, p0, Lbus;->b:Lbur;

    .line 4
    invoke-direct {v0, v1, v2}, Lbut;-><init>(ILbur;)V

    return-object v0
.end method
