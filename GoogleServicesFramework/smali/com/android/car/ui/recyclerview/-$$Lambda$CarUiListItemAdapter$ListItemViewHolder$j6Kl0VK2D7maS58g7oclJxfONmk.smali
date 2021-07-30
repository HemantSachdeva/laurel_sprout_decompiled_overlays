.class public final synthetic Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiListItemAdapter$ListItemViewHolder$j6Kl0VK2D7maS58g7oclJxfONmk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;

.field public final synthetic f$1:Lcom/android/car/ui/recyclerview/CarUiContentListItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;Lcom/android/car/ui/recyclerview/CarUiContentListItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiListItemAdapter$ListItemViewHolder$j6Kl0VK2D7maS58g7oclJxfONmk;->f$0:Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;

    iput-object p2, p0, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiListItemAdapter$ListItemViewHolder$j6Kl0VK2D7maS58g7oclJxfONmk;->f$1:Lcom/android/car/ui/recyclerview/CarUiContentListItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiListItemAdapter$ListItemViewHolder$j6Kl0VK2D7maS58g7oclJxfONmk;->f$0:Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;

    iget-object p0, p0, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiListItemAdapter$ListItemViewHolder$j6Kl0VK2D7maS58g7oclJxfONmk;->f$1:Lcom/android/car/ui/recyclerview/CarUiContentListItem;

    invoke-static {v0, p0, p1}, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->lambda$bind$2(Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;Lcom/android/car/ui/recyclerview/CarUiContentListItem;Landroid/view/View;)V

    return-void
.end method
