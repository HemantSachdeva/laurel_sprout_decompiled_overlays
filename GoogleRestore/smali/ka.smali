.class public final Lka;
.super Los;
.source "PG"


# instance fields
.field final synthetic a:Landroid/support/v7/view/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/menu/ActionMenuItemView;)V
    .locals 0

    iput-object p1, p0, Lka;->a:Landroid/support/v7/view/menu/ActionMenuItemView;

    .line 1
    invoke-direct {p0, p1}, Los;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()Llh;
    .locals 2

    iget-object v0, p0, Lka;->a:Landroid/support/v7/view/menu/ActionMenuItemView;

    .line 2
    iget-object v0, v0, Landroid/support/v7/view/menu/ActionMenuItemView;->d:Lkb;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lkb;->a:Lmc;

    iget-object v0, v0, Lmc;->j:Llw;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Llb;->a()Lkz;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method protected final b()Z
    .locals 3

    iget-object v0, p0, Lka;->a:Landroid/support/v7/view/menu/ActionMenuItemView;

    .line 4
    iget-object v1, v0, Landroid/support/v7/view/menu/ActionMenuItemView;->c:Lko;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/support/v7/view/menu/ActionMenuItemView;->b:Lks;

    invoke-interface {v1, v0}, Lko;->a(Lks;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lka;->a()Llh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Llh;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method
