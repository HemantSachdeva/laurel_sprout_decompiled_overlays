.class final Lebj;
.super Lebk;
.source "PG"


# instance fields
.field a:I

.field final synthetic b:I

.field final synthetic c:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    iput p1, p0, Lebj;->b:I

    iput-object p2, p0, Lebj;->c:[B

    invoke-direct {p0}, Lebk;-><init>()V

    iput p1, p0, Lebj;->a:I

    return-void
.end method


# virtual methods
.method public final a(Legs;I)I
    .locals 2

    iget-object v0, p0, Lebj;->c:[B

    iget v1, p0, Lebj;->a:I

    .line 1
    invoke-interface {p1, v0, v1, p2}, Legs;->a([BII)V

    iget p1, p0, Lebj;->a:I

    add-int/2addr p1, p2

    iput p1, p0, Lebj;->a:I

    const/4 p1, 0x0

    return p1
.end method
