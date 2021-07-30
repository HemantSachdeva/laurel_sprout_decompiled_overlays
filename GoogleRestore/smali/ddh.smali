.class public final Lddh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lddi;


# instance fields
.field private final a:Lddj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {p1}, Lddj;->a(Landroid/content/Context;)Lddj;

    move-result-object p1

    iput-object p1, p0, Lddh;->a:Lddj;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 3

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lddh;->a:Lddj;

    .line 3
    invoke-virtual {v2, p1, v0, v1}, Lddj;->a(Ljava/lang/String;J)Z

    move-result p1

    iget-object v2, p0, Lddh;->a:Lddj;

    .line 4
    invoke-virtual {v2, v0, v1}, Lddj;->a(J)Z

    move-result v0

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    return p1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    if-eqz p1, :cond_3

    const/4 p1, 0x2

    return p1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method
