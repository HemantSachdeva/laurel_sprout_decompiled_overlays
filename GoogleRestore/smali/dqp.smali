.class public final Ldqp;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static volatile a:Ldxx;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 2
    return-void

    .line 0
    :cond_0
    const/4 p0, 0x0

    .line 2
    throw p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    return-void

    .line 0
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, " must be set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 3
    return-void

    .line 0
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
