.class public final synthetic Lcom/android/car/ui/core/-$$Lambda$CheckCarUiComponents$NVhRkAsVZLAico2oOqC8mqdd93I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/car/ui/core/CheckCarUiComponents$Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/ui/core/-$$Lambda$CheckCarUiComponents$NVhRkAsVZLAico2oOqC8mqdd93I;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/ui/core/-$$Lambda$CheckCarUiComponents$NVhRkAsVZLAico2oOqC8mqdd93I;

    invoke-direct {v0}, Lcom/android/car/ui/core/-$$Lambda$CheckCarUiComponents$NVhRkAsVZLAico2oOqC8mqdd93I;-><init>()V

    sput-object v0, Lcom/android/car/ui/core/-$$Lambda$CheckCarUiComponents$NVhRkAsVZLAico2oOqC8mqdd93I;->INSTANCE:Lcom/android/car/ui/core/-$$Lambda$CheckCarUiComponents$NVhRkAsVZLAico2oOqC8mqdd93I;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/android/car/ui/core/CheckCarUiComponents;->lambda$NVhRkAsVZLAico2oOqC8mqdd93I(Landroid/view/View;)Z

    move-result p0

    return p0
.end method