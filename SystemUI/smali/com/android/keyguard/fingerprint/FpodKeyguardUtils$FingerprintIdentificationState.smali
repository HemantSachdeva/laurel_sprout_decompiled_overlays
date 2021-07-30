.class public final enum Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;
.super Ljava/lang/Enum;
.source "FpodKeyguardUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/fingerprint/FpodKeyguardUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FingerprintIdentificationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;

.field public static final enum ERROR:Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;

.field public static final enum FAILED:Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;

.field public static final enum RESET:Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;

.field public static final enum SUCCEEDED:Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 70
    new-instance v0, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;

    const-string v1, "FAILED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;->FAILED:Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;

    .line 71
    new-instance v0, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;

    const-string v1, "SUCCEEDED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;->SUCCEEDED:Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;

    .line 72
    new-instance v0, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;

    const-string v1, "ERROR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;->ERROR:Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;

    .line 73
    new-instance v0, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;

    const-string v1, "RESET"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;->RESET:Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;

    .line 69
    sget-object v6, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;->FAILED:Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;

    aput-object v6, v1, v2

    sget-object v2, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;->SUCCEEDED:Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;->ERROR:Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;->$VALUES:[Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;
    .locals 1

    .line 69
    const-class v0, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;

    return-object p0
.end method

.method public static values()[Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;
    .locals 1

    .line 69
    sget-object v0, Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;->$VALUES:[Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;

    invoke-virtual {v0}, [Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/fingerprint/FpodKeyguardUtils$FingerprintIdentificationState;

    return-object v0
.end method
