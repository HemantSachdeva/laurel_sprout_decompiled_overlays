.class public abstract Lcrv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lctr;


# instance fields
.field private transient a:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final b()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcrv;->a:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1
    new-instance v0, Lcru;

    invoke-direct {v0, p0}, Lcru;-><init>(Lcrv;)V

    iput-object v0, p0, Lcrv;->a:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public abstract c()Ljava/util/Iterator;
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p1, Lctr;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 0
    :goto_0
    return p1

    .line 3
    :cond_1
    check-cast p1, Lctr;

    .line 4
    invoke-interface {p0}, Lctr;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lctr;->b()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcrv;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcrv;->e()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
