.class final Ldmc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Iterator;
.implements Lj$/util/Iterator;


# instance fields
.field final synthetic a:Ldme;

.field private b:I

.field private c:Z

.field private d:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ldme;)V
    .locals 0

    iput-object p1, p0, Ldmc;->a:Ldme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Ldmc;->b:I

    return-void
.end method

.method private final a()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Ldmc;->d:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Ldmc;->a:Ldme;

    .line 1
    sget v1, Ldme;->e:I

    .line 2
    iget-object v0, v0, Ldme;->b:Ljava/util/Map;

    .line 1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ldmc;->d:Ljava/util/Iterator;

    :cond_0
    iget-object v0, p0, Ldmc;->d:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public final forEachRemaining(Lj$/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Iterator$$CC;->forEachRemaining$$dflt$$(Ljava/util/Iterator;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public final hasNext()Z
    .locals 4

    iget v0, p0, Ldmc;->b:I

    iget-object v1, p0, Ldmc;->a:Ldme;

    .line 3
    sget v2, Ldme;->e:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 4
    iget-object v1, v1, Ldme;->a:Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Ldmc;->a:Ldme;

    .line 5
    iget-object v0, v0, Ldme;->b:Ljava/util/Map;

    .line 6
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Ldmc;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    :goto_1
    return v2
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldmc;->c:Z

    iget v1, p0, Ldmc;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Ldmc;->b:I

    iget-object v0, p0, Ldmc;->a:Ldme;

    sget v2, Ldme;->e:I

    iget-object v0, v0, Ldme;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Ldmc;->a:Ldme;

    iget-object v0, v0, Ldme;->a:Ljava/util/List;

    iget v1, p0, Ldmc;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Ldmc;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final remove()V
    .locals 3

    iget-boolean v0, p0, Ldmc;->c:Z

    if-eqz v0, :cond_1

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldmc;->c:Z

    iget-object v0, p0, Ldmc;->a:Ldme;

    .line 8
    sget v1, Ldme;->e:I

    .line 9
    invoke-virtual {v0}, Ldme;->c()V

    iget v0, p0, Ldmc;->b:I

    iget-object v1, p0, Ldmc;->a:Ldme;

    .line 10
    iget-object v1, v1, Ldme;->a:Ljava/util/List;

    .line 11
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ldmc;->a:Ldme;

    iget v1, p0, Ldmc;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Ldmc;->b:I

    .line 12
    invoke-virtual {v0, v1}, Ldme;->c(I)Ljava/lang/Object;

    return-void

    .line 13
    :cond_0
    invoke-direct {p0}, Ldmc;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    .line 0
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    const-string v1, "remove() was called before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
