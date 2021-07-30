.class final Lbw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbv;


# instance fields
.field final a:I

.field final synthetic b:Lbx;


# direct methods
.method public constructor <init>(Lbx;I)V
    .locals 0

    iput-object p1, p0, Lbw;->b:Lbx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lbw;->a:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6

    iget-object v0, p0, Lbw;->b:Lbx;

    iget v4, p0, Lbw;->a:I

    .line 1
    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lbx;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method
