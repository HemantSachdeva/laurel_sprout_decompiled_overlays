.class public abstract Leaa;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Legs;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Leaa;->a()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 2
    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 2
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public close()V
    .locals 0

    return-void
.end method
