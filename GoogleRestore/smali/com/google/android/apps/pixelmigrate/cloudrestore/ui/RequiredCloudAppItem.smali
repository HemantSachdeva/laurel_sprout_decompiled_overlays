.class public Lcom/google/android/apps/pixelmigrate/cloudrestore/ui/RequiredCloudAppItem;
.super Lcom/google/android/apps/pixelmigrate/cloudrestore/ui/CloudAppItem;
.source "PG"


# direct methods
.method public constructor <init>(Laop;Laci;Lapr;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/apps/pixelmigrate/cloudrestore/ui/CloudAppItem;-><init>(Laop;ZLaci;Lapr;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/ui/CloudAppItem;->a(Landroid/view/View;)V

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 5
    const v0, 0x7f0a0179

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CompoundButton;

    .line 6
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setVisibility(I)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    return-void
.end method
