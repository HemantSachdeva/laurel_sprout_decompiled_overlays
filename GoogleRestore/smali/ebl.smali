.class public final Lebl;
.super Leaa;
.source "PG"


# instance fields
.field public a:I

.field private final b:Ljava/util/Queue;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Leaa;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lebl;->b:Ljava/util/Queue;

    return-void
.end method

.method private final a(Lebk;I)V
    .locals 2

    .line 16
    invoke-virtual {p0, p2}, Leaa;->a(I)V

    iget-object v0, p0, Lebl;->b:Ljava/util/Queue;

    .line 17
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    invoke-direct {p0}, Lebl;->c()V

    :cond_0
    :goto_0
    if-lez p2, :cond_2

    iget-object v0, p0, Lebl;->b:Ljava/util/Queue;

    .line 19
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lebl;->b:Ljava/util/Queue;

    .line 20
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Legs;

    .line 21
    invoke-interface {v0}, Legs;->a()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 22
    :try_start_0
    invoke-virtual {p1, v0, v1}, Lebk;->a(Legs;I)I

    move-result v0

    iput v0, p1, Lebk;->d:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 23
    :catch_0
    move-exception v0

    iput-object v0, p1, Lebk;->e:Ljava/io/IOException;

    .line 22
    :goto_1
    iget-object v0, p1, Lebk;->e:Ljava/io/IOException;

    if-nez v0, :cond_1

    sub-int/2addr p2, v1

    iget v0, p0, Lebl;->a:I

    sub-int/2addr v0, v1

    iput v0, p0, Lebl;->a:I

    .line 19
    invoke-direct {p0}, Lebl;->c()V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    if-gtz p2, :cond_3

    .line 23
    return-void

    .line 19
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    .line 23
    const-string p2, "Failed executing read operation"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private final c()V
    .locals 1

    iget-object v0, p0, Lebl;->b:Ljava/util/Queue;

    .line 11
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Legs;

    .line 12
    invoke-interface {v0}, Legs;->a()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lebl;->b:Ljava/util/Queue;

    .line 13
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Legs;

    invoke-interface {v0}, Legs;->close()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lebl;->a:I

    return v0
.end method

.method public final a(Legs;)V
    .locals 2

    .line 2
    instance-of v0, p1, Lebl;

    if-nez v0, :cond_0

    iget-object v0, p0, Lebl;->b:Ljava/util/Queue;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lebl;->a:I

    .line 4
    invoke-interface {p1}, Legs;->a()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lebl;->a:I

    return-void

    .line 5
    :cond_0
    check-cast p1, Lebl;

    .line 6
    :goto_0
    iget-object v0, p1, Lebl;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p1, Lebl;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Legs;

    iget-object v1, p0, Lebl;->b:Ljava/util/Queue;

    .line 8
    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget v0, p0, Lebl;->a:I

    .line 9
    iget v1, p1, Lebl;->a:I

    add-int/2addr v0, v1

    iput v0, p0, Lebl;->a:I

    const/4 v0, 0x0

    iput v0, p1, Lebl;->a:I

    .line 10
    invoke-virtual {p1}, Leaa;->close()V

    return-void
.end method

.method public final a([BII)V
    .locals 1

    new-instance v0, Lebj;

    .line 31
    invoke-direct {v0, p2, p1}, Lebj;-><init>(I[B)V

    invoke-direct {p0, v0, p3}, Lebl;->a(Lebk;I)V

    return-void
.end method

.method public final b()I
    .locals 2

    new-instance v0, Lebi;

    invoke-direct {v0}, Lebi;-><init>()V

    .line 32
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lebl;->a(Lebk;I)V

    iget v0, v0, Lebk;->d:I

    return v0
.end method

.method public final b(I)Lebl;
    .locals 3

    .line 24
    invoke-virtual {p0, p1}, Leaa;->a(I)V

    iget v0, p0, Lebl;->a:I

    sub-int/2addr v0, p1

    iput v0, p0, Lebl;->a:I

    new-instance v0, Lebl;

    .line 25
    invoke-direct {v0}, Lebl;-><init>()V

    :goto_0
    if-lez p1, :cond_1

    iget-object v1, p0, Lebl;->b:Ljava/util/Queue;

    .line 26
    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Legs;

    .line 27
    invoke-interface {v1}, Legs;->a()I

    move-result v2

    if-le v2, p1, :cond_0

    .line 28
    invoke-interface {v1, p1}, Legs;->c(I)Legs;

    move-result-object p1

    invoke-virtual {v0, p1}, Lebl;->a(Legs;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lebl;->b:Ljava/util/Queue;

    .line 29
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Legs;

    invoke-virtual {v0, v2}, Lebl;->a(Legs;)V

    .line 30
    invoke-interface {v1}, Legs;->a()I

    move-result v1

    sub-int/2addr p1, v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final bridge synthetic c(I)Legs;
    .locals 0

    invoke-virtual {p0, p1}, Lebl;->b(I)Lebl;

    move-result-object p1

    return-object p1
.end method

.method public final close()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lebl;->b:Ljava/util/Queue;

    .line 14
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lebl;->b:Ljava/util/Queue;

    .line 15
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Legs;

    invoke-interface {v0}, Legs;->close()V

    goto :goto_0

    :cond_0
    return-void
.end method
