.class final Ldhx;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ldij;

.field private final b:[B


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    new-array p1, p1, [B

    iput-object p1, p0, Ldhx;->b:[B

    .line 2
    invoke-static {p1}, Ldij;->a([B)Ldij;

    move-result-object p1

    iput-object p1, p0, Ldhx;->a:Ldij;

    return-void
.end method


# virtual methods
.method public final a()Ldib;
    .locals 2

    iget-object v0, p0, Ldhx;->a:Ldij;

    .line 3
    invoke-virtual {v0}, Ldij;->c()V

    .line 4
    new-instance v0, Ldhz;

    iget-object v1, p0, Ldhx;->b:[B

    invoke-direct {v0, v1}, Ldhz;-><init>([B)V

    return-object v0
.end method
