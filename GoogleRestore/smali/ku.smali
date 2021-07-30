.class final Lku;
.super Lkt;
.source "PG"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# instance fields
.field private d:Lkr;


# direct methods
.method public constructor <init>(Lky;Landroid/view/ActionProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lkt;-><init>(Lky;Landroid/view/ActionProvider;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lku;->b:Landroid/view/ActionProvider;

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lkr;)V
    .locals 0

    iput-object p1, p0, Lku;->d:Lkr;

    iget-object p1, p0, Lku;->b:Landroid/view/ActionProvider;

    .line 6
    invoke-virtual {p1, p0}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lku;->b:Landroid/view/ActionProvider;

    .line 5
    invoke-virtual {v0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lku;->b:Landroid/view/ActionProvider;

    .line 2
    invoke-virtual {v0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result v0

    return v0
.end method

.method public final onActionProviderVisibilityChanged(Z)V
    .locals 0

    iget-object p1, p0, Lku;->d:Lkr;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lkr;->a:Lks;

    iget-object p1, p1, Lks;->j:Lkp;

    .line 3
    invoke-virtual {p1}, Lkp;->l()V

    :cond_0
    return-void
.end method
