.class Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$XYDt;
.super Ljava/lang/Object;
.source "BrightLineFalsingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XYDt"
.end annotation


# instance fields
.field private final mDT:I

.field private final mX:I

.field private final mY:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    iput p1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$XYDt;->mX:I

    .line 507
    iput p2, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$XYDt;->mY:I

    .line 508
    iput p3, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$XYDt;->mDT:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$XYDt;->mX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$XYDt;->mY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager$XYDt;->mDT:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
