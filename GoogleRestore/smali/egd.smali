.class final Legd;
.super Ljava/io/OutputStream;
.source "PG"


# instance fields
.field public final a:Ljava/util/List;

.field final synthetic b:Legg;

.field private c:Ldzs;


# direct methods
.method public constructor <init>(Legg;)V
    .locals 0

    iput-object p1, p0, Legd;->b:Legg;

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Legd;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final write(I)V
    .locals 3

    iget-object v0, p0, Legd;->c:Ldzs;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ldzs;->a()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Legd;->c:Ldzs;

    iget-object v0, v0, Ldzs;->a:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    .line 5
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 4
    invoke-virtual {p0, v1, v2, v0}, Legd;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 2

    iget-object v0, p0, Legd;->c:Ldzs;

    if-nez v0, :cond_0

    iget-object v0, p0, Legd;->b:Legg;

    .line 6
    iget-object v0, v0, Legg;->b:Ldzt;

    .line 7
    invoke-static {p3}, Ldzt;->a(I)Ldzs;

    move-result-object v0

    iput-object v0, p0, Legd;->c:Ldzs;

    iget-object v1, p0, Legd;->a:Ljava/util/List;

    .line 8
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_0
    nop

    .line 8
    :goto_0
    if-lez p3, :cond_2

    iget-object v0, p0, Legd;->c:Ldzs;

    .line 9
    invoke-virtual {v0}, Ldzs;->a()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Legd;->c:Ldzs;

    .line 10
    invoke-virtual {v0}, Ldzs;->b()I

    move-result v0

    add-int/2addr v0, v0

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Legd;->b:Legg;

    .line 11
    iget-object v1, v1, Legg;->b:Ldzt;

    .line 12
    invoke-static {v0}, Ldzt;->a(I)Ldzs;

    move-result-object v0

    iput-object v0, p0, Legd;->c:Ldzs;

    iget-object v1, p0, Legd;->a:Ljava/util/List;

    .line 13
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Legd;->c:Ldzs;

    .line 14
    invoke-virtual {v1, p1, p2, v0}, Ldzs;->a([BII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 13
    :goto_1
    goto :goto_0

    .line 14
    :cond_2
    return-void
.end method
