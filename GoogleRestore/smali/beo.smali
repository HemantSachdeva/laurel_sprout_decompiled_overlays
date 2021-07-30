.class public final Lbeo;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lbqb;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lbqb;Lbej;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    const-string p4, "Cannot construct an Api with a null ClientBuilder"

    invoke-static {p2, p4}, Lbir;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    const-string p4, "Cannot construct an Api with a null ClientKey"

    invoke-static {p3, p4}, Lbir;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lbeo;->a:Ljava/lang/String;

    iput-object p2, p0, Lbeo;->b:Lbqb;

    return-void
.end method
