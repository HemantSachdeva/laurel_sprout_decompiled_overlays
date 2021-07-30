.class public final Lakh;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ltn;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ltn;

    .line 1
    sget-object v1, Land;->l:Lccv;

    .line 2
    invoke-virtual {v1}, Lccv;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Ltn;-><init>(I)V

    iput-object v0, p0, Lakh;->a:Ltn;

    return-void
.end method
