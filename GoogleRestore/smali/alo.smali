.class final Lalo;
.super Lrb;
.source "PG"


# instance fields
.field final synthetic d:Lalp;


# direct methods
.method public constructor <init>(Lalp;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lalo;->d:Lalp;

    .line 1
    invoke-direct {p0, p2}, Lrb;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lgz;)V
    .locals 4

    .line 2
    invoke-super {p0, p1, p2}, Lrb;->a(Landroid/view/View;Lgz;)V

    iget-object p1, p0, Lalo;->d:Lalp;

    .line 3
    sget v0, Lalp;->c:I

    .line 4
    iget-object p1, p1, Lalp;->a:Lcmy;

    .line 3
    const v0, 0x7f0a012d

    invoke-virtual {p1, v0}, Lcmy;->e(I)Lcms;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/items/Item;

    iget-object v0, p0, Lalo;->d:Lalp;

    .line 5
    iget-object v0, v0, Lalp;->a:Lcmy;

    .line 6
    const v1, 0x7f0a0133

    invoke-virtual {v0, v1}, Lcmy;->e(I)Lcms;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/items/Item;

    iget-object v1, p0, Lalo;->d:Lalp;

    .line 7
    iget-object v1, v1, Lalp;->a:Lcmy;

    .line 8
    const v2, 0x7f0a0132

    invoke-virtual {v1, v2}, Lcmy;->e(I)Lcms;

    move-result-object v1

    check-cast v1, Lcom/google/android/setupdesign/items/Item;

    .line 9
    sget-object v2, Land;->U:Lccv;

    invoke-virtual {v2}, Lccv;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-eq v3, v2, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    const/4 v3, 0x2

    .line 9
    :goto_0
    sget-object v2, Land;->U:Lccv;

    .line 10
    invoke-virtual {v2}, Lccv;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v1, v1, Lcom/google/android/setupdesign/items/Item;->h:Z

    if-eqz v1, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    iget-boolean p1, p1, Lcom/google/android/setupdesign/items/Item;->h:Z

    if-eqz p1, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    iget-boolean p1, v0, Lcom/google/android/setupdesign/items/Item;->h:Z

    if-eqz p1, :cond_3

    add-int/lit8 v3, v3, 0x1

    .line 11
    :cond_3
    invoke-static {v3}, Lgx;->a(I)Lgx;

    move-result-object p1

    .line 12
    invoke-virtual {p2, p1}, Lgz;->a(Ljava/lang/Object;)V

    return-void
.end method
