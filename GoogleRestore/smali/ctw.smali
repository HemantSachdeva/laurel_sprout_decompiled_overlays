.class public final Lctw;
.super Lctv;
.source "PG"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lj$/util/ListIterator;


# instance fields
.field private final a:I

.field private b:I

.field private final c:Lcsi;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lctv;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcsi;I)V
    .locals 1

    .line 5
    invoke-virtual {p1}, Lcsi;->size()I

    move-result v0

    invoke-direct {p0}, Lctv;-><init>()V

    .line 6
    invoke-static {p2, v0}, Lcrj;->b(II)V

    iput v0, p0, Lctw;->a:I

    iput p2, p0, Lctw;->b:I

    iput-object p1, p0, Lctw;->c:Lcsi;

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lctw;->c:Lcsi;

    .line 7
    invoke-virtual {v0, p1}, Lcsi;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final add(Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 8
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lctw;->b:I

    iget v1, p0, Lctw;->a:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    iget v0, p0, Lctw;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lctw;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1
    iget v0, p0, Lctw;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lctw;->b:I

    .line 2
    invoke-virtual {p0, v0}, Lctw;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 0
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 1
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Lctw;->b:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lctw;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget v0, p0, Lctw;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lctw;->b:I

    .line 4
    invoke-virtual {p0, v0}, Lctw;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 0
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 3
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Lctw;->b:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 9
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
