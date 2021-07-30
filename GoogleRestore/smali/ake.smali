.class public final Lake;
.super Lph;
.source "PG"


# instance fields
.field final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lake;->a:I

    .line 1
    invoke-direct {p0}, Lph;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lqq;Lqx;)I
    .locals 0

    iget p1, p0, Lake;->a:I

    rsub-int/lit8 p1, p1, -0x1

    return p1
.end method
