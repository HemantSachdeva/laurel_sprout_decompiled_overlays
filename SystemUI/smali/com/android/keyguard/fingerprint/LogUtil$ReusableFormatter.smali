.class Lcom/android/keyguard/fingerprint/LogUtil$ReusableFormatter;
.super Ljava/lang/Object;
.source "LogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/fingerprint/LogUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReusableFormatter"
.end annotation


# instance fields
.field private builder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/fingerprint/LogUtil$ReusableFormatter;->builder:Ljava/lang/StringBuilder;

    .line 409
    new-instance v0, Ljava/util/Formatter;

    iget-object p0, p0, Lcom/android/keyguard/fingerprint/LogUtil$ReusableFormatter;->builder:Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    return-void
.end method
