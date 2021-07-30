.class public final synthetic Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiListItemAdapter$ListItemViewHolder$-ebGuNtqEeHmdL3tKS0Y8Kofm5M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/CompoundButton;

.field public final synthetic f$1:Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;

.field public final synthetic f$2:Lcom/android/car/ui/recyclerview/CarUiContentListItem;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/CompoundButton;Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;Lcom/android/car/ui/recyclerview/CarUiContentListItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiListItemAdapter$ListItemViewHolder$-ebGuNtqEeHmdL3tKS0Y8Kofm5M;->f$0:Landroid/widget/CompoundButton;

    iput-object p2, p0, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiListItemAdapter$ListItemViewHolder$-ebGuNtqEeHmdL3tKS0Y8Kofm5M;->f$1:Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;

    iput-object p3, p0, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiListItemAdapter$ListItemViewHolder$-ebGuNtqEeHmdL3tKS0Y8Kofm5M;->f$2:Lcom/android/car/ui/recyclerview/CarUiContentListItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiListItemAdapter$ListItemViewHolder$-ebGuNtqEeHmdL3tKS0Y8Kofm5M;->f$0:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiListItemAdapter$ListItemViewHolder$-ebGuNtqEeHmdL3tKS0Y8Kofm5M;->f$1:Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;

    iget-object p0, p0, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiListItemAdapter$ListItemViewHolder$-ebGuNtqEeHmdL3tKS0Y8Kofm5M;->f$2:Lcom/android/car/ui/recyclerview/CarUiContentListItem;

    invoke-static {v0, v1, p0, p1}, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->lambda$bindCompoundButton$6(Landroid/widget/CompoundButton;Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;Lcom/android/car/ui/recyclerview/CarUiContentListItem;Landroid/view/View;)V

    return-void
.end method
