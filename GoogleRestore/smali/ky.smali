.class public final Lky;
.super Lkd;
.source "PG"

# interfaces
.implements Landroid/view/MenuItem;


# instance fields
.field public final d:Leo;

.field public e:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;Leo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkd;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 2
    iput-object p2, p0, Lky;->d:Leo;

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
.method public final collapseActionView()Z
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    .line 3
    invoke-interface {v0}, Leo;->collapseActionView()Z

    move-result v0

    return v0
.end method

.method public final expandActionView()Z
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    .line 4
    invoke-interface {v0}, Leo;->expandActionView()Z

    move-result v0

    return v0
.end method

.method public final getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    iget-object v0, p0, Lky;->d:Leo;

    invoke-interface {v0}, Leo;->a()Lfm;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lkt;

    if-eqz v1, :cond_0

    .line 6
    check-cast v0, Lkt;

    iget-object v0, v0, Lkt;->b:Landroid/view/ActionProvider;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getActionView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lky;->d:Leo;

    .line 7
    invoke-interface {v0}, Leo;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 8
    instance-of v1, v0, Lkv;

    if-eqz v1, :cond_0

    .line 9
    check-cast v0, Lkv;

    iget-object v0, v0, Lkv;->a:Landroid/view/CollapsibleActionView;

    .line 10
    check-cast v0, Landroid/view/View;

    :cond_0
    return-object v0
.end method

.method public final getAlphabeticModifiers()I
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    invoke-interface {v0}, Leo;->getAlphabeticModifiers()I

    move-result v0

    return v0
.end method

.method public final getAlphabeticShortcut()C
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    invoke-interface {v0}, Leo;->getAlphabeticShortcut()C

    move-result v0

    return v0
.end method

.method public final getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    invoke-interface {v0}, Leo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getGroupId()I
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    invoke-interface {v0}, Leo;->getGroupId()I

    move-result v0

    return v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    .line 11
    invoke-interface {v0}, Leo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    invoke-interface {v0}, Leo;->getIconTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public final getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    invoke-interface {v0}, Leo;->getIconTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    invoke-interface {v0}, Leo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId()I
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    invoke-interface {v0}, Leo;->getItemId()I

    move-result v0

    return v0
.end method

.method public final getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    invoke-interface {v0}, Leo;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getNumericModifiers()I
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    invoke-interface {v0}, Leo;->getNumericModifiers()I

    move-result v0

    return v0
.end method

.method public final getNumericShortcut()C
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    invoke-interface {v0}, Leo;->getNumericShortcut()C

    move-result v0

    return v0
.end method

.method public final getOrder()I
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    invoke-interface {v0}, Leo;->getOrder()I

    move-result v0

    return v0
.end method

