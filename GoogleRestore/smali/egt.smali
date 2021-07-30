.class final Legt;
.super Ljava/io/InputStream;
.source "PG"

# interfaces
.implements Ldwu;


# instance fields
.field final a:Legs;


# direct methods
.method public constructor <init>(Legs;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    const-string v0, "buffer"

    invoke-static {p1, v0}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Legt;->a:Legs;

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 1

    iget-object v0, p0, Legt;->a:Legs;

    check-cast v0, Lebl;

    iget v0, v0, Lebl;->a:I

    return v0
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Legt;->a:Legs;

    .line 3
    invoke-interface {v0}, Legs;->close()V

    return-void
.end method

.method public final read()I
    .locals 2

    iget-object v0, p0, Legt;->a:Legs;

    move-object v1, v0

    check-cast v1, Lebl;

    iget v1, v1, Lebl;->a:I

    if-nez v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 4
    :cond_0
    invoke-interface {v0}, Legs;->b()I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 1

    iget-object v0, p0, Legt;->a:Legs;

    check-cast v0, Lebl;

    iget v0, v0, Lebl;->a:I

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 5
    :cond_0
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Legt;->a:Legs;

    .line 6
    invoke-interface {v0, p1, p2, p3}, Legs;->a([BII)V

    return p3
.end method
