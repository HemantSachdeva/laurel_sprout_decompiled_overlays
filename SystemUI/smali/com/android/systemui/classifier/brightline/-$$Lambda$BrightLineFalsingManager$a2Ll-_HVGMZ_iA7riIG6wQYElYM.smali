.class public final synthetic Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$a2Ll-_HVGMZ_iA7riIG6wQYElYM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$a2Ll-_HVGMZ_iA7riIG6wQYElYM;->f$0:Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$a2Ll-_HVGMZ_iA7riIG6wQYElYM;->f$0:Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;

    check-cast p1, Lcom/android/systemui/classifier/brightline/FalsingClassifier;

    invoke-virtual {p0, p1}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->lambda$isFalseTouch$0$BrightLineFalsingManager(Lcom/android/systemui/classifier/brightline/FalsingClassifier;)Z

    move-result p0

    return p0
.end method
