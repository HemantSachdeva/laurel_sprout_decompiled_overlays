.class public final Lyi;
.super Lcz;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcz;-><init>()V

    return-void
.end method

.method private static a(Lyo;)Z
    .locals 1

    iget-object p0, p0, Lyo;->c:Ljava/util/ArrayList;

    .line 29
    invoke-static {p0}, Lyi;->a(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 30
    const/4 p0, 0x0

    invoke-static {p0}, Lyi;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    invoke-static {p0}, Lyi;->a(Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 32
    new-instance v0, Lyv;

    invoke-direct {v0}, Lyv;-><init>()V

    if-eqz p1, :cond_0

    .line 33
    check-cast p1, Lyo;

    invoke-virtual {v0, p1}, Lyv;->a(Lyo;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 34
    check-cast p2, Lyo;

    invoke-virtual {v0, p2}, Lyv;->a(Lyo;)V

    :cond_1
    if-eqz p3, :cond_2

    .line 35
    check-cast p3, Lyo;

    invoke-virtual {v0, p3}, Lyv;->a(Lyo;)V

    :cond_2
    return-object v0
.end method

.method public final a(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 4

    .line 13
    check-cast p2, Lyo;

    sget-object v0, Lys;->a:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lge;->z(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    sget-object v0, Lys;->a:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {p2}, Lyo;->g()Lyo;

    move-result-object p2

    .line 17
    invoke-static {}, Lys;->a()Lth;

    move-result-object v0

    invoke-virtual {v0, p1}, Lto;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 19
    check-cast v3, Lyo;

    .line 20
    invoke-virtual {v3, p1}, Lyo;->b(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 21
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lyo;->a(Landroid/view/ViewGroup;Z)V

    :cond_1
    nop

    .line 22
    const v0, 0x7f0a01c2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Larw;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 23
    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    if-eqz p2, :cond_3

    .line 24
    new-instance v0, Lyr;

    invoke-direct {v0, p2, p1}, Lyr;-><init>(Lyo;Landroid/view/ViewGroup;)V

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 26
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    :cond_2
    throw v2

    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 55
    check-cast p1, Lyo;

    new-instance p2, Lbef;

    invoke-direct {p2}, Lbef;-><init>()V

    .line 56
    invoke-virtual {p1, p2}, Lyo;->a(Lbef;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;Landroid/view/View;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 57
    check-cast p1, Lyo;

    new-instance v0, Landroid/graphics/Rect;

    .line 58
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 59
    invoke-static {p2, v0}, Lyi;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    new-instance p2, Lbef;

    invoke-direct {p2}, Lbef;-><init>()V

    .line 60
    invoke-virtual {p1, p2}, Lyo;->a(Lbef;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4

    .line 64
    check-cast p1, Lyv;

    iget-object v0, p1, Lyo;->d:Ljava/util/ArrayList;

    .line 65
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 66
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 67
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 68
    invoke-static {v0, v3}, Lyi;->a(Ljava/util/List;Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {p0, p1, p3}, Lyi;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 10

    .line 53
    move-object v0, p1

    check-cast v0, Lyo;

    new-instance v9, Lyf;

    .line 54
    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lyf;-><init>(Lyi;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v9}, Lyo;->a(Lyn;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 3

    .line 3
    check-cast p1, Lyo;

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    instance-of v0, p1, Lyv;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Lyv;

    .line 6
    invoke-virtual {p1}, Lyv;->j()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 7
    invoke-virtual {p1, v1}, Lyv;->a(I)Lyo;

    move-result-object v2

    .line 8
    invoke-virtual {p0, v2, p2}, Lyi;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {p1}, Lyi;->a(Lyo;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lyo;->d:Ljava/util/ArrayList;

    .line 10
    invoke-static {v0}, Lyi;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 12
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Lyo;->d(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8
    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .line 72
    check-cast p1, Lyv;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lyo;->d:Ljava/util/ArrayList;

    .line 73
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p1, Lyo;->d:Ljava/util/ArrayList;

    .line 74
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 75
    invoke-virtual {p0, p1, p2, p3}, Lyi;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;Lue;Ljava/lang/Runnable;)V
    .locals 1

    .line 61
    check-cast p1, Lyo;

    new-instance v0, Lyg;

    .line 62
    invoke-direct {v0, p1}, Lyg;-><init>(Lyo;)V

    invoke-virtual {p2, v0}, Lue;->a(Lud;)V

    new-instance p2, Lyh;

    .line 63
    invoke-direct {p2, p3}, Lyh;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Lyo;->a(Lyn;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 0

    .line 27
    instance-of p1, p1, Lyo;

    return p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_0

    .line 28
    check-cast p1, Lyo;

    invoke-virtual {p1}, Lyo;->g()Lyo;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    check-cast p1, Lyo;

    .line 2
    invoke-virtual {p1, p2}, Lyo;->d(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 1

    .line 51
    check-cast p1, Lyo;

    new-instance v0, Lye;

    .line 52
    invoke-direct {v0, p2, p3}, Lye;-><init>(Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Lyo;->a(Lyn;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    .line 38
    check-cast p1, Lyo;

    .line 39
    instance-of v0, p1, Lyv;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 40
    check-cast p1, Lyv;

    .line 41
    invoke-virtual {p1}, Lyv;->j()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 42
    invoke-virtual {p1, v1}, Lyv;->a(I)Lyo;

    move-result-object v2

    .line 43
    invoke-virtual {p0, v2, p2, p3}, Lyi;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    :cond_0
    invoke-static {p1}, Lyi;->a(Lyo;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lyo;->d:Ljava/util/ArrayList;

    .line 45
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 46
    invoke-interface {v0, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 46
    :goto_1
    nop

    :goto_2
    if-ge v1, v0, :cond_2

    .line 48
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p1, v2}, Lyo;->d(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 49
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_3
    if-ltz p3, :cond_3

    .line 50
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lyo;->e(Landroid/view/View;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    .line 43
    :cond_3
    return-void
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 76
    :cond_0
    new-instance v0, Lyv;

    invoke-direct {v0}, Lyv;-><init>()V

    .line 77
    check-cast p1, Lyo;

    invoke-virtual {v0, p1}, Lyv;->a(Lyo;)V

    return-object v0
.end method

.method public final c(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 36
    check-cast p1, Lyo;

    .line 37
    invoke-virtual {p1, p2}, Lyo;->e(Landroid/view/View;)V

    return-void
.end method
