.class Lcom/android/car/ui/recyclerview/CarUiRecyclerView$UxRestrictionChangedListener;
.super Ljava/lang/Object;
.source "CarUiRecyclerView.java"

# interfaces
.implements Lcom/android/car/ui/utils/CarUxRestrictionsUtil$OnUxRestrictionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/ui/recyclerview/CarUiRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UxRestrictionChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;


# direct methods
.method private constructor <init>(Lcom/android/car/ui/recyclerview/CarUiRecyclerView;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$UxRestrictionChangedListener;->this$0:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/ui/recyclerview/CarUiRecyclerView;Lcom/android/car/ui/recyclerview/CarUiRecyclerView$1;)V
    .locals 0

    .line 511
    invoke-direct {p0, p1}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$UxRestrictionChangedListener;-><init>(Lcom/android/car/ui/recyclerview/CarUiRecyclerView;)V

    return-void
.end method


# virtual methods
.method public onRestrictionsChanged(Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 2

    .line 516
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$UxRestrictionChangedListener;->this$0:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    .line 519
    instance-of v0, p0, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$ItemCap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 524
    invoke-virtual {p1}, Landroid/car/drivingstate/CarUxRestrictions;->getActiveRestrictions()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_1

    .line 527
    invoke-virtual {p1}, Landroid/car/drivingstate/CarUxRestrictions;->getMaxCumulativeContentItems()I

    move-result v0

    .line 530
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    .line 531
    move-object v1, p0

    check-cast v1, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$ItemCap;

    invoke-interface {v1, v0}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView$ItemCap;->setMaxItems(I)V

    .line 532
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ne v0, p1, :cond_2

    return-void

    :cond_2
    if-ge v0, p1, :cond_3

    sub-int/2addr p1, v0

    .line 539
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    goto :goto_0

    :cond_3
    sub-int/2addr v0, p1

    .line 541
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    :goto_0
    return-void
.end method
