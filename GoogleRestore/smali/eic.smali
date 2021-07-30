.class public final Leic;
.super Ljava/io/InputStream;
.source "PG"

# interfaces
.implements Ldwu;


# instance fields
.field public a:Ldlj;

.field public final b:Ldlq;

.field public c:Ljava/io/ByteArrayInputStream;


# direct methods
.method public constructor <init>(Ldlj;Ldlq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Leic;->a:Ldlj;

    iput-object p2, p0, Leic;->b:Ldlq;

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 1

    iget-object v0, p0, Leic;->a:Ldlj;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ldlj;->h()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Leic;->c:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final read()I
    .locals 2

    iget-object v0, p0, Leic;->a:Ldlj;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 4
    invoke-interface {v0}, Ldlj;->b()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Leic;->c:Ljava/io/ByteArrayInputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Leic;->a:Ldlj;

    :cond_0
    iget-object v0, p0, Leic;->c:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public final read([BII)I
    .locals 4

    iget-object v0, p0, Leic;->a:Ldlj;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Ldlj;->h()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iput-object v2, p0, Leic;->a:Ldlj;

    iput-object v2, p0, Leic;->c:Ljava/io/ByteArrayInputStream;

    return v1

    :cond_0
    if-lt p3, v0, :cond_1

    .line 7
    invoke-static {p1, p2, v0}, Ldij;->c([BII)Ldij;

    move-result-object p1

    iget-object p2, p0, Leic;->a:Ldlj;

    .line 8
    invoke-interface {p2, p1}, Ldlj;->a(Ldij;)V

    .line 9
    invoke-virtual {p1}, Ldij;->c()V

    iput-object v2, p0, Leic;->a:Ldlj;

    iput-object v2, p0, Leic;->c:Ljava/io/ByteArrayInputStream;

    return v0

    :cond_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Leic;->a:Ldlj;

    .line 10
    invoke-interface {v3}, Ldlj;->b()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Leic;->c:Ljava/io/ByteArrayInputStream;

    iput-object v2, p0, Leic;->a:Ldlj;

    :cond_2
    iget-object v0, p0, Leic;->c:Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result p1

    return p1

    :cond_3
    return v1
.end method
