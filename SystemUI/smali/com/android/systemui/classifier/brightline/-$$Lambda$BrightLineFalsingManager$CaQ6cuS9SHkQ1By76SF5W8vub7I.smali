.class public final synthetic Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$CaQ6cuS9SHkQ1By76SF5W8vub7I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$CaQ6cuS9SHkQ1By76SF5W8vub7I;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$CaQ6cuS9SHkQ1By76SF5W8vub7I;

    invoke-direct {v0}, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$CaQ6cuS9SHkQ1By76SF5W8vub7I;-><init>()V

    sput-object v0, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$CaQ6cuS9SHkQ1By76SF5W8vub7I;->INSTANCE:Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$CaQ6cuS9SHkQ1By76SF5W8vub7I;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/MotionEvent;

    invoke-static {p1}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->lambda$isFalseTouch$1(Landroid/view/MotionEvent;)Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$XYDt;

    move-result-object p0

    return-object p0
.end method
