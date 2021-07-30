.class public final Lclh;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static a(Landroid/os/PersistableBundle;)Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    .line 9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->putAll(Landroid/os/PersistableBundle;)V

    return-object v0
.end method

.method private static a(Landroid/os/BaseBundle;)Landroid/util/ArrayMap;
    .locals 6

    .line 11
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 12
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    return-object p0

    .line 13
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/os/BaseBundle;->size()I

    move-result v2

    invoke-direct {v0, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 14
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 15
    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 16
    invoke-static {v4}, Lclh;->a(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v1

    const/4 v4, 0x1

    aput-object v3, v5, v4

    .line 17
    const-string v3, "Unknown/unsupported data type [%s] for key %s"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SetupCompat.PersistBls"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static a(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    .line 7
    invoke-static {p0}, Lclh;->a(Landroid/os/BaseBundle;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-static {p1}, Lclh;->a(Landroid/os/BaseBundle;)Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Ljava/lang/Object;)Z
    .locals 1

    .line 8
    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_1

    instance-of p0, p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Landroid/os/PersistableBundle;)V
    .locals 6

    .line 1
    const-string v0, "PersistableBundle cannot be null!"

    invoke-static {p0, v0}, Lcln;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-static {v2}, Lclh;->a(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v1, v4, v2

    .line 5
    const-string v1, "Unknown/unsupported data type [%s] for key %s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v3, v1}, Lcln;->a(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
