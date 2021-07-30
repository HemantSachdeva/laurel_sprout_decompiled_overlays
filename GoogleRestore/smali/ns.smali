.class public final Lns;
.super Landroid/widget/ToggleButton;
.source "PG"


# instance fields
.field private final a:Lmk;

.field private final b:Lnp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    const v0, 0x101004b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-virtual {p0}, Lns;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lri;->a(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, Lmk;

    .line 3
    invoke-direct {p1, p0}, Lmk;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lns;->a:Lmk;

    .line 4
    invoke-virtual {p1, p2, v0}, Lmk;->a(Landroid/util/AttributeSet;I)V

    new-instance p1, Lnp;

    .line 5
    invoke-direct {p1, p0}, Lnp;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lns;->b:Lnp;

    .line 6
    invoke-virtual {p1, p2, v0}, Lnp;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected final drawableStateChanged()V
    .locals 1

    .line 7
    invoke-super {p0}, Landroid/widget/ToggleButton;->drawableStateChanged()V

    iget-object v0, p0, Lns;->a:Lmk;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lmk;->a()V

    :cond_0
    iget-object v0, p0, Lns;->b:Lnp;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Lnp;->a()V

    :cond_1
    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 10
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lns;->a:Lmk;

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p1}, Lmk;->b()V

    :cond_0
    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 1

    .line 12
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lns;->a:Lmk;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0, p1}, Lmk;->a(I)V

    :cond_0
    return-void
.end method
