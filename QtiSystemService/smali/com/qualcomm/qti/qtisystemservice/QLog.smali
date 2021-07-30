.class public Lcom/qualcomm/qti/qtisystemservice/QLog;
.super Ljava/lang/Object;
.source "QLog.java"


# direct methods
.method public static varargs d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    const-string p0, "QtiSystemService"

    .line 16
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
