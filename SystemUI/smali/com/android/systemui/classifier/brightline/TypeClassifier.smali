.class public Lcom/android/systemui/classifier/brightline/TypeClassifier;
.super Lcom/android/systemui/classifier/brightline/FalsingClassifier;
.source "TypeClassifier.java"


# direct methods
.method constructor <init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;-><init>(Lcom/android/systemui/classifier/brightline/FalsingDataProvider;)V

    return-void
.end method


# virtual methods
.method getReason()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->isVertical()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->isUp()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->isRight()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-string p0, "{vertical=%s, up=%s, right=%s}"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isFalseTouch()Z
    .locals 6

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->isVertical()Z

    move-result v0

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->isUp()Z

    move-result v1

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->isRight()Z

    move-result v2

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/classifier/brightline/FalsingClassifier;->getInteractionType()I

    move-result p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p0, :cond_a

    if-eq p0, v4, :cond_9

    const/4 v5, 0x2

    if-eq p0, v5, :cond_a

    const/4 v5, 0x4

    if-eq p0, v5, :cond_6

    const/4 v5, 0x5

    if-eq p0, v5, :cond_3

    const/4 v5, 0x6

    if-eq p0, v5, :cond_0

    const/16 v2, 0x8

    if-eq p0, v2, :cond_6

    const/16 v2, 0x9

    if-eq p0, v2, :cond_a

    return v4

    :cond_0
    if-nez v2, :cond_1

    if-nez v1, :cond_2

    :cond_1
    move v3, v4

    :cond_2
    return v3

    :cond_3
    if-eqz v2, :cond_4

    if-nez v1, :cond_5

    :cond_4
    move v3, v4

    :cond_5
    return v3

    :cond_6
    if-eqz v0, :cond_7

    if-nez v1, :cond_8

    :cond_7
    move v3, v4

    :cond_8
    return v3

    :cond_9
    return v0

    :cond_a
    if-eqz v0, :cond_b

    if-eqz v1, :cond_c

    :cond_b
    move v3, v4

    :cond_c
    return v3
.end method
