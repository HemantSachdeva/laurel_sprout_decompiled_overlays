.class final Lno;
.super Ldv;
.source "PG"


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/ref/WeakReference;

.field final synthetic d:Lnp;


# direct methods
.method public constructor <init>(Lnp;IILjava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lno;->d:Lnp;

    iput p2, p0, Lno;->a:I

    iput p3, p0, Lno;->b:I

    iput-object p4, p0, Lno;->c:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ldv;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Landroid/graphics/Typeface;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v0, p0, Lno;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v1, p0, Lno;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-static {p1, v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lno;->d:Lnp;

    iget-object v1, p0, Lno;->c:Ljava/lang/ref/WeakReference;

    iget-boolean v2, v0, Lnp;->c:Z

    if-eqz v2, :cond_2

    iput-object p1, v0, Lnp;->b:Landroid/graphics/Typeface;

    .line 3
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget v0, v0, Lnp;->a:I

    .line 4
    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_2
    return-void
.end method
