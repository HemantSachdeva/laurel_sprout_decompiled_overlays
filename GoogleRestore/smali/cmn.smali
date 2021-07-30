.class public final Lcmn;
.super Lfl;
.source "PG"


# instance fields
.field final synthetic b:Lcom/google/android/setupdesign/items/ExpandableSwitchItem;


# direct methods
.method public constructor <init>(Lcom/google/android/setupdesign/items/ExpandableSwitchItem;)V
    .locals 0

    iput-object p1, p0, Lcmn;->b:Lcom/google/android/setupdesign/items/ExpandableSwitchItem;

    .line 1
    invoke-direct {p0}, Lfl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lgz;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lfl;->a(Landroid/view/View;Lgz;)V

    iget-object p1, p0, Lcmn;->b:Lcom/google/android/setupdesign/items/ExpandableSwitchItem;

    iget-boolean p1, p1, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->a:Z

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lgw;->d:Lgw;

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lgw;->c:Lgw;

    .line 5
    :goto_0
    invoke-virtual {p2, p1}, Lgz;->a(Lgw;)V

    return-void
.end method

.method public final a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    const/high16 v0, 0x40000

    const/4 v1, 0x1

    if-eq p2, v0, :cond_0

    const/high16 v0, 0x80000

    if-eq p2, v0, :cond_0

    .line 7
    invoke-super {p0, p1, p2, p3}, Lfl;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcmn;->b:Lcom/google/android/setupdesign/items/ExpandableSwitchItem;

    iget-boolean p2, p1, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->a:Z

    xor-int/2addr p2, v1

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/items/ExpandableSwitchItem;->a(Z)V

    .line 7
    :goto_0
    return v1
.end method