.method public final getSubMenu()Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    invoke-interface {v0}, Leo;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    .line 12
    invoke-virtual {p0, v0}, Lkd;->a(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    invoke-interface {v0}, Leo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    .line 13
    invoke-interface {v0}, Leo;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    invoke-interface {v0}, Leo;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final hasSubMenu()Z
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    invoke-interface {v0}, Leo;->hasSubMenu()Z

    move-result v0

    return v0
.end method

.method public final isActionViewExpanded()Z
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    invoke-interface {v0}, Leo;->isActionViewExpanded()Z

    move-result v0

    return v0
.end method

.method public final isCheckable()Z
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    invoke-interface {v0}, Leo;->isCheckable()Z

    move-result v0

    return v0
.end method

.method public final isChecked()Z
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    invoke-interface {v0}, Leo;->isChecked()Z

    move-result v0

    return v0
.end method

.method public final isEnabled()Z
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    invoke-interface {v0}, Leo;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    .line 14
    invoke-interface {v0}, Leo;->isVisible()Z

    move-result v0

    return v0
.end method

.method public final setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2

    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    new-instance v0, Lku;

    invoke-direct {v0, p0, p1}, Lku;-><init>(Lky;Landroid/view/ActionProvider;)V

    iget-object v1, p0, Lky;->d:Leo;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Leo;->a(Lfm;)V

    return-object p0
.end method

.method public final setActionView(I)Landroid/view/MenuItem;
    .locals 2

    iget-object v0, p0, Lky;->d:Leo;

    .line 18
    invoke-interface {v0, p1}, Leo;->setActionView(I)Landroid/view/MenuItem;

    iget-object p1, p0, Lky;->d:Leo;

    .line 19
    invoke-interface {p1}, Leo;->getActionView()Landroid/view/View;

    move-result-object p1

    .line 20
    instance-of v0, p1, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lky;->d:Leo;

    new-instance v1, Lkv;

    .line 21
    invoke-direct {v1, p1}, Lkv;-><init>(Landroid/view/View;)V

    invoke-interface {v0, v1}, Leo;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    :cond_0
    return-object p0
.end method

.method public final setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    .line 22
    instance-of v0, p1, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    new-instance v0, Lkv;

    .line 23
    invoke-direct {v0, p1}, Lkv;-><init>(Landroid/view/View;)V

    move-object p1, v0

    :cond_0
    iget-object v0, p0, Lky;->d:Leo;

    .line 24
    invoke-interface {v0, p1}, Leo;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    .line 25
    invoke-interface {v0, p1}, Leo;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    .line 26
    invoke-interface {v0, p1, p2}, Leo;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setCheckable(Z)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    .line 27
    invoke-interface {v0, p1}, Leo;->setCheckable(Z)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    .line 28
    invoke-interface {v0, p1}, Leo;->setChecked(Z)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    .line 29
    invoke-interface {v0, p1}, Leo;->a(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public final setEnabled(Z)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    .line 30
    invoke-interface {v0, p1}, Leo;->setEnabled(Z)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setIcon(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    .line 31
    invoke-interface {v0, p1}, Leo;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    .line 32
    invoke-interface {v0, p1}, Leo;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    .line 33
    invoke-interface {v0, p1}, Leo;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    .line 34
    invoke-interface {v0, p1}, Leo;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    .line 35
    invoke-interface {v0, p1}, Leo;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    .line 36
    invoke-interface {v0, p1}, Leo;->setNumericShortcut(C)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    .line 37
    invoke-interface {v0, p1, p2}, Leo;->setNumericShortcut(CI)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 2

    iget-object v0, p0, Lky;->d:Leo;

    if-eqz p1, :cond_0

    new-instance v1, Lkw;

    .line 38
    invoke-direct {v1, p0, p1}, Lkw;-><init>(Lky;Landroid/view/MenuItem$OnActionExpandListener;)V

    goto :goto_0

    .line 39
    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Leo;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 2

    iget-object v0, p0, Lky;->d:Leo;

    if-eqz p1, :cond_0

    new-instance v1, Lkx;

    .line 40
    invoke-direct {v1, p0, p1}, Lkx;-><init>(Lky;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    goto :goto_0

    .line 41
    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Leo;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setShortcut(CC)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    .line 42
    invoke-interface {v0, p1, p2}, Leo;->setShortcut(CC)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setShortcut(CCII)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    .line 43
    invoke-interface {v0, p1, p2, p3, p4}, Leo;->setShortcut(CCII)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setShowAsAction(I)V
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    .line 44
    invoke-interface {v0, p1}, Leo;->setShowAsAction(I)V

    return-void
.end method

.method public final setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    .line 45
    invoke-interface {v0, p1}, Leo;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setTitle(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    .line 46
    invoke-interface {v0, p1}, Leo;->setTitle(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    .line 47
    invoke-interface {v0, p1}, Leo;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    .line 48
    invoke-interface {v0, p1}, Leo;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    .line 49
    invoke-interface {v0, p1}, Leo;->b(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public final setVisible(Z)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lky;->d:Leo;

    .line 50
    invoke-interface {v0, p1}, Leo;->setVisible(Z)Landroid/view/MenuItem;

    return-object v0
.end method
