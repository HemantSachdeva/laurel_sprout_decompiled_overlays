.class public final synthetic Lcom/android/car/ui/core/-$$Lambda$CheckCarUiComponents$LQ0QJ1uqNsfWejQq2fxWuLySBiU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/car/ui/core/CheckCarUiComponents$Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/car/ui/core/-$$Lambda$CheckCarUiComponents$LQ0QJ1uqNsfWejQq2fxWuLySBiU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/car/ui/core/-$$Lambda$CheckCarUiComponents$LQ0QJ1uqNsfWejQq2fxWuLySBiU;

    invoke-direct {v0}, Lcom/android/car/ui/core/-$$Lambda$CheckCarUiComponents$LQ0QJ1uqNsfWejQq2fxWuLySBiU;-><init>()V

    sput-object v0, Lcom/android/car/ui/core/-$$Lambda$CheckCarUiComponents$LQ0QJ1uqNsfWejQq2fxWuLySBiU;->INSTANCE:Lcom/android/car/ui/core/-$$Lambda$CheckCarUiComponents$LQ0QJ1uqNsfWejQq2fxWuLySBiU;

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

    invoke-static {p1}, Lcom/android/car/ui/core/CheckCarUiComponents;->lambda$LQ0QJ1uqNsfWejQq2fxWuLySBiU(Landroid/view/View;)Z

    move-result p0

    return p0
.end method
