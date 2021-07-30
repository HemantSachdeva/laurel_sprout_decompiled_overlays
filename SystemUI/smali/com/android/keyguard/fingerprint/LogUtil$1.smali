.class Lcom/android/keyguard/fingerprint/LogUtil$1;
.super Ljava/lang/ThreadLocal;
.source "LogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/fingerprint/LogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lcom/android/keyguard/fingerprint/LogUtil$ReusableFormatter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 420
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lcom/android/keyguard/fingerprint/LogUtil$ReusableFormatter;
    .locals 0

    .line 422
    new-instance p0, Lcom/android/keyguard/fingerprint/LogUtil$ReusableFormatter;

    invoke-direct {p0}, Lcom/android/keyguard/fingerprint/LogUtil$ReusableFormatter;-><init>()V

    return-object p0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 0

    .line 420
    invoke-virtual {p0}, Lcom/android/keyguard/fingerprint/LogUtil$1;->initialValue()Lcom/android/keyguard/fingerprint/LogUtil$ReusableFormatter;

    move-result-object p0

    return-object p0
.end method
