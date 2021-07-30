.class public final Lll;
.super Lkp;
.source "PG"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field public final j:Lkp;

.field public final k:Lks;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkp;Lks;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkp;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lll;->j:Lkp;

    iput-object p3, p0, Lll;->k:Lks;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lll;->k:Lks;

    iget v0, v0, Lks;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android:menu:actionviewstates:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lkn;)V
    .locals 1

    iget-object v0, p0, Lll;->j:Lkp;

    .line 7
    invoke-virtual {v0, p1}, Lkp;->a(Lkn;)V

    return-void
.end method

.method public final a(Lkp;Landroid/view/MenuItem;)Z
    .locals 1

    .line 3
    invoke-super {p0, p1, p2}, Lkp;->a(Lkp;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lll;->j:Lkp;

    .line 4
    invoke-virtual {v0, p1, p2}, Lkp;->a(Lkp;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lks;)Z
    .locals 1

    iget-object v0, p0, Lll;->j:Lkp;

    .line 5
    invoke-virtual {v0, p1}, Lkp;->a(Lks;)Z

    move-result p1

    return p1
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lll;->j:Lkp;

    invoke-virtual {v0}, Lkp;->b()Z

    move-result v0

    return v0
.end method

.method public final b(Lks;)Z
    .locals 1

    iget-object v0, p0, Lll;->j:Lkp;

    .line 2
    invoke-virtual {v0, p1}, Lkp;->b(Lks;)Z

    move-result p1

    return p1
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lll;->j:Lkp;

    invoke-virtual {v0}, Lkp;->c()Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lll;->j:Lkp;

    invoke-virtual {v0}, Lkp;->d()Z

    move-result v0

    return v0
.end method

.method public final getItem()Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lll;->k:Lks;

    return-object v0
.end method

.method public final j()Lkp;
    .locals 1

    iget-object v0, p0, Lll;->j:Lkp;

    invoke-virtual {v0}, Lkp;->j()Lkp;

    move-result-object v0

    return-object v0
.end method

.method public final setGroupDividerEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lll;->j:Lkp;

    .line 8
    invoke-virtual {v0, p1}, Lkp;->setGroupDividerEnabled(Z)V

    return-void
.end method

.method public final setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 6

    .line 9
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-super/range {v0 .. v5}, Lkp;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public final setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 6

    .line 10
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-super/range {v0 .. v5}, Lkp;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public final setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 6

    .line 11
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-super/range {v0 .. v5}, Lkp;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public final setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 6

    .line 12
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-super/range {v0 .. v5}, Lkp;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public final setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 6

    .line 13
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-super/range {v0 .. v5}, Lkp;->a(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public final setIcon(I)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Lll;->k:Lks;

    .line 14
    invoke-virtual {v0, p1}, Lks;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Lll;->k:Lks;

    .line 15
    invoke-virtual {v0, p1}, Lks;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setQwertyMode(Z)V
    .locals 1

    iget-object v0, p0, Lll;->j:Lkp;

    .line 16
    invoke-virtual {v0, p1}, Lkp;->setQwertyMode(Z)V

    return-void
.end method
