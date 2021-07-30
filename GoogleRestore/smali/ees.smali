.class public final Lees;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Leer;
    .locals 1

    .line 1
    sget-object v0, Legx;->a:Ljava/lang/RuntimeException;

    if-nez v0, :cond_0

    new-instance v0, Legx;

    .line 3
    invoke-direct {v0}, Legx;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Leag;

    .line 2
    invoke-direct {v0}, Leag;-><init>()V

    return-object v0
.end method
