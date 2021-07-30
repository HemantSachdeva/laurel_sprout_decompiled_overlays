.class public Lgu;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lgu;


# instance fields
.field private final b:Lgt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 2
    sget-object v0, Lgs;->b:Lgu;

    sput-object v0, Lgu;->a:Lgu;

    return-void

    .line 3
    :cond_0
    sget-object v0, Lgt;->c:Lgu;

    sput-object v0, Lgu;->a:Lgu;

    return-void
.end method

.method private constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 18
    new-instance v0, Lgs;

    invoke-direct {v0, p0, p1}, Lgs;-><init>(Lgu;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lgu;->b:Lgt;

    return-void

    .line 19
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 20
    new-instance v0, Lgr;

    invoke-direct {v0, p0, p1}, Lgr;-><init>(Lgu;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lgu;->b:Lgt;

    return-void

    .line 21
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    new-instance v0, Lgq;

    invoke-direct {v0, p0, p1}, Lgq;-><init>(Lgu;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lgu;->b:Lgt;

    return-void
.end method

.method public constructor <init>(Lgu;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_5

    iget-object p1, p1, Lgu;->b:Lgt;

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    instance-of v0, p1, Lgs;

    if-eqz v0, :cond_0

    .line 14
    new-instance v0, Lgs;

    move-object v1, p1

    check-cast v1, Lgs;

    invoke-direct {v0, p0, v1}, Lgs;-><init>(Lgu;Lgs;)V

    iput-object v0, p0, Lgu;->b:Lgt;

    goto :goto_0

    .line 5
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    instance-of v0, p1, Lgr;

    if-eqz v0, :cond_1

    .line 13
    new-instance v0, Lgr;

    move-object v1, p1

    check-cast v1, Lgr;

    invoke-direct {v0, p0, v1}, Lgr;-><init>(Lgu;Lgr;)V

    iput-object v0, p0, Lgu;->b:Lgt;

    goto :goto_0

    .line 6
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    instance-of v0, p1, Lgq;

    if-eqz v0, :cond_2

    .line 12
    new-instance v0, Lgq;

    move-object v1, p1

    check-cast v1, Lgq;

    invoke-direct {v0, p0, v1}, Lgq;-><init>(Lgu;Lgq;)V

    iput-object v0, p0, Lgu;->b:Lgt;

    goto :goto_0

    .line 7
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    instance-of v0, p1, Lgp;

    if-eqz v0, :cond_3

    .line 11
    new-instance v0, Lgp;

    move-object v1, p1

    check-cast v1, Lgp;

    invoke-direct {v0, p0, v1}, Lgp;-><init>(Lgu;Lgp;)V

    iput-object v0, p0, Lgu;->b:Lgt;

    goto :goto_0

    .line 8
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    instance-of v0, p1, Lgo;

    if-eqz v0, :cond_4

    .line 10
    new-instance v0, Lgo;

    move-object v1, p1

    check-cast v1, Lgo;

    invoke-direct {v0, p0, v1}, Lgo;-><init>(Lgu;Lgo;)V

    iput-object v0, p0, Lgu;->b:Lgt;

    goto :goto_0

    .line 9
    :cond_4
    new-instance v0, Lgt;

    invoke-direct {v0, p0}, Lgt;-><init>(Lgu;)V

    iput-object v0, p0, Lgu;->b:Lgt;

    .line 15
    :goto_0
    invoke-virtual {p1, p0}, Lgt;->a(Lgu;)V

    return-void

    .line 16
    :cond_5
    new-instance p1, Lgt;

    invoke-direct {p1, p0}, Lgt;-><init>(Lgu;)V

    iput-object p1, p0, Lgu;->b:Lgt;

    return-void
.end method

.method static a(Ldz;IIII)Ldz;
    .locals 5

    .line 39
    iget v0, p0, Ldz;->b:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 40
    iget v2, p0, Ldz;->c:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 41
    iget v3, p0, Ldz;->d:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 42
    iget v4, p0, Ldz;->e:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    return-object p0

    .line 43
    :cond_0
    invoke-static {v0, v2, v3, v1}, Ldz;->a(IIII)Ldz;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/WindowInsets;)Lgu;
    .locals 1

    .line 57
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgu;->a(Landroid/view/WindowInsets;Landroid/view/View;)Lgu;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/WindowInsets;Landroid/view/View;)Lgu;
    .locals 1

    new-instance v0, Lgu;

    .line 58
    invoke-static {p0}, Ley;->a(Ljava/lang/Object;)V

    invoke-direct {v0, p0}, Lgu;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 60
    invoke-static {p1}, Lge;->s(Landroid/view/View;)Lgu;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgu;->a(Lgu;)V

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgu;->a(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lgu;->b:Lgt;

    .line 34
    invoke-virtual {v0}, Lgt;->b()Ldz;

    move-result-object v0

    iget v0, v0, Ldz;->b:I

    return v0
.end method

.method public a(IIII)Lgu;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Lgm;

    .line 46
    invoke-direct {v0, p0}, Lgm;-><init>(Lgu;)V

    goto :goto_0

    .line 47
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    new-instance v0, Lgm;

    .line 48
    invoke-direct {v0, p0}, Lgm;-><init>(Lgu;)V

    goto :goto_0

    .line 49
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v0, Lgl;

    .line 50
    invoke-direct {v0, p0}, Lgl;-><init>(Lgu;)V

    .line 51
    :goto_0
    invoke-static {p1, p2, p3, p4}, Ldz;->a(IIII)Ldz;

    move-result-object p1

    .line 52
    invoke-virtual {v0, p1}, Lgn;->a(Ldz;)V

    .line 53
    invoke-virtual {v0}, Lgn;->a()Lgu;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/graphics/Rect;I)V
    .locals 1

    iget-object v0, p0, Lgu;->b:Lgt;

    .line 54
    invoke-virtual {v0, p1, p2}, Lgt;->a(Landroid/graphics/Rect;I)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    .line 26
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lgu;->a(Landroid/graphics/Rect;I)V

    return-void
.end method

.method public a(Lgu;)V
    .locals 1

    iget-object v0, p0, Lgu;->b:Lgt;

    .line 55
    invoke-virtual {v0, p1}, Lgt;->b(Lgu;)V

    return-void
.end method

.method public b()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lgu;->b:Lgt;

    .line 36
    invoke-virtual {v0}, Lgt;->b()Ldz;

    move-result-object v0

    iget v0, v0, Ldz;->c:I

    return v0
.end method

.method public b(IIII)Lgu;
    .locals 1

    iget-object v0, p0, Lgu;->b:Lgt;

    .line 38
    invoke-virtual {v0, p1, p2, p3, p4}, Lgt;->a(IIII)Lgu;

    move-result-object p1

    return-object p1
.end method

.method public c()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lgu;->b:Lgt;

    .line 35
    invoke-virtual {v0}, Lgt;->b()Ldz;

    move-result-object v0

    iget v0, v0, Ldz;->d:I

    return v0
.end method

.method public d()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lgu;->b:Lgt;

    .line 33
    invoke-virtual {v0}, Lgt;->b()Ldz;

    move-result-object v0

    iget v0, v0, Ldz;->e:I

    return v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lgu;->b:Lgt;

    .line 44
    invoke-virtual {v0}, Lgt;->c()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 29
    :cond_0
    instance-of v0, p1, Lgu;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 30
    :cond_1
    check-cast p1, Lgu;

    iget-object v0, p0, Lgu;->b:Lgt;

    .line 31
    iget-object p1, p1, Lgu;->b:Lgt;

    invoke-static {v0, p1}, Ley;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Lgu;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lgu;->b:Lgt;

    .line 25
    invoke-virtual {v0}, Lgt;->e()Lgu;

    move-result-object v0

    return-object v0
.end method

.method public g()Lgu;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lgu;->b:Lgt;

    .line 24
    invoke-virtual {v0}, Lgt;->d()Lgu;

    move-result-object v0

    return-object v0
.end method

.method public h()Lgu;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lgu;->b:Lgt;

    .line 23
    invoke-virtual {v0}, Lgt;->h()Lgu;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lgu;->b:Lgt;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 37
    :cond_0
    invoke-virtual {v0}, Lgt;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Ldz;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lgu;->b:Lgt;

    .line 32
    invoke-virtual {v0}, Lgt;->i()Ldz;

    move-result-object v0

    return-object v0
.end method

.method public j()Landroid/view/WindowInsets;
    .locals 2

    iget-object v0, p0, Lgu;->b:Lgt;

    .line 56
    instance-of v1, v0, Lgo;

    if-eqz v1, :cond_0

    check-cast v0, Lgo;

    iget-object v0, v0, Lgo;->a:Landroid/view/WindowInsets;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
