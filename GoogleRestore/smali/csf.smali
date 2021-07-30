.class public final Lcsf;
.super Lcsc;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcsc;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcsi;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcsf;->c:Z

    iget-object v0, p0, Lcsf;->a:[Ljava/lang/Object;

    iget v1, p0, Lcsf;->b:I

    .line 8
    invoke-static {v0, v1}, Lcsi;->b([Ljava/lang/Object;I)Lcsi;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Iterable;)V
    .locals 3

    .line 3
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1

    iget v0, p0, Lcsc;->b:I

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-super {p0, v0}, Lcsc;->a(I)V

    .line 5
    instance-of v0, p1, Lcsd;

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcsc;->a:[Ljava/lang/Object;

    iget v1, p0, Lcsc;->b:I

    check-cast p1, Lcsd;

    .line 7
    invoke-virtual {p1, v0, v1}, Lcsd;->a([Ljava/lang/Object;I)I

    move-result p1

    iput p1, p0, Lcsc;->b:I

    return-void

    .line 5
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 6
    invoke-super {p0, v2}, Lcsc;->a(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcsc;->a(Ljava/lang/Object;)V

    return-void
.end method
