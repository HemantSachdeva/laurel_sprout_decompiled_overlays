.class public final Lft;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget v0, p0, Lft;->a:I

    iget v1, p0, Lft;->b:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final a(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iput v0, p0, Lft;->b:I

    return-void

    :cond_0
    iput v0, p0, Lft;->a:I

    return-void
.end method

.method public final a(II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iput p1, p0, Lft;->b:I

    return-void

    :cond_0
    iput p1, p0, Lft;->a:I

    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lft;->a(II)V

    return-void
.end method
