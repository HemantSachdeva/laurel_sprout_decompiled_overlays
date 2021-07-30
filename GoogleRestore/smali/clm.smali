.class final Lclm;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final a:I

.field final b:Lcky;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lclm;-><init>(ILcky;)V

    return-void
.end method

.method public constructor <init>(ILcky;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lclm;->a:I

    iput-object p2, p0, Lclm;->b:Lcky;

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 2
    const-string p1, "CompatService cannot be null when state is connected"

    invoke-static {p2, p1}, Lcln;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
