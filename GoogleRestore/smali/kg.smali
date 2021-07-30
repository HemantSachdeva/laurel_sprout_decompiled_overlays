.class public final Lkg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lki;

.field final synthetic b:Landroid/view/MenuItem;

.field final synthetic c:Lkp;

.field final synthetic d:Lkh;


# direct methods
.method public constructor <init>(Lkh;Lki;Landroid/view/MenuItem;Lkp;)V
    .locals 0

    iput-object p1, p0, Lkg;->d:Lkh;

    iput-object p2, p0, Lkg;->a:Lki;

    iput-object p3, p0, Lkg;->b:Landroid/view/MenuItem;

    iput-object p4, p0, Lkg;->c:Lkp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lkg;->a:Lki;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lkg;->d:Lkh;

    iget-object v1, v1, Lkh;->a:Lkj;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lkj;->f:Z

    iget-object v0, v0, Lki;->b:Lkp;

    .line 1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkp;->a(Z)V

    iget-object v0, p0, Lkg;->d:Lkh;

    iget-object v0, v0, Lkh;->a:Lkj;

    iput-boolean v1, v0, Lkj;->f:Z

    :cond_0
    iget-object v0, p0, Lkg;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkg;->b:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkg;->c:Lkp;

    iget-object v1, p0, Lkg;->b:Landroid/view/MenuItem;

    const/4 v2, 0x4

    .line 2
    invoke-virtual {v0, v1, v2}, Lkp;->a(Landroid/view/MenuItem;I)Z

    :cond_1
    return-void
.end method
