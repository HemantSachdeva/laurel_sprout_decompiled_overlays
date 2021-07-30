.class final Laix;
.super Lrb;
.source "PG"


# instance fields
.field final synthetic d:Lcom/google/android/setupdesign/items/DescriptionItem;

.field final synthetic e:Lcsi;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Lcom/google/android/setupdesign/items/DescriptionItem;Lcsi;)V
    .locals 0

    iput-object p2, p0, Laix;->d:Lcom/google/android/setupdesign/items/DescriptionItem;

    iput-object p3, p0, Laix;->e:Lcsi;

    .line 1
    invoke-direct {p0, p1}, Lrb;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lgz;)V
    .locals 3

    .line 2
    invoke-super {p0, p1, p2}, Lrb;->a(Landroid/view/View;Lgz;)V

    iget-object p1, p0, Laix;->d:Lcom/google/android/setupdesign/items/DescriptionItem;

    iget p1, p1, Lcom/google/android/setupdesign/items/Item;->f:I

    iget-object v0, p0, Laix;->e:Lcsi;

    .line 3
    invoke-virtual {v0}, Lcsi;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const v2, 0x7f0d005f

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    add-int/2addr v0, v1

    .line 4
    invoke-static {v0}, Lgx;->a(I)Lgx;

    move-result-object p1

    .line 5
    invoke-virtual {p2, p1}, Lgz;->a(Ljava/lang/Object;)V

    return-void
.end method
