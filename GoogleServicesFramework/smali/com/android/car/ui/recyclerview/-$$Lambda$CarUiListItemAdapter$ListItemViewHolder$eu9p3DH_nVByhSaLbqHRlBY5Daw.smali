.class public final synthetic Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiListItemAdapter$ListItemViewHolder$eu9p3DH_nVByhSaLbqHRlBY5Daw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;

.field public final synthetic f$1:Lcom/android/car/ui/recyclerview/CarUiContentListItem;

.field public final synthetic f$2:Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;Lcom/android/car/ui/recyclerview/CarUiContentListItem;Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiListItemAdapter$ListItemViewHolder$eu9p3DH_nVByhSaLbqHRlBY5Daw;->f$0:Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;

    iput-object p2, p0, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiListItemAdapter$ListItemViewHolder$eu9p3DH_nVByhSaLbqHRlBY5Daw;->f$1:Lcom/android/car/ui/recyclerview/CarUiContentListItem;

    iput-object p3, p0, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiListItemAdapter$ListItemViewHolder$eu9p3DH_nVByhSaLbqHRlBY5Daw;->f$2:Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiListItemAdapter$ListItemViewHolder$eu9p3DH_nVByhSaLbqHRlBY5Daw;->f$0:Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;

    iget-object v1, p0, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiListItemAdapter$ListItemViewHolder$eu9p3DH_nVByhSaLbqHRlBY5Daw;->f$1:Lcom/android/car/ui/recyclerview/CarUiContentListItem;

    iget-object p0, p0, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiListItemAdapter$ListItemViewHolder$eu9p3DH_nVByhSaLbqHRlBY5Daw;->f$2:Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/car/ui/recyclerview/CarUiListItemAdapter$ListItemViewHolder;->lambda$bind$4$CarUiListItemAdapter$ListItemViewHolder(Lcom/android/car/ui/recyclerview/CarUiContentListItem;Lcom/android/car/ui/recyclerview/CarUiContentListItem$OnClickListener;Landroid/view/View;)V

    return-void
.end method
