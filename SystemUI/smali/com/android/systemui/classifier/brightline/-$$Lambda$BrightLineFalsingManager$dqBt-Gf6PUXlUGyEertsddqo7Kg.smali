.class public final synthetic Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$dqBt-Gf6PUXlUGyEertsddqo7Kg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/view/MotionEvent;


# direct methods
.method public synthetic constructor <init>(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$dqBt-Gf6PUXlUGyEertsddqo7Kg;->f$0:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$dqBt-Gf6PUXlUGyEertsddqo7Kg;->f$0:Landroid/view/MotionEvent;

    check-cast p1, Lcom/android/systemui/classifier/brightline/FalsingClassifier;

    invoke-static {p0, p1}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->lambda$onTouchEvent$2(Landroid/view/MotionEvent;Lcom/android/systemui/classifier/brightline/FalsingClassifier;)V

    return-void
.end method
