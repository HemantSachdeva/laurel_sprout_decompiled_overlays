.class public abstract Lcom/google/android/apps/pixelmigrate/common/ui/AbstractAppItem;
.super Lcom/google/android/apps/pixelmigrate/common/ui/CompoundButtonItem;
.source "PG"


# instance fields
.field private final a:Laci;

.field protected b:Laop;

.field private final j:Lapr;


# direct methods
.method protected constructor <init>(Laop;ZLaci;Lapr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/apps/pixelmigrate/common/ui/CompoundButtonItem;-><init>()V

    iput-object p3, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AbstractAppItem;->a:Laci;

    iput-object p4, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AbstractAppItem;->j:Lapr;

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/apps/pixelmigrate/common/ui/CompoundButtonItem;->a(Z)V

    .line 3
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p2

    iput p2, p0, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->g:I

    iget-object p2, p1, Laop;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/items/Item;->b(Ljava/lang/CharSequence;)V

    .line 5
    sget-object p2, Land;->n:Lccv;

    invoke-virtual {p2}, Lccv;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p1, Laop;->h:Landroid/accounts/Account;

    .line 7
    iget-object p2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/items/Item;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p2, p1, Laop;->d:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/items/Item;->a(Ljava/lang/CharSequence;)V

    .line 7
    :goto_0
    iput-object p1, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AbstractAppItem;->b:Laop;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 8

    .line 8
    invoke-super {p0, p1}, Lcom/google/android/apps/pixelmigrate/common/ui/CompoundButtonItem;->a(Landroid/view/View;)V

    .line 9
    const v0, 0x7f0a0179

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AbstractAppItem;->b:Laop;

    iget-object v1, v1, Laop;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 10
    sget-object v0, Land;->k:Lccv;

    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0a017b

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/NetworkImageView;

    const v1, 0x7f0a017c

    .line 12
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 13
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AbstractAppItem;->j:Lapr;

    iget-object v2, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AbstractAppItem;->b:Laop;

    iget-object v2, v2, Laop;->i:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 14
    invoke-static {v2}, Lark;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p1, Lapr;->a:Larl;

    .line 15
    invoke-static {v2}, Lark;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v3, Larl;->a:I

    iget v6, v3, Larl;->b:I

    const/4 v7, -0x1

    if-ne v5, v6, :cond_0

    if-eq v5, v7, :cond_0

    .line 18
    const-string v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Larl;->a:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 24
    :cond_0
    if-eq v5, v6, :cond_1

    if-eq v5, v7, :cond_1

    if-eq v6, v7, :cond_1

    .line 17
    const-string v5, "w"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Larl;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "-h"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Larl;->b:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    :cond_1
    :goto_0
    nop

    .line 19
    const-string v3, "-d-no"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lark;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 21
    invoke-static {v2}, Lark;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    iget-boolean p1, p1, Lapr;->b:Z

    if-eqz p1, :cond_3

    .line 22
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "-rw"

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    iget-object p1, p0, Lcom/google/android/apps/pixelmigrate/common/ui/AbstractAppItem;->a:Laci;

    .line 23
    invoke-static {}, Lbir;->d()V

    iput-object v2, v0, Lcom/android/volley/toolbox/NetworkImageView;->a:Ljava/lang/String;

    iput-object p1, v0, Lcom/android/volley/toolbox/NetworkImageView;->b:Laci;

    .line 24
    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/NetworkImageView;->a(Z)V

    return-void

    .line 17
    :cond_4
    return-void
.end method
