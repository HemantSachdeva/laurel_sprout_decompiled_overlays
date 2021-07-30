.class public Llg;
.super Lkd;
.source "PG"

# interfaces
.implements Landroid/view/Menu;


# instance fields
.field private final d:Len;


# direct methods
.method public constructor <init>(Landroid/content/Context;Len;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkd;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 2
    iput-object p2, p0, Llg;->d:Len;

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 2
    const-string p2, "Wrapped Object can not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final add(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Llg;->d:Len;

    .line 3
    invoke-interface {v0, p1}, Len;->add(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkd;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public final add(IIII)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Llg;->d:Len;

    .line 4
    invoke-interface {v0, p1, p2, p3, p4}, Len;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkd;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public final add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Llg;->d:Len;

    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Len;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkd;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public final add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Llg;->d:Len;

    .line 6
    invoke-interface {v0, p1}, Len;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkd;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public final addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 12

    move-object v0, p0

    move-object/from16 v1, p8

    if-eqz v1, :cond_0

    array-length v2, v1

    new-array v2, v2, [Landroid/view/MenuItem;

    goto :goto_0

    .line 8
    :cond_0
    const/4 v2, 0x0

    .line 0
    :goto_0
    iget-object v3, v0, Llg;->d:Len;

    .line 7
    move v4, p1

    move v5, p2

    move v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object v11, v2

    invoke-interface/range {v3 .. v11}, Len;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    move-result v3

    if-eqz v2, :cond_1

    array-length v4, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    .line 8
    aget-object v6, v2, v5

    invoke-virtual {p0, v6}, Lkd;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v6

    aput-object v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    return v3
.end method

.method public final addSubMenu(I)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Llg;->d:Len;

    .line 9
    invoke-interface {v0, p1}, Len;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkd;->a(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public final addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Llg;->d:Len;

    .line 10
    invoke-interface {v0, p1, p2, p3, p4}, Len;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lkd;->a(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public final addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Llg;->d:Len;

    .line 12
    invoke-interface {v0, p1, p2, p3, p4}, Len;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkd;->a(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public final addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Llg;->d:Len;

    .line 13
    invoke-interface {v0, p1}, Len;->addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkd;->a(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p1

    return-object p1
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, Lkd;->b:Lto;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Lto;->clear()V

    :cond_0
    iget-object v0, p0, Lkd;->c:Lto;

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v0}, Lto;->clear()V

    :cond_1
    iget-object v0, p0, Llg;->d:Len;

    .line 16
    invoke-interface {v0}, Len;->clear()V

    return-void
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Llg;->d:Len;

    .line 17
    invoke-interface {v0}, Len;->close()V

    return-void
.end method

.method public final findItem(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Llg;->d:Len;

    .line 18
    invoke-interface {v0, p1}, Len;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkd;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public final getItem(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Llg;->d:Len;

    .line 19
    invoke-interface {v0, p1}, Len;->getItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkd;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public final hasVisibleItems()Z
    .locals 1

    iget-object v0, p0, Llg;->d:Len;

    .line 20
    invoke-interface {v0}, Len;->hasVisibleItems()Z

    move-result v0

    return v0
.end method

.method public final isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Llg;->d:Len;

    .line 21
    invoke-interface {v0, p1, p2}, Len;->isShortcutKey(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final performIdentifierAction(II)Z
    .locals 1

    iget-object v0, p0, Llg;->d:Len;

    .line 22
    invoke-interface {v0, p1, p2}, Len;->performIdentifierAction(II)Z

    move-result p1

    return p1
.end method

.method public final performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 1

    iget-object v0, p0, Llg;->d:Len;

    .line 23
    invoke-interface {v0, p1, p2, p3}, Len;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1
.end method

.method public final removeGroup(I)V
    .locals 3

    iget-object v0, p0, Lkd;->b:Lto;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkd;->b:Lto;

    iget v2, v1, Lto;->j:I

    if-ge v0, v2, :cond_1

    .line 24
    invoke-virtual {v1, v0}, Lto;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leo;

    invoke-interface {v1}, Leo;->getGroupId()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lkd;->b:Lto;

    .line 25
    invoke-virtual {v1, v0}, Lto;->d(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Llg;->d:Len;

    .line 26
    invoke-interface {v0, p1}, Len;->removeGroup(I)V

    return-void
.end method

.method public final removeItem(I)V
    .locals 3

    iget-object v0, p0, Lkd;->b:Lto;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkd;->b:Lto;

    iget v2, v1, Lto;->j:I

    if-ge v0, v2, :cond_1

    .line 27
    invoke-virtual {v1, v0}, Lto;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leo;

    invoke-interface {v1}, Leo;->getItemId()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lkd;->b:Lto;

    .line 28
    invoke-virtual {v1, v0}, Lto;->d(I)Ljava/lang/Object;

    goto :goto_1

    .line 29
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    :cond_1
    :goto_1
    iget-object v0, p0, Llg;->d:Len;

    .line 29
    invoke-interface {v0, p1}, Len;->removeItem(I)V

    return-void
.end method

.method public final setGroupCheckable(IZZ)V
    .locals 1

    iget-object v0, p0, Llg;->d:Len;

    .line 30
    invoke-interface {v0, p1, p2, p3}, Len;->setGroupCheckable(IZZ)V

    return-void
.end method

.method public final setGroupEnabled(IZ)V
    .locals 1

    iget-object v0, p0, Llg;->d:Len;

    .line 31
    invoke-interface {v0, p1, p2}, Len;->setGroupEnabled(IZ)V

    return-void
.end method

.method public final setGroupVisible(IZ)V
    .locals 1

    iget-object v0, p0, Llg;->d:Len;

    .line 32
    invoke-interface {v0, p1, p2}, Len;->setGroupVisible(IZ)V

    return-void
.end method

.method public final setQwertyMode(Z)V
    .locals 1

    iget-object v0, p0, Llg;->d:Len;

    .line 33
    invoke-interface {v0, p1}, Len;->setQwertyMode(Z)V

    return-void
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Llg;->d:Len;

    .line 34
    invoke-interface {v0}, Len;->size()I

    move-result v0

    return v0
.end method
