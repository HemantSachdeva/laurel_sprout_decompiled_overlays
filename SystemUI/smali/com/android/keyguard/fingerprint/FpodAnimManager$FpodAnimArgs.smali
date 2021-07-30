.class public Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;
.super Ljava/lang/Object;
.source "FpodAnimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/fingerprint/FpodAnimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FpodAnimArgs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs$Builder;
    }
.end annotation


# instance fields
.field final backgroundFrame:I

.field final backgroundRes:I

.field final customerDrawBitmap:Lcom/android/keyguard/fingerprint/FpodFrameAnimation$CustomerDrawBitmap;

.field final frameInterval:I

.field final repeat:Z

.field final res:[I

.field final startPosition:I


# direct methods
.method private constructor <init>([IIZIIILcom/android/keyguard/fingerprint/FpodFrameAnimation$CustomerDrawBitmap;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;->res:[I

    .line 101
    iput p2, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;->startPosition:I

    .line 102
    iput-boolean p3, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;->repeat:Z

    .line 103
    iput p4, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;->frameInterval:I

    .line 104
    iput p5, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;->backgroundRes:I

    .line 105
    iput p6, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;->backgroundFrame:I

    .line 106
    iput-object p7, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;->customerDrawBitmap:Lcom/android/keyguard/fingerprint/FpodFrameAnimation$CustomerDrawBitmap;

    return-void
.end method

.method synthetic constructor <init>([IIZIIILcom/android/keyguard/fingerprint/FpodFrameAnimation$CustomerDrawBitmap;Lcom/android/keyguard/fingerprint/FpodAnimManager$1;)V
    .locals 0

    .line 48
    invoke-direct/range {p0 .. p7}, Lcom/android/keyguard/fingerprint/FpodAnimManager$FpodAnimArgs;-><init>([IIZIIILcom/android/keyguard/fingerprint/FpodFrameAnimation$CustomerDrawBitmap;)V

    return-void
.end method
