.class Lcom/android/car/ui/recyclerview/DefaultScrollBar$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "DefaultScrollBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/ui/recyclerview/DefaultScrollBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/ui/recyclerview/DefaultScrollBar;


# direct methods
.method constructor <init>(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar$1;->this$0:Lcom/android/car/ui/recyclerview/DefaultScrollBar;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/android/car/ui/recyclerview/DefaultScrollBar$1;->this$0:Lcom/android/car/ui/recyclerview/DefaultScrollBar;

    invoke-static {p0}, Lcom/android/car/ui/recyclerview/DefaultScrollBar;->access$000(Lcom/android/car/ui/recyclerview/DefaultScrollBar;)V

    return-void
.end method
