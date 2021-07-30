.class public final Laia;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Laqd;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lacw;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "CloudRestoreChoiceFactory"

    aput-object v3, v1, v2

    .line 1
    invoke-direct {v0, v1}, Lacw;-><init>([Ljava/lang/String;)V

    sput-object v0, Laia;->a:Laqd;

    return-void
.end method

.method public static a(I)Lahv;
    .locals 2

    new-instance v0, Lahv;

    .line 41
    invoke-direct {v0, p0}, Lahv;-><init>(I)V

    .line 42
    invoke-static {}, Lada;->a()Lada;

    move-result-object v1

    invoke-virtual {v1, p0}, Lada;->a(I)Z

    move-result p0

    invoke-virtual {v0, p0}, Lahv;->a(Z)V

    .line 43
    invoke-virtual {v0}, Lahv;->c()V

    .line 44
    invoke-virtual {v0}, Lahv;->d()V

    return-object v0
.end method

.method public static a(Landroid/content/Context;II)Lahv;
    .locals 7

    const/4 v0, 0x0

    if-gez p1, :cond_0

    sget-object p1, Laia;->a:Laqd;

    new-array v1, v0, [Ljava/lang/Object;

    .line 23
    const-string v2, "The given number of device contacts is negative, set it to 0"

    invoke-virtual {p1, v2, v1}, Laqd;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    :cond_0
    if-gez p2, :cond_1

    sget-object p2, Laia;->a:Laqd;

    new-array v1, v0, [Ljava/lang/Object;

    .line 24
    const-string v2, "The given number of SIM contacts is negative, set it to 0"

    invoke-virtual {p2, v2, v1}, Laqd;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x0

    :cond_1
    new-instance v1, Lahv;

    .line 25
    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lahv;-><init>(I)V

    const v3, 0x7f110079

    .line 26
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lahv;->b:Ljava/lang/String;

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    if-lez p2, :cond_2

    if-nez p1, :cond_2

    new-array v4, v4, [Ljava/lang/Object;

    .line 32
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const v5, 0x7f0f0006

    .line 33
    invoke-virtual {v3, v5, p2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 38
    :cond_2
    if-nez p2, :cond_3

    if-lez p1, :cond_3

    new-array v4, v4, [Ljava/lang/Object;

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const v5, 0x7f0f0003

    .line 31
    invoke-virtual {v3, v5, p1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    add-int v5, p2, p1

    new-array v4, v4, [Ljava/lang/Object;

    .line 28
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v0

    const v6, 0x7f0f0004

    .line 29
    invoke-virtual {v3, v6, v5, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 33
    :goto_0
    if-nez p1, :cond_4

    if-nez p2, :cond_4

    iput-object v3, v1, Lahv;->e:Ljava/lang/String;

    .line 39
    invoke-virtual {v1, v0}, Lahv;->a(Z)V

    goto :goto_1

    .line 40
    :cond_4
    iput-object v3, v1, Lahv;->c:Ljava/lang/String;

    const v0, 0x7f1100e3

    .line 34
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lahv;->d:Ljava/lang/String;

    .line 35
    invoke-static {}, Lada;->a()Lada;

    move-result-object p0

    invoke-virtual {p0, v2}, Lada;->a(I)Z

    move-result p0

    .line 36
    invoke-virtual {v1, p0}, Lahv;->a(Z)V

    .line 37
    invoke-virtual {v1}, Lahv;->c()V

    .line 38
    invoke-virtual {v1}, Lahv;->d()V

    .line 39
    :goto_1
    add-int/2addr p1, p2

    .line 40
    sget-object p0, Land;->A:Lccv;

    invoke-virtual {p0}, Lccv;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    mul-int p1, p1, p0

    int-to-long p0, p1

    iput-wide p0, v1, Lahv;->h:J

    return-object v1
.end method

.method public static a(Landroid/content/Context;Ljava/util/Map;)Lahv;
    .locals 8

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const v1, 0x7f11005b

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    new-instance p1, Lahv;

    .line 3
    invoke-direct {p1, v3}, Lahv;-><init>(I)V

    .line 4
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lahv;->b:Ljava/lang/String;

    const v0, 0x7f110024

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lahv;->e:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v2}, Lahv;->a(Z)V

    return-object p1

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v4, Lahv;

    .line 8
    invoke-direct {v4, v3}, Lahv;-><init>(I)V

    .line 9
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lahv;->b:Ljava/lang/String;

    .line 10
    invoke-virtual {v4}, Lahv;->d()V

    .line 11
    invoke-virtual {v4}, Lahv;->c()V

    .line 12
    invoke-static {p1}, Laox;->d(Ljava/util/Map;)I

    move-result v1

    .line 13
    invoke-static {p1}, Laox;->c(Ljava/util/Map;)I

    move-result v5

    if-lez v1, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    .line 17
    :cond_1
    const/4 v6, 0x0

    .line 14
    :goto_0
    invoke-virtual {v4, v6}, Lahv;->a(Z)V

    if-lez v1, :cond_2

    .line 15
    invoke-static {p1}, Laox;->a(Ljava/util/Map;)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-static {p1}, Laox;->a(Lj$/util/stream/Stream;)J

    move-result-wide v6

    iput-wide v6, v4, Lahv;->h:J

    goto :goto_1

    .line 21
    :cond_2
    check-cast p1, Lcsl;

    .line 16
    invoke-virtual {p1}, Lcsl;->c()Lcsn;

    move-result-object p1

    .line 17
    invoke-static {p1}, Laox;->a(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-static {p1}, Laox;->a(Lj$/util/stream/Stream;)J

    move-result-wide v6

    iput-wide v6, v4, Lahv;->h:J

    .line 15
    :goto_1
    if-eqz v1, :cond_4

    if-ne v1, v5, :cond_3

    goto :goto_2

    .line 22
    :cond_3
    new-array p1, v3, [Ljava/lang/Object;

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v2

    const v2, 0x7f0f0001

    .line 21
    invoke-virtual {v0, v2, v1, p1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 15
    :cond_4
    :goto_2
    new-array p1, v3, [Ljava/lang/Object;

    .line 18
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v2

    const/high16 v1, 0x7f0f0000

    .line 19
    invoke-virtual {v0, v1, v5, p1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_3
    iput-object p1, v4, Lahv;->c:Ljava/lang/String;

    const p1, 0x7f110023

    .line 22
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, Lahv;->d:Ljava/lang/String;

    return-object v4
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/List;
    .locals 11

    new-instance v0, Landroid/util/SparseArray;

    .line 45
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 46
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lass;

    .line 47
    iget v2, v1, Lass;->b:I

    int-to-long v2, v2

    iget v4, v1, Lass;->c:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 48
    sget-object v6, Laqf;->a:Lcsn;

    iget-object v7, v1, Lass;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcsn;->contains(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, ""

    if-eqz v6, :cond_2

    .line 49
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lahv;

    if-nez v8, :cond_1

    .line 50
    invoke-static {v6}, Laia;->a(I)Lahv;

    move-result-object v8

    iput-wide v4, v8, Lahv;->h:J

    const v9, 0x7f110078

    .line 51
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lahv;->b:Ljava/lang/String;

    .line 52
    invoke-virtual {v8, v7}, Lahv;->a(Ljava/lang/String;)V

    :cond_1
    iget-wide v9, v8, Lahv;->h:J

    add-long/2addr v9, v2

    iput-wide v9, v8, Lahv;->h:J

    .line 53
    invoke-virtual {v0, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    sget-object v6, Laqf;->b:Lcsn;

    .line 54
    iget-object v8, v1, Lass;->a:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcsn;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 55
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lahv;

    if-nez v8, :cond_3

    .line 56
    invoke-static {v6}, Laia;->a(I)Lahv;

    move-result-object v8

    iput-wide v4, v8, Lahv;->h:J

    const v9, 0x7f11007a

    .line 57
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lahv;->b:Ljava/lang/String;

    const v9, 0x7f11016a

    .line 58
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 59
    invoke-virtual {v8, v9}, Lahv;->a(Ljava/lang/String;)V

    :cond_3
    iget-wide v9, v8, Lahv;->h:J

    add-long/2addr v9, v2

    iput-wide v9, v8, Lahv;->h:J

    .line 60
    invoke-virtual {v0, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    sget-object v6, Laqf;->c:Lcsn;

    .line 61
    iget-object v8, v1, Lass;->a:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcsn;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 62
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lahv;

    if-nez v8, :cond_5

    .line 63
    invoke-static {v6}, Laia;->a(I)Lahv;

    move-result-object v8

    iput-wide v4, v8, Lahv;->h:J

    const v4, 0x7f11017c

    .line 64
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v8, Lahv;->b:Ljava/lang/String;

    .line 65
    invoke-virtual {v8, v7}, Lahv;->a(Ljava/lang/String;)V

    :cond_5
    iget-wide v4, v8, Lahv;->h:J

    add-long/2addr v4, v2

    iput-wide v4, v8, Lahv;->h:J

    .line 66
    invoke-virtual {v0, v6, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_6
    if-eqz p2, :cond_0

    .line 67
    iget-object v1, v1, Lass;->a:Ljava/lang/String;

    const-string v4, "com.google.android.gms"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const/16 v1, 0x8

    invoke-static {v1}, Laia;->a(I)Lahv;

    move-result-object v4

    iput-wide v2, v4, Lahv;->h:J

    const v2, 0x7f110169

    .line 69
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lahv;->b:Ljava/lang/String;

    const v2, 0x7f110051

    .line 70
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-virtual {v4, v2}, Lahv;->a(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    new-instance p0, Ljava/util/ArrayList;

    .line 73
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 p1, 0x0

    .line 74
    :goto_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_8

    .line 75
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lahv;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_8
    return-object p0
.end method
