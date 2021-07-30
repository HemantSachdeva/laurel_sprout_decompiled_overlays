.class Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$DebugSwipeRecord;
.super Ljava/lang/Object;
.source "BrightLineFalsingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DebugSwipeRecord"
.end annotation


# instance fields
.field private final mInteractionType:I

.field private final mIsFalse:Z

.field private final mRecentMotionEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$XYDt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$XYDt;",
            ">;)V"
        }
    .end annotation

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    iput-boolean p1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$DebugSwipeRecord;->mIsFalse:Z

    .line 484
    iput p2, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$DebugSwipeRecord;->mInteractionType:I

    .line 485
    iput-object p3, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$DebugSwipeRecord;->mRecentMotionEvents:Ljava/util/List;

    return-void
.end method


# virtual methods
.method getString()Ljava/lang/String;
    .locals 3

    .line 489
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 490
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    .line 491
    iget-boolean v2, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$DebugSwipeRecord;->mIsFalse:Z

    if-eqz v2, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$DebugSwipeRecord;->mInteractionType:I

    .line 492
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 493
    iget-object p0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$DebugSwipeRecord;->mRecentMotionEvents:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$XYDt;

    .line 494
    invoke-virtual {v1}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$XYDt;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1

    .line 496
    :cond_1
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
