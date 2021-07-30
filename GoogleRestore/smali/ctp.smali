.class Lctp;
.super Lcrv;
.source "PG"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final a:Ljava/util/Map;

.field private transient b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Lcrv;-><init>()V

    iput-object p1, p0, Lctp;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 5
    invoke-static {p1}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p2}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {p3}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lctp;->a:Ljava/util/Map;

    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 9
    invoke-static {}, Lcrz;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lctp;->a:Ljava/util/Map;

    .line 10
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_0
    nop

    :goto_0
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lctp;->a:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lctp;->a:Ljava/util/Map;

    .line 4
    invoke-static {v0, p1}, Lcsy;->b(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    .line 12
    new-instance v0, Lctm;

    invoke-direct {v0, p0, p1}, Lctm;-><init>(Lctp;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final c()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lctj;

    .line 2
    invoke-direct {v0, p0}, Lctj;-><init>(Lctp;)V

    return-object v0
.end method

.method public final d()I
    .locals 3

    iget-object v0, p0, Lctp;->a:Ljava/util/Map;

    .line 14
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 15
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final e()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lctp;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcsx;

    invoke-direct {v0, p0}, Lcsx;-><init>(Lctp;)V

    iput-object v0, p0, Lctp;->b:Ljava/util/Map;

    :cond_0
    return-object v0
.end method
