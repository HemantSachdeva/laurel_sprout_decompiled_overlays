.class final Llm;
.super Llg;
.source "PG"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private final d:Lep;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lep;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Llg;-><init>(Landroid/content/Context;Len;)V

    iput-object p2, p0, Llm;->d:Lep;

    return-void
.end method


# virtual methods
.method public final clearHeader()V
    .locals 1

    iget-object v0, p0, Llm;->d:Lep;

    .line 2
    invoke-interface {v0}, Lep;->clearHeader()V

    return-void
.end method

.method public final getItem()Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Llm;->d:Lep;

    .line 3
    invoke-interface {v0}, Lep;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkd;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public final setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Llm;->d:Lep;

    .line 4
    invoke-interface {v0, p1}, Lep;->setHeaderIcon(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Llm;->d:Lep;

    .line 5
    invoke-interface {v0, p1}, Lep;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Llm;->d:Lep;

    .line 6
    invoke-interface {v0, p1}, Lep;->setHeaderTitle(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Llm;->d:Lep;

    .line 7
    invoke-interface {v0, p1}, Lep;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Llm;->d:Lep;

    .line 8
    invoke-interface {v0, p1}, Lep;->setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setIcon(I)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Llm;->d:Lep;

    .line 9
    invoke-interface {v0, p1}, Lep;->setIcon(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Llm;->d:Lep;

    .line 10
    invoke-interface {v0, p1}, Lep;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    return-object p0
.end method
