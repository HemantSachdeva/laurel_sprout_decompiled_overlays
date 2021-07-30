.class public final synthetic Lcom/android/car/ui/toolbar/-$$Lambda$ToolbarControllerImpl$XM5gsKVhbzu7_zOfUfHY1DZo3yk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/car/ui/toolbar/ToolbarControllerImpl;

.field public final synthetic f$1:[Landroid/view/View;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/ui/toolbar/ToolbarControllerImpl;[Landroid/view/View;ILjava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/toolbar/-$$Lambda$ToolbarControllerImpl$XM5gsKVhbzu7_zOfUfHY1DZo3yk;->f$0:Lcom/android/car/ui/toolbar/ToolbarControllerImpl;

    iput-object p2, p0, Lcom/android/car/ui/toolbar/-$$Lambda$ToolbarControllerImpl$XM5gsKVhbzu7_zOfUfHY1DZo3yk;->f$1:[Landroid/view/View;

    iput p3, p0, Lcom/android/car/ui/toolbar/-$$Lambda$ToolbarControllerImpl$XM5gsKVhbzu7_zOfUfHY1DZo3yk;->f$2:I

    iput-object p4, p0, Lcom/android/car/ui/toolbar/-$$Lambda$ToolbarControllerImpl$XM5gsKVhbzu7_zOfUfHY1DZo3yk;->f$3:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/car/ui/toolbar/-$$Lambda$ToolbarControllerImpl$XM5gsKVhbzu7_zOfUfHY1DZo3yk;->f$0:Lcom/android/car/ui/toolbar/ToolbarControllerImpl;

    iget-object v1, p0, Lcom/android/car/ui/toolbar/-$$Lambda$ToolbarControllerImpl$XM5gsKVhbzu7_zOfUfHY1DZo3yk;->f$1:[Landroid/view/View;

    iget v2, p0, Lcom/android/car/ui/toolbar/-$$Lambda$ToolbarControllerImpl$XM5gsKVhbzu7_zOfUfHY1DZo3yk;->f$2:I

    iget-object p0, p0, Lcom/android/car/ui/toolbar/-$$Lambda$ToolbarControllerImpl$XM5gsKVhbzu7_zOfUfHY1DZo3yk;->f$3:Ljava/util/concurrent/atomic/AtomicInteger;

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/android/car/ui/toolbar/ToolbarControllerImpl;->lambda$setMenuItemsInternal$4$ToolbarControllerImpl([Landroid/view/View;ILjava/util/concurrent/atomic/AtomicInteger;Landroid/view/View;)V

    return-void
.end method
