.class public final Lcnq;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f1201c0

    iput v0, p0, Lcnq;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcnq;->b:Z

    return-void
.end method

.method public constructor <init>(Lcnr;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f1201c0

    iput v0, p0, Lcnq;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcnq;->b:Z

    .line 1
    iget v0, p1, Lcnr;->a:I

    iput v0, p0, Lcnq;->a:I

    .line 2
    iget-object v0, p1, Lcnr;->b:Ljava/lang/String;

    .line 3
    iget-boolean p1, p1, Lcnr;->c:Z

    iput-boolean p1, p0, Lcnq;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Lcnr;
    .locals 3

    new-instance v0, Lcnr;

    iget v1, p0, Lcnq;->a:I

    iget-boolean v2, p0, Lcnq;->b:Z

    .line 4
    invoke-direct {v0, v1, v2}, Lcnr;-><init>(IZ)V

    return-object v0
.end method
