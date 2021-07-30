.class final Lcru;
.super Ljava/util/AbstractSet;
.source "PG"

# interfaces
.implements Lj$/util/Set;
.implements Lj$/util/Collection;


# instance fields
.field final synthetic a:Lcrv;


# direct methods
.method public constructor <init>(Lcrv;)V
    .locals 0

    iput-object p1, p0, Lcru;->a:Lcrv;

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcru;->a:Lcrv;

    .line 2
    invoke-virtual {v0}, Lcrv;->a()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    .line 3
    instance-of v0, p1, Lctq;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lctq;

    iget-object v0, p0, Lcru;->a:Lcrv;

    .line 5
    invoke-virtual {v0}, Lcrv;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lctq;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcsy;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lctq;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lctq;->c()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcsy;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    .line 7
    invoke-static {v0, p1}, Lcsb;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcru;->a:Lcrv;

    .line 8
    invoke-virtual {v0}, Lcrv;->c()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final parallelStream()Lj$/util/stream/Stream;
    .locals 1

    invoke-static {p0}, Lj$/util/Collection$$CC;->parallelStream$$dflt$$(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 3

    .line 9
    instance-of v0, p1, Lctq;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 10
    check-cast p1, Lctq;

    iget-object v0, p0, Lcru;->a:Lcrv;

    .line 11
    invoke-virtual {v0}, Lcrv;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lctq;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcsy;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lctq;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lctq;->c()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcsy;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    .line 13
    invoke-static {v0}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :cond_0
    :goto_0
    return v1
.end method

.method public final removeIf(Lj$/util/function/Predicate;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Collection$$CC;->removeIf$$dflt$$(Ljava/util/Collection;Lj$/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcru;->a:Lcrv;

    .line 15
    invoke-virtual {v0}, Lcrv;->d()I

    move-result v0

    return v0
.end method

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    invoke-static {p0}, Lj$/util/Set$$CC;->spliterator$$dflt$$(Ljava/util/Set;)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public final stream()Lj$/util/stream/Stream;
    .locals 1

    invoke-static {p0}, Lj$/util/Collection$$CC;->stream$$dflt$$(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
