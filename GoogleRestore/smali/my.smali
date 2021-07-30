.class public Lmy;
.super Landroid/widget/RadioButton;
.source "PG"


# instance fields
.field private final a:Lmo;

.field private final b:Lmk;

.field private final c:Lnp;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lrk;->a(Landroid/content/Context;)V

    const v0, 0x7f040212

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-virtual {p0}, Lmy;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lri;->a(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, Lmo;

    .line 3
    invoke-direct {p1, p0}, Lmo;-><init>(Landroid/widget/CompoundButton;)V

    iput-object p1, p0, Lmy;->a:Lmo;

    .line 4
    invoke-virtual {p1, p2, v0}, Lmo;->a(Landroid/util/AttributeSet;I)V

    new-instance p1, Lmk;

    .line 5
    invoke-direct {p1, p0}, Lmk;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lmy;->b:Lmk;

    .line 6
    invoke-virtual {p1, p2, v0}, Lmk;->a(Landroid/util/AttributeSet;I)V

    new-instance p1, Lnp;

    .line 7
    invoke-direct {p1, p0}, Lnp;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Lmy;->c:Lnp;

    .line 8
    invoke-virtual {p1, p2, v0}, Lnp;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected final drawableStateChanged()V
    .locals 1

    .line 9
    invoke-super {p0}, Landroid/widget/RadioButton;->drawableStateChanged()V

    iget-object v0, p0, Lmy;->b:Lmk;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Lmk;->a()V

    :cond_0
    iget-object v0, p0, Lmy;->c:Lnp;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Lnp;->a()V

    :cond_1
    return-void
.end method

.method public final getCompoundPaddingLeft()I
    .locals 2

    .line 12
    invoke-super {p0}, Landroid/widget/RadioButton;->getCompoundPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lmy;->a:Lmo;

    if-eqz v1, :cond_0

    .line 13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    :cond_0
    return v0
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 14
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lmy;->b:Lmk;

    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p1}, Lmk;->b()V

    :cond_0
    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 1

    .line 16
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    iget-object v0, p0, Lmy;->b:Lmk;

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0, p1}, Lmk;->a(I)V

    :cond_0
    return-void
.end method

.method public final setButtonDrawable(I)V
    .locals 1

    .line 18
    invoke-virtual {p0}, Lmy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lji;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmy;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 19
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lmy;->a:Lmo;

    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p1}, Lmo;->a()V

    :cond_0
    return-void
.end method
