.class public final Lmk;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Lrl;

.field private final b:Landroid/view/View;

.field private final c:Lmq;

.field private d:I

.field private e:Lrl;

.field private f:Lrl;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmk;->d:I

    iput-object p1, p0, Lmk;->b:Landroid/view/View;

    .line 1
    invoke-static {}, Lmq;->b()Lmq;

    move-result-object p1

    iput-object p1, p0, Lmk;->c:Lmq;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lmk;->b:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, p0, Lmk;->e:Lrl;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lmk;->f:Lrl;

    if-nez v1, :cond_0

    new-instance v1, Lrl;

    invoke-direct {v1}, Lrl;-><init>()V

    iput-object v1, p0, Lmk;->f:Lrl;

    :cond_0
    iget-object v1, p0, Lmk;->f:Lrl;

    const/4 v2, 0x0

    iput-object v2, v1, Lrl;->a:Landroid/content/res/ColorStateList;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lrl;->d:Z

    iput-object v2, v1, Lrl;->b:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v3, v1, Lrl;->c:Z

    iget-object v2, p0, Lmk;->b:Landroid/view/View;

    .line 4
    invoke-static {v2}, Lge;->v(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iput-boolean v3, v1, Lrl;->d:Z

    iput-object v2, v1, Lrl;->a:Landroid/content/res/ColorStateList;

    :cond_1
    iget-object v2, p0, Lmk;->b:Landroid/view/View;

    .line 5
    invoke-static {v2}, Lge;->w(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    if-eqz v2, :cond_2

    iput-boolean v3, v1, Lrl;->c:Z

    iput-object v2, v1, Lrl;->b:Landroid/graphics/PorterDuff$Mode;

    .line 6
    :cond_2
    iget-boolean v2, v1, Lrl;->d:Z

    if-nez v2, :cond_3

    iget-boolean v2, v1, Lrl;->c:Z

    if-nez v2, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    iget-object v2, p0, Lmk;->b:Landroid/view/View;

    .line 11
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmq;->a(Landroid/graphics/drawable/Drawable;Lrl;[I)V

    return-void

    .line 6
    :cond_4
    :goto_0
    iget-object v1, p0, Lmk;->a:Lrl;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lmk;->b:Landroid/view/View;

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 8
    invoke-static {v0, v1, v2}, Lmq;->a(Landroid/graphics/drawable/Drawable;Lrl;[I)V

    return-void

    :cond_5
    iget-object v1, p0, Lmk;->e:Lrl;

    if-eqz v1, :cond_6

    iget-object v2, p0, Lmk;->b:Landroid/view/View;

    .line 9
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 10
    invoke-static {v0, v1, v2}, Lmq;->a(Landroid/graphics/drawable/Drawable;Lrl;[I)V

    return-void

    .line 11
    :cond_6
    return-void
.end method

.method final a(I)V
    .locals 2

    iput p1, p0, Lmk;->d:I

    iget-object v0, p0, Lmk;->c:Lmq;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmk;->b:Landroid/view/View;

    .line 29
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lmq;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    invoke-virtual {p0, p1}, Lmk;->a(Landroid/content/res/ColorStateList;)V

    .line 31
    invoke-virtual {p0}, Lmk;->a()V

    return-void
.end method

.method final a(Landroid/content/res/ColorStateList;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lmk;->e:Lrl;

    if-nez v0, :cond_0

    new-instance v0, Lrl;

    invoke-direct {v0}, Lrl;-><init>()V

    iput-object v0, p0, Lmk;->e:Lrl;

    :cond_0
    iget-object v0, p0, Lmk;->e:Lrl;

    iput-object p1, v0, Lrl;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lrl;->d:Z

    goto :goto_0

    .line 32
    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lmk;->e:Lrl;

    :goto_0
    invoke-virtual {p0}, Lmk;->a()V

    return-void
.end method

.method final a(Landroid/util/AttributeSet;I)V
    .locals 10

    iget-object v0, p0, Lmk;->b:Landroid/view/View;

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Ljh;->z:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Lrn;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lrn;

    move-result-object v0

    iget-object v3, p0, Lmk;->b:Landroid/view/View;

    .line 13
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Ljh;->z:[I

    iget-object v7, v0, Lrn;->b:Landroid/content/res/TypedArray;

    const/4 v9, 0x0

    move-object v6, p1

    move v8, p2

    invoke-static/range {v3 .. v9}, Lge;->a(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 14
    :try_start_0
    invoke-virtual {v0, v2}, Lrn;->f(I)Z

    move-result p1

    const/4 p2, -0x1

    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {v0, v2, p2}, Lrn;->f(II)I

    move-result p1

    iput p1, p0, Lmk;->d:I

    iget-object p1, p0, Lmk;->c:Lmq;

    iget-object v1, p0, Lmk;->b:Landroid/view/View;

    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lmk;->d:I

    invoke-virtual {p1, v1, v2}, Lmq;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p0, p1}, Lmk;->a(Landroid/content/res/ColorStateList;)V

    :cond_0
    nop

    .line 18
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lrn;->f(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmk;->b:Landroid/view/View;

    .line 19
    invoke-virtual {v0, p1}, Lrn;->e(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 20
    invoke-static {v1, p1}, Lge;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    :cond_1
    nop

    .line 21
    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Lrn;->f(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmk;->b:Landroid/view/View;

    .line 22
    invoke-virtual {v0, p1, p2}, Lrn;->a(II)I

    move-result p1

    const/4 p2, 0x0

    .line 23
    invoke-static {p1, p2}, Loh;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    .line 24
    invoke-static {v1, p1}, Lge;->a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_2
    invoke-virtual {v0}, Lrn;->a()V

    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    invoke-virtual {v0}, Lrn;->a()V

    .line 26
    throw p1
.end method

.method final b()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lmk;->d:I

    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmk;->a(Landroid/content/res/ColorStateList;)V

    .line 28
    invoke-virtual {p0}, Lmk;->a()V

    return-void
.end method
