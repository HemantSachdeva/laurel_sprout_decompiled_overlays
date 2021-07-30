.class final Lbfo;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public final b:Lbds;


# direct methods
.method public constructor <init>(Lbds;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-static {p1}, Lbir;->a(Ljava/lang/Object;)V

    iput-object p1, p0, Lbfo;->b:Lbds;

    iput p2, p0, Lbfo;->a:I

    return-void
.end method
