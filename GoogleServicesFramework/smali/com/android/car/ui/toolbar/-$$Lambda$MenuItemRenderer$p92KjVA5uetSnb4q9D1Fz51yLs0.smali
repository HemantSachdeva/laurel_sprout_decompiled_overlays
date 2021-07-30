.class public final synthetic Lcom/android/car/ui/toolbar/-$$Lambda$MenuItemRenderer$p92KjVA5uetSnb4q9D1Fz51yLs0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/car/ui/toolbar/MenuItemRenderer;

.field public final synthetic f$1:Landroidx/core/util/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/ui/toolbar/MenuItemRenderer;Landroidx/core/util/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/toolbar/-$$Lambda$MenuItemRenderer$p92KjVA5uetSnb4q9D1Fz51yLs0;->f$0:Lcom/android/car/ui/toolbar/MenuItemRenderer;

    iput-object p2, p0, Lcom/android/car/ui/toolbar/-$$Lambda$MenuItemRenderer$p92KjVA5uetSnb4q9D1Fz51yLs0;->f$1:Landroidx/core/util/Consumer;

    return-void
.end method


# virtual methods
.method public final onInflateFinished(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/ui/toolbar/-$$Lambda$MenuItemRenderer$p92KjVA5uetSnb4q9D1Fz51yLs0;->f$0:Lcom/android/car/ui/toolbar/MenuItemRenderer;

    iget-object p0, p0, Lcom/android/car/ui/toolbar/-$$Lambda$MenuItemRenderer$p92KjVA5uetSnb4q9D1Fz51yLs0;->f$1:Landroidx/core/util/Consumer;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/car/ui/toolbar/MenuItemRenderer;->lambda$createView$0$MenuItemRenderer(Landroidx/core/util/Consumer;Landroid/view/View;ILandroid/view/ViewGroup;)V

    return-void
.end method
