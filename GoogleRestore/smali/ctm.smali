.class final Lctm;
.super Lcsu;
.source "PG"


# instance fields
.field final a:Ljava/lang/Object;

.field b:Ljava/util/Map;

.field final synthetic c:Lctp;


# direct methods
.method public constructor <init>(Lctp;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lctm;->c:Lctp;

    .line 1
    invoke-direct {p0}, Lcsu;-><init>()V

    .line 2
    invoke-static {p2}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lctm;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Iterator;
    .locals 2

    .line 10
    invoke-virtual {p0}, Lctm;->b()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 11
    sget-object v0, Lcsp;->a:Lcsp;

    return-object v0

    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 13
    new-instance v1, Lctk;

    invoke-direct {v1, p0, v0}, Lctk;-><init>(Lctm;Ljava/util/Iterator;)V

    return-object v1
.end method

.method final b()Ljava/util/Map;
    .locals 2

    iget-object v0, p0, Lctm;->b:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lctm;->c:Lctp;

    iget-object v0, v0, Lctp;->a:Ljava/util/Map;

    iget-object v1, p0, Lctm;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lctm;->b:Ljava/util/Map;

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lctm;->c:Lctp;

    .line 4
    iget-object v0, v0, Lctp;->a:Ljava/util/Map;

    iget-object v1, p0, Lctm;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lctm;->b:Ljava/util/Map;

    :goto_1
    return-object v0
.end method

.method final c()V
    .locals 2

    .line 16
    invoke-virtual {p0}, Lctm;->b()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lctm;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lctm;->c:Lctp;

    .line 17
    iget-object v0, v0, Lctp;->a:Ljava/util/Map;

    iget-object v1, p0, Lctm;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lctm;->b:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public final clear()V
    .locals 1

    .line 5
    invoke-virtual {p0}, Lctm;->b()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 7
    :cond_0
    invoke-virtual {p0}, Lctm;->c()V

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 8
    invoke-virtual {p0}, Lctm;->b()Ljava/util/Map;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 9
    invoke-static {v0, p1}, Lcsy;->b(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lctm;->b()Ljava/util/Map;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 15
    invoke-static {v0, p1}, Lcsy;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 18
    invoke-static {p1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {p2}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lctm;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 20
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lctm;->b:Ljava/util/Map;

    .line 22
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lctm;->c:Lctp;

    iget-object v1, p0, Lctm;->a:Ljava/lang/Object;

    .line 21
    invoke-virtual {v0, v1, p1, p2}, Lcrv;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 23
    invoke-virtual {p0}, Lctm;->b()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 24
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 25
    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    invoke-virtual {p0}, Lctm;->c()V

    return-object v1
.end method

.method public final size()I
    .locals 1

    .line 26
    invoke-virtual {p0}, Lctm;->b()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 27
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
