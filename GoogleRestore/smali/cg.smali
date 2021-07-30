.class final Lcg;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field a:I

.field b:Lba;

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Li;

.field h:Li;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILba;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcg;->a:I

    iput-object p2, p0, Lcg;->b:Lba;

    .line 1
    sget-object p1, Li;->e:Li;

    iput-object p1, p0, Lcg;->g:Li;

    sget-object p1, Li;->e:Li;

    iput-object p1, p0, Lcg;->h:Li;

    return-void
.end method
