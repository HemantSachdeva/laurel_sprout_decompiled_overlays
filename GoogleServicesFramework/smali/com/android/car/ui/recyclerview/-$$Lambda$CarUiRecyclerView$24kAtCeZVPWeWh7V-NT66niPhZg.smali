.class public final synthetic Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiRecyclerView$24kAtCeZVPWeWh7V-NT66niPhZg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# instance fields
.field public final synthetic f$0:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/ui/recyclerview/CarUiRecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiRecyclerView$24kAtCeZVPWeWh7V-NT66niPhZg;->f$0:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    return-void
.end method


# virtual methods
.method public final onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/car/ui/recyclerview/-$$Lambda$CarUiRecyclerView$24kAtCeZVPWeWh7V-NT66niPhZg;->f$0:Lcom/android/car/ui/recyclerview/CarUiRecyclerView;

    invoke-virtual {p0, p1, p2}, Lcom/android/car/ui/recyclerview/CarUiRecyclerView;->lambda$initRotaryScroll$2$CarUiRecyclerView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
