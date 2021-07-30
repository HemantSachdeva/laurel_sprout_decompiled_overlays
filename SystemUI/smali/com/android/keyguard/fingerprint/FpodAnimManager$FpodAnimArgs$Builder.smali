.class Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;
.super Ljava/lang/Object;
.source "FpodAnimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Builder"
.end annotation


# instance fields
.field private backgroundFrame:I

.field private backgroundRes:I

.field private customerDrawBitmap:Lcom/android/keyguard/fingerprint/FpodFrameAnimation$CustomerDrawBitmap;

.field private frameInterval:I

.field private repeat:Z

.field private res:[I

.field private startPosition:I


# direct methods
.method private constructor <init>([I)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;->repeat:Z

    const/16 v1, 0x1e

    .line 68
    iput v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;->frameInterval:I

    .line 69
    iput v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;->backgroundRes:I

    .line 70
    iput v0, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;->backgroundFrame:I

    .line 71
    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;->res:[I

    return-void
.end method

.method synthetic constructor <init>([ILcom/android/keyguard/fingerprint/FpodAnimManager$1;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;-><init>([I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;Lcom/android/keyguard/fingerprint/FpodFrameAnimation$CustomerDrawBitmap;)Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;->setCustomerDrawBitmap(Lcom/android/keyguard/fingerprint/FpodFrameAnimation$CustomerDrawBitmap;)Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;)Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;->build()Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;Z)Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;->setRepeat(Z)Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;I)Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;->setBackgroundRes(I)Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;I)Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;->setBackgroundFrame(I)Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;

    return-object p0
.end method

.method private build()Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;
    .locals 10

    .line 95
    new-instance v9, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;

    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;->res:[I

    iget v2, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;->startPosition:I

    iget-boolean v3, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;->repeat:Z

    iget v4, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;->frameInterval:I

    iget v5, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;->backgroundRes:I

    iget v6, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;->backgroundFrame:I

    iget-object v7, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;->customerDrawBitmap:Lcom/android/keyguard/fingerprint/FpodFrameAnimation$CustomerDrawBitmap;

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;-><init>([IIZIIILcom/android/keyguard/fingerprint/FpodFrameAnimation$CustomerDrawBitmap;Lcom/android/keyguard/fingerprint/FpodAnimManager$1;)V

    return-object v9
.end method

.method private setBackgroundFrame(I)Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;
    .locals 0

    .line 85
    iput p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;->backgroundFrame:I

    return-object p0
.end method

.method private setBackgroundRes(I)Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;
    .locals 0

    .line 80
    iput p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;->backgroundRes:I

    return-object p0
.end method

.method private setCustomerDrawBitmap(Lcom/android/keyguard/fingerprint/FpodFrameAnimation$CustomerDrawBitmap;)Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;->customerDrawBitmap:Lcom/android/keyguard/fingerprint/FpodFrameAnimation$CustomerDrawBitmap;

    return-object p0
.end method

.method private setRepeat(Z)Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;->repeat:Z

    return-object p0
.end method
