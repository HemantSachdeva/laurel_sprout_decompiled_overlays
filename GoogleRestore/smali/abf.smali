.class public final Labf;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:[B

.field public final b:Ljava/util/Map;

.field public final c:Ljava/util/List;

.field public final d:Z


# direct methods
.method public constructor <init>([BLjava/util/Map;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labf;->a:[B

    iput-object p2, p0, Labf;->b:Ljava/util/Map;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Labf;->c:Ljava/util/List;

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Labf;->c:Ljava/util/List;

    .line 0
    :goto_0
    iput-boolean p4, p0, Labf;->d:Z

    return-void
.end method

.method public constructor <init>([BZLjava/util/List;)V
    .locals 4

    if-nez p3, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/TreeMap;

    .line 4
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 5
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labb;

    iget-object v3, v2, Labb;->a:Ljava/lang/String;

    iget-object v2, v2, Labb;->b:Ljava/lang/String;

    .line 6
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_2
    :goto_1
    invoke-direct {p0, p1, v0, p3, p2}, Labf;-><init>([BLjava/util/Map;Ljava/util/List;Z)V

    return-void
.end method
