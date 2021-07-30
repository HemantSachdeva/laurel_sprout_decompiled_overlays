.class public final synthetic Lcom/android/car/ui/core/-$$Lambda$CheckCarUiComponents$u3xGutb3VgNGu17dA7lErOZHnt8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/car/ui/core/CheckCarUiComponents$Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/car/ui/core/CheckCarUiComponents$CarUiComponents;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/ui/core/CheckCarUiComponents$CarUiComponents;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/ui/core/-$$Lambda$CheckCarUiComponents$u3xGutb3VgNGu17dA7lErOZHnt8;->f$0:Lcom/android/car/ui/core/CheckCarUiComponents$CarUiComponents;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/car/ui/core/-$$Lambda$CheckCarUiComponents$u3xGutb3VgNGu17dA7lErOZHnt8;->f$0:Lcom/android/car/ui/core/CheckCarUiComponents$CarUiComponents;

    check-cast p1, Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/car/ui/core/CheckCarUiComponents;->lambda$checkForCarUiComponents$0(Lcom/android/car/ui/core/CheckCarUiComponents$CarUiComponents;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
