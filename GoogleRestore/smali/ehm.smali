.class public final Lehm;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final a:Ldxh;

.field final b:Ljava/util/Map;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ldxh;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lehm;->a:Ldxh;

    iput-object p2, p0, Lehm;->b:Ljava/util/Map;

    iput-object p3, p0, Lehm;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lehm;

    iget-object v2, p0, Lehm;->a:Ldxh;

    iget-object v3, p1, Lehm;->a:Ldxh;

    .line 3
    invoke-static {v2, v3}, Lcqt;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lehm;->b:Ljava/util/Map;

    iget-object v3, p1, Lehm;->b:Ljava/util/Map;

    .line 4
    invoke-static {v2, v3}, Lcqt;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lehm;->c:Ljava/lang/Object;

    iget-object p1, p1, Lehm;->c:Ljava/lang/Object;

    .line 5
    invoke-static {v2, p1}, Lcqt;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v1

    .line 1
    :cond_3
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lehm;->a:Ldxh;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lehm;->b:Ljava/util/Map;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lehm;->c:Ljava/lang/Object;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 6
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 7
    invoke-static {p0}, Lcqt;->a(Ljava/lang/Object;)Lcqs;

    move-result-object v0

    iget-object v1, p0, Lehm;->a:Ldxh;

    .line 8
    const-string v2, "provider"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lehm;->b:Ljava/util/Map;

    .line 9
    const-string v2, "rawConfig"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lehm;->c:Ljava/lang/Object;

    .line 10
    const-string v2, "config"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    invoke-virtual {v0}, Lcqs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
